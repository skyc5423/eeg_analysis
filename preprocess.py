import mne
import numpy as np
import matplotlib
from file_io import make_mne_raw
from figure_manager import plot_ica_topomap
from mne.viz.topomap import _check_outlines
from scipy.stats import beta
from mne_data.interpolation import _GridData


def interpolate_topo_map(power, pos, outlines, aspect_ratio=None, n=128, kind='cubic'):
    xlim = np.inf, -np.inf,
    ylim = np.inf, -np.inf,
    mask_ = np.c_[outlines['mask_pos']]
    if aspect_ratio:
        mask_[:, 0] *= aspect_ratio[0]
        mask_[:, 1] *= aspect_ratio[1]

    xmin, xmax = (np.min(np.r_[xlim[0], mask_[:, 0]]),
                  np.max(np.r_[xlim[1], mask_[:, 0]]))
    ymin, ymax = (np.min(np.r_[ylim[0], mask_[:, 1]]),
                  np.max(np.r_[ylim[1], mask_[:, 1]]))

    xi = np.linspace(xmin, xmax, n)
    yi = np.linspace(ymin, ymax, n)
    interp = _GridData(np.array((pos[:, 0], pos[:, 1])).T).set_values(power, kind=kind)
    Zi = interp.set_locations(xi, yi)("interp2d")

    return Zi, xmin, xmax, ymin, ymax


def get_power_noise_freq(custom_raw, sample_rate=500):
    raw_data = custom_raw.get_data()
    len = raw_data.shape[1]
    num60Hz = 0
    num50Hz = 0
    for ch in range(19):
        ch_data = raw_data[ch]
        f_ch_data = np.fft.fft(ch_data)
        max60Hz = np.max(np.abs(f_ch_data[int(59 * len / sample_rate):int(61 * len / sample_rate)]))
        max50Hz = np.max(np.abs(f_ch_data[int(49 * len / sample_rate):int(51 * len / sample_rate)]))
        if max60Hz > max50Hz:
            num60Hz += 1
        else:
            num50Hz += 1

    return num60Hz > num50Hz


def filtering_custom_raw(custom_raw):
    is_60Hz = get_power_noise_freq(custom_raw, sample_rate=int(custom_raw.info['sfreq']))
    custom_raw.filter(l_freq=1.3, h_freq=60, fir_design='firwin', phase='zero')
    custom_raw.notch_filter(125, notch_widths=1, filter_length='auto', phase='zero')
    custom_raw.notch_filter(125, trans_bandwidth=5, notch_widths=5, filter_length='auto', phase='zero')
    if is_60Hz:
        custom_raw.notch_filter(60, trans_bandwidth=3, notch_widths=3, filter_length='auto', phase='zero')
    else:
        custom_raw.notch_filter(50, trans_bandwidth=3, notch_widths=3, filter_length='auto', phase='zero')
        custom_raw.notch_filter(60, trans_bandwidth=3, notch_widths=3, filter_length='auto', phase='zero')

    return custom_raw


def artifact_remove_asr(custom_raw, overlap_size=20, sample_rate=500, std_threshold=100):
    filtered_data = custom_raw.get_data()
    total_step = int((filtered_data.shape[1] - sample_rate + overlap_size) / overlap_size)
    removed_asr = np.zeros([overlap_size * total_step + sample_rate - overlap_size, filtered_data.shape[0]])

    ma_data = filtered_data

    for step in range(total_step):
        u, s, vh = np.linalg.svd(
            ma_data[:, step * overlap_size: (step + int(sample_rate / overlap_size)) * overlap_size].T,
            full_matrices=False)
        for ch in range(filtered_data.shape[0]):
            if np.std(u[:, ch]) * s[ch] > std_threshold:
                u[:, ch] *= 0.
        smat = np.diag(s)
        removed_asr[step * overlap_size: (step + int(sample_rate / overlap_size)) * overlap_size, :] += np.dot(u, np.dot(smat, vh))

    removed_ma = removed_asr.T * overlap_size / float(sample_rate)

    return mne.io.RawArray(removed_ma, custom_raw.info)


def crop_data(custom_raw):
    tmax = custom_raw.get_data().shape[1] // custom_raw.info['sfreq'] - 5
    tmin = 5
    custom_raw.crop(tmin=tmin, tmax=tmax)
    tmax = custom_raw.get_data().shape[1] // custom_raw.info['sfreq']
    return custom_raw, tmax, tmin


def predict_artifact(model, topomap, threshold=0.5):
    n = 500
    res_bin = np.zeros([n, 4])
    for i in range(n):
        res_bin[i] = model(np.expand_dims(topomap, 0), False)

    res = np.expand_dims(np.mean(res_bin, 0), 0)
    res_std = np.expand_dims(np.std(res_bin, 0), 0)
    res_var = res_std ** 2

    u = res[0, 0]
    var = res_var[0, 0]
    a = u * (u * (1 - u) / var - 1)
    b = (1 - u) * (u * (1 - u) / var - 1)

    beta_tmp = beta(a, b)
    p_val = beta_tmp.cdf(0.5)

    is_artifact = not p_val < threshold
    return is_artifact, np.argmax(res), res_bin, p_val


def artifact_remove_ica(custom_raw, crt_prefix, outlines, request_id, model, tmax):
    rec_time = []
    for sample_number in [0, 3 * int(custom_raw.info['sfreq'])]:
        rec_time.append([sample_number, 0, 1])

    t_base_max = int(0.05 * (custom_raw.get_data().shape[1] // int(custom_raw.info['sfreq']) - 10)) / 60
    baseline = (0, t_base_max)

    epochs = mne.Epochs(custom_raw, rec_time, dict(no_event=1), proj=True, decim=1, baseline=baseline, tmin=0,
                        tmax=tmax, preload=True, reject_by_annotation=False,
                        on_missing='warning')
    epochs = epochs[0:1]

    picks, pos, merge_grads, names, ch_type = mne.viz.topomap._prepare_topo_plot(epochs, 'eeg', None)
    matplotlib.use('Agg')

    n_components = 0
    for ch in range(19):
        if np.min(custom_raw.get_data()[ch]) < -1. or np.max(custom_raw.get_data()[ch]) > 1.:
            n_components += 1

    ica = mne.preprocessing.ICA(n_components=n_components, method="infomax", random_state=0, max_iter=50000,
                                fit_params=dict(extended=True))

    ica.fit(custom_raw, reject_by_annotation=False)
    pos, outlines = _check_outlines(pos, outlines, None)

    for i in range(n_components):
        is_artifact = True
        for sign_idx in range(2):
            if sign_idx == 0:
                sign = -1
            else:
                sign = 1

            # make ica component topomaps for find artifact
            topomap, _ = plot_ica_topomap(sign * ica.get_components()[:, i], pos, outlines, i, crt_prefix, request_id, sign)
            _is_artifact, res_max, res_bin, p_val = predict_artifact(model, topomap)
            if not _is_artifact:
                is_artifact = False

        if is_artifact:
            ica.exclude.append(i)

    tmp = np.array(custom_raw.get_data())
    tmp -= ica.pca_mean_.reshape([-1, 1])
    tmp = np.dot(ica.pca_components_, tmp)
    tmp = np.dot(ica.unmixing_matrix_, tmp)
    for ch in ica.exclude:
        tmp[ch, :] *= 0.
    tmp = np.matmul(ica.mixing_matrix_, tmp)
    tmp = np.dot(np.linalg.inv(ica.pca_components_), tmp)
    clean = tmp + ica.pca_mean_.reshape([-1, 1])
    custom_raw_clean = mne.io.RawArray(clean, custom_raw.info)
    return custom_raw_clean


def preprocess_raw_data(custom_raw, request_id, model, crt_prefix='crt'):
    custom_raw = filtering_custom_raw(custom_raw)
    custom_raw = artifact_remove_asr(custom_raw)

    # if data_edf is None:
    #     signals = []
    #     for preprocessed_data in custom_raw.get_data():
    #         for annot in eeg_info["annotations"]:
    #             if annot.name.lower() == "bad":
    #                 preprocessed_data[int(annot.startIndex):int(annot.endIndex)] = np.nan
    #         preprocessed_data = preprocessed_data[~np.isnan(preprocessed_data)]
    #         if int(custom_raw.info['sfreq']) > len(preprocessed_data):
    #             return False, "More than 5 seconds EEG are required!", None, None
    #         signals.append(preprocessed_data.tolist())
    #     signals = np.array(signals)
    # else:
    #     signals = custom_raw.get_data()

    custom_raw, tmax, tmin = crop_data(custom_raw)

    art_removed_custom_raw = artifact_remove_ica(custom_raw, crt_prefix, 'head', request_id, model, tmax)

    return art_removed_custom_raw


def make_epoch_custom_raw(ytdf_dir, data_edf=None, request_id=None, crt_prefix='crt', model=None):
    custom_raw, eeg_info, bad_channels = make_mne_raw(ytdf_dir, data_edf, specs=None)
    custom_raw = preprocess_raw_data(custom_raw, request_id, model, crt_prefix=crt_prefix)

    # write_edf(art_removed_custom_raw, "%s/%s" % (request_id, 'artifact_free_edf.edf'))

    return custom_raw
