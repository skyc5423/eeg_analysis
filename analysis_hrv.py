import heartpy as hp
import numpy as np
# import matplotlib.pyplot as plt

from mpl_toolkits.mplot3d import Axes3D, axes3d  # noqa: F401 unused import
import matplotlib.pyplot as plt
from ecgdetectors import Detectors
from scipy.signal import welch, butter, filtfilt, lfilter, iirnotch
from scipy.stats import norm
from scipy.interpolate import interp1d
from pyentrp import entropy as ent


def get_samp_entropy_nd_arr_tmp(data, fs, time_window=5, m_0=1, r=0.25):
    N = data.shape[1]
    window = int(fs * time_window)
    # window = data.shape[1]
    # time_window =
    samp_en = 0
    m_1 = m_0 + 1
    for epoch_idx in range(int(N / window)):
        cur_data = np.array(data[epoch_idx * window:epoch_idx * window + window])
        cur_std = np.std(cur_data)
        cur_r = cur_std * r
        mi = np.zeros([window + 1, window + 1, 2, m_0])
        for i in range(m_0):
            tmp = np.meshgrid(cur_data[i:], cur_data[i:])
            mi[:window - i, :window - i, 0, i] = tmp[0]
            mi[:window - i, :window - i, 1, i] = tmp[1]

        mi = np.array(mi[:-m_0, :-m_0])
        B = (np.sum(np.where(np.max(np.abs(mi[:, :, 0, :] - mi[:, :, 1, :]), axis=2) <= cur_r, 1, 0)) - (window + 1 - m_0)) / ((window - m_0 - 1) * float(window - m_0))

        mi = np.zeros([window + 1, window + 1, 2, m_1])
        for i in range(m_1):
            tmp = np.meshgrid(cur_data[i:], cur_data[i:])
            mi[:window - i, :window - i, 0, i] = tmp[0]
            mi[:window - i, :window - i, 1, i] = tmp[1]

        mi = np.array(mi[:-m_1, :-m_1])
        A = (np.sum(np.where(np.max(np.abs(mi[:, :, 0, :] - mi[:, :, 1, :]), axis=2) <= cur_r, 1, 0)) - (window + 1 - m_1)) / ((window - m_1 - 1) * float(window - m_1))

        samp_en += -np.log(A / B)
    return samp_en / float((N / window) * 1)


def analysis_ap_en(U, m, r):
    def _maxdist(x_i, x_j):
        return max([abs(ua - va) for ua, va in zip(x_i, x_j)])

    def _phi(m):
        x = [[U[j] for j in range(i, i + m - 1 + 1)] for i in range(N - m + 1)]
        C = [len([1 for x_j in x if _maxdist(x_i, x_j) <= r]) / (N - m + 1.0) for x_i in x]
        return (N - m + 1.0) ** (-1) * sum(np.log(C))

    N = len(U)

    return abs(_phi(m + 1) - _phi(m))


def analysis_freq_domain_feature(f, psd):
    idx_vlf = np.where(np.where(f <= 0.04, f, -1) >= 0.0033)[0]
    idx_lf = np.where(np.where(f <= 0.15, f, -1) >= 0.04)[0]
    idx_hf = np.where(np.where(f <= 0.4, f, -1) >= 0.15)[0]

    vlf = np.mean(psd[idx_vlf]) * (0.04 - 0.0033)
    lf = np.mean(psd[idx_lf]) * (0.15 - 0.04)
    hf = np.mean(psd[idx_hf]) * (0.4 - 0.15)

    total_power = vlf + lf + hf

    if total_power > 50000:
        print()

    norm_lf = lf / (lf + hf)
    norm_hf = hf / (lf + hf)

    ratio_f = lf / hf

    sort_idx = np.argsort(psd)
    for idx in range(1, sort_idx.shape[0]):
        crt_idx = sort_idx[-idx]
        if f[crt_idx] < 0.04 or f[crt_idx] > 0.26:
            continue
        else:
            if crt_idx == 0 or crt_idx == len(f) - 1:
                continue
            peak_pow = 0.015 * np.mean([f[crt_idx - 1], f[crt_idx], f[crt_idx + 1]]) * 1E6
            break

    heart_coh = (peak_pow / (total_power - peak_pow)) ** 2
    return total_power, vlf, lf, hf, ratio_f, norm_lf, norm_hf, heart_coh


def calc_rms(x, scale):
    # making an array with data divided in windows
    shape = (x.shape[0] // scale, scale)
    X = np.lib.stride_tricks.as_strided(x, shape=shape)
    # vector of x-axis points to regression
    scale_ax = np.arange(scale)
    rms = np.zeros(X.shape[0])
    for e, xcut in enumerate(X):
        coeff = np.polyfit(scale_ax, xcut, 1)
        xfit = np.polyval(coeff, scale_ax)
        # detrending and computing RMS of each window
        rms[e] = np.sqrt(np.mean((xcut - xfit) ** 2))
    return rms


def analysis_dfa(x, scale_lim=[2, 8], scale_dens=0.125):
    # cumulative sum of data with substracted offset
    y = np.cumsum(x - np.mean(x))
    scales = (2 ** np.arange(scale_lim[0], scale_lim[1], scale_dens)).astype(np.int)
    fluct = np.zeros(len(scales))
    # computing RMS for each window
    for e, sc in enumerate(scales):
        fluct[e] = np.sqrt(np.mean(calc_rms(y, sc) ** 2))
    # fitting a line to rms data
    coeff_low = np.polyfit(np.log2(scales[(scales < 16)]), np.log2(fluct[(scales < 16)]), 1)
    coeff_high = np.polyfit(np.log2(scales[(scales > 16)]), np.log2(fluct[(scales > 16)]), 1)

    return scales, fluct, coeff_low, coeff_high


def smoothed_pseudo_wigner_ville(signal, timestamps=None, freq_bins=None, twindow=None, fwindow=None):
    if timestamps is None:
        timestamps = np.arange(signal.shape[0])
    if freq_bins is None:
        freq_bins = signal.shape[0]

    if fwindow is None:
        winlength = np.floor(freq_bins / 4.0)
        winlength = winlength + 1 - np.remainder(winlength, 2)
        from scipy.signal import hamming
        fwindow = hamming(int(winlength))
    elif fwindow.shape[0] % 2 == 0:
        raise ValueError('The smoothing fwindow must have an odd length.')

    if twindow is None:
        timelength = np.floor(freq_bins / 10.0)
        timelength += 1 - np.remainder(timelength, 2)
        from scipy.signal import hamming
        twindow = hamming(int(timelength))
    elif twindow.shape[0] % 2 == 0:
        raise ValueError('The smoothing fwindow must have an odd length.')

    tfr = np.zeros((freq_bins, timestamps.shape[0]), dtype=complex)
    lg = int((twindow.shape[0] - 1) / 2)
    lh = int((fwindow.shape[0] - 1) / 2)
    for icol in range(timestamps.shape[0]):
        ti = int(timestamps[icol])
        taumax = min([ti + lg - 1, signal.shape[0] - ti + lg,
                      np.round(freq_bins / 2.0) - 1, lh])
        points = np.arange(-min([lg, signal.shape[0] - ti]),
                           min([lg, ti - 1]) + 1)
        g2 = twindow[lg + points]
        g2 = g2 / np.sum(g2)
        tfr[0, icol] = np.sum(g2 * signal[ti - points - 1] * np.conj(signal[ti - points - 1]))
        for tau in range(int(taumax)):
            points = np.arange(-min([lg, signal.shape[0] - ti - tau]),
                               min([lg, ti - 1 - tau]) + 1)
            g2 = twindow[lg + points]
            g2 = g2 / np.sum(g2)
            R = np.sum(g2 * signal[ti + tau - points - 1] * np.conj(signal[ti - tau - points - 1]))
            tfr[1 + tau, icol] = fwindow[lh + tau + 1] * R
            R = np.sum(g2 * signal[ti - tau - points - 1] * np.conj(signal[ti + tau - points - 1]))
            tfr[freq_bins - tau - 1, icol] = fwindow[lh - tau + 1] * R
        tau = np.round(freq_bins / 2.0)
        if (ti <= signal.shape[0] - tau) and (ti >= tau + 1) and (tau <= lh):
            points = np.arange(-min([lg, signal.shape[0] - ti - tau]),
                               min([lg, ti - 1 - tau]) + 1)
            g2 = twindow[lg + 1 + points]
            g2 = g2 / np.sum(g2)
            _x = np.sum(g2 * signal[ti + tau - points] * np.conj(signal[ti - tau - points]))
            _x *= fwindow[lh + tau + 1]
            _y = np.sum(g2 * signal[ti - tau - points] * np.conj(signal[ti + tau - points]))
            _y *= fwindow[lh - tau + 1]
            tfr[tau, icol] = (_x + _y) * 0.5
    tfr = np.fft.fft(tfr, axis=0)
    return np.real(tfr)


def plot_spwvd(irf, irl, total_time, sr, freq_bins):
    resolution = total_time * sr
    tmp = irf(np.linspace(int(irl[0]), int(irl[1]), resolution))
    hr = 60000 / tmp
    fig, ax = plt.subplots(1, 1)
    tfr = smoothed_pseudo_wigner_ville(hr - np.mean(hr), timestamps=np.linspace(0, sr * total_time, resolution), freq_bins=freq_bins)
    norm_tfr = (np.abs(tfr.real) - np.min(np.abs(tfr.real))) / (np.max(np.abs(tfr.real)) - np.min(np.abs(tfr.real)))
    ax.plot(np.linspace(0, total_time, resolution), np.ones([resolution]) * 0.033, color='black', ls='--')
    ax.plot(np.linspace(0, total_time, resolution), np.ones([resolution]) * 0.15, color='black', ls='--')
    ax.plot(np.linspace(0, total_time, resolution), np.ones([resolution]) * 0.4, color='black', ls='--')
    ax.contourf(np.linspace(0, total_time, resolution), np.linspace(0, 1, int(freq_bins / sr / 2)), norm_tfr[:int(freq_bins / sr / 2)], cmap='jet')
    fig.savefig('./spwvd_%d.png' % freq_bins)
    plt.close(fig)

    fig = plt.figure(figsize=(8, 4))
    ax = fig.gca(projection='3d')
    tt, ff = np.meshgrid(np.linspace(0, total_time, resolution), np.linspace(0, 1, int(freq_bins / sr / 2)))
    time_count = resolution
    freq_count = freq_bins
    surf = ax.plot_surface(ff.T, tt.T, norm_tfr[:int(freq_bins / sr / 2)].T, cmap='hot', linewidth=0, antialiased=False, alpha=1.0, rcount=time_count, ccount=freq_count)
    fig.colorbar(surf, aspect=8)
    ax.view_init(75, 330)
    ax.set_xticks([0, 0.2, 0.4, 0.6, 0.8])
    # ax.set_yticks([0, 0.5, 1])
    ax.set_zticks([0, 0.5, 1])
    ax.set_xlim(0, 1)
    ax.set_ylim(0, total_time)
    ax.set_zlim(0, 1)
    ax.invert_xaxis()
    fig.savefig('./spwvd_%d_3D_.png' % freq_bins)
    plt.close(fig)


def analysis_poincare(rr_list, num_point=None, lagged=1):
    rr_array = np.concatenate([np.expand_dims(rr_list[:-lagged], 1), np.expand_dims(rr_list[lagged:], 1)], axis=1)
    theta = np.pi / 4
    X = np.dot(np.array([[np.cos(theta), -np.sin(theta)], [np.sin(theta), np.cos(theta)]]), rr_array.T).T
    sd1 = np.std(X[:, 0])
    sd2 = np.std(X[:, 1])

    var1 = np.square(sd1)
    var2 = np.square(sd2)

    auto_cor_0 = (var1 + var2) / 2
    auto_cor_1 = (var2 - var1) / 2

    return sd1, sd2, auto_cor_1 / auto_cor_0, rr_array, lagged


def analysis_breathing(f, psd):
    return f[np.argmax(np.where(f > 0.04, psd, -1))]


def analysis_spwvd(working_data, total_time, sr_hrv=4, freq_bins=1600):
    irf = working_data['interp_rr_function']
    irl = working_data['interp_rr_linspace']
    plot_spwvd(irf, irl, total_time, sr_hrv, freq_bins)


def get_rr_times(working_data):
    irf = working_data['interp_rr_function']
    irl = working_data['interp_rr_linspace']
    t = np.linspace(int(irl[0]), int(irl[1]), int(irl[1] - irl[0] + 1))
    rr = irf(t)
    return t / 1000, rr / 1000


def get_psd_rr_times(rr, fs):
    f, psd = welch(rr, fs, nperseg=fs * 300)
    _, psd_s = welch(rr / 1000, fs, nperseg=fs * 300)
    idx = np.where(f < 0.44)[0]
    return f[idx], psd[idx], psd_s[idx]


def interpolate_rr(peak_list, fs, newfs):
    x = np.array(peak_list)[1:]
    rr_list = (np.array(peak_list)[1:] - np.array(peak_list)[:-1]) / fs * 1000

    cond1 = rr_list > 2500
    cond2 = rr_list < 250
    cond3 = rr_list[1:] - rr_list[:-1] > 450
    cond3 = np.concatenate([np.array([False]), cond3])

    x = np.delete(x, np.where(cond1 | cond2 | cond3)[0], axis=0)
    peak_list = np.delete(peak_list, np.where(cond1 | cond2 | cond3)[0], axis=0)
    rr_list = np.delete(rr_list, np.where(cond1 | cond2 | cond3)[0], axis=0)

    mask_peak_list = np.zeros_like(rr_list)
    for i in range(2):
        cond_outlier = (norm(np.mean(rr_list[np.where(mask_peak_list != True)[0]]), np.std(rr_list[np.where(mask_peak_list != True)[0]])).cdf(np.array(rr_list)) < 0.005) | (
                norm(np.mean(rr_list[np.where(mask_peak_list != True)[0]]), np.std(rr_list[np.where(mask_peak_list != True)[0]])).cdf(np.array(rr_list)) > 0.995)
        if i == 1:
            x = np.delete(x, np.where(cond_outlier)[0], axis=0)
            # peak_list = np.delete(peak_list, np.where(cond_outlier)[0], axis=0)
            rr_list = np.delete(rr_list, np.where(cond_outlier)[0], axis=0)
        mask_peak_list = cond_outlier

    f = interp1d(x, rr_list, kind='cubic')
    xnew = np.linspace(np.min(x), np.max(x), int((np.max(x) - np.min(x)) / fs * newfs))
    ynew = f(xnew)
    # fig, ax = plt.subplots(1, 1)
    # ax.plot(xnew, ynew)
    # ax.scatter(np.array(peak_list)[1:], np.array(peak_list)[1:] - np.array(peak_list)[:-1], color='red')
    # fig.savefig("./tmp_rr_%d.png" % newfs)
    # plt.close(fig)
    return rr_list, xnew / fs, ynew, newfs, peak_list, mask_peak_list


def summary_percentile(stress_val, balance_val, energy_val, recovery_val, age):
    def get_percentile(feature_name, feature_value):
        if feature_name == 'stress':
            mean = -0.22034897 * age + 59.05908663
            sigma = 21.5825
            percentage = 100 - (np.max([np.min([(feature_value - mean) / sigma, 3]), -3]) - 3) * -100 / 6
        elif feature_name == 'balance':
            mean = 0.00024989 * age - 0.21228418
            sigma = 0.7639
            percentage = (np.abs(np.max([np.min([(feature_value - mean) / sigma, 3]), -3])) - 3) * -100 / 3
        elif feature_name == 'energy':
            mean = -0.01058391 * age + 7.89011095
            sigma = 0.9529
            percentage = (np.max([np.min([(feature_value - mean) / sigma, 3]), -3]) + 3) * 100 / 6
        elif feature_name == 'recovery':
            mean = -0.00339738 * age + 3.93592346
            sigma = 0.5777
            percentage = 100 - (np.max([np.min([(feature_value - mean) / sigma, 3]), -3]) - 3) * -100 / 6
        else:
            return
        return percentage

    stress_score = get_percentile('stress', stress_val)
    balance_score = get_percentile('balance', balance_val)
    energy_score = get_percentile('energy', energy_val)
    recovery_score = get_percentile('recovery', recovery_val)
    heart_score = np.average([stress_score, balance_score, energy_score, recovery_score])

    weight_age = np.max([age - 10, 0]) * 0.5
    age_score = int(age + weight_age * (50 - np.mean([stress_score, balance_score, energy_score, heart_score, recovery_score])) / 100)

    return stress_score, balance_score, energy_score, heart_score, recovery_score, age_score


def analysis_hrv(analysis_data, sample_rate, total_time, birthday, dummy_data=False, save_path=None):
    def get_age(birthday):
        import datetime
        now = datetime.datetime.now()
        if not isinstance(birthday, int):
            year, _, _ = birthday.split('-')
        else:
            year = birthday / 10000
        return now.year - int(year) + 1

    if not dummy_data:
        try:
            # analysis_data = np.array(analysis_data)
            peak_list, filtered_data = get_peak_custom(analysis_data, sample_rate, save_path=save_path)
            #
            rr_list, rr_x, rr, new_fs, new_peak_list, mask_peak_list = interpolate_rr(peak_list, fs=sample_rate, newfs=5)
            #
            mean_rr, cov_rr, mean_hr, min_hr, max_hr, sdnn, rmssd, pnn50, stress_idx = analysis_time_domain_feature(rr_list)

            f, psd, psd_s = get_psd_rr_times(rr, new_fs)

            total_power, vlf, lf, hf, ratio_f, norm_lf, norm_hf, heart_coh = analysis_freq_domain_feature(f, psd)

            sd1, sd2, correlation_coefficient, rr_array, lagged = analysis_poincare(rr_list)

            breathing_rate = analysis_breathing(f, psd)
            ap_en = analysis_ap_en(rr_list, 2, 3)
            samp_en = ent.sample_entropy(rr_list, 1, np.std(rr_list))

            stress_score, balance_score, energy_score, heart_score, recovery_score, age_score = summary_percentile(sdnn,
                                                                                                                   np.log(ratio_f),
                                                                                                                   np.log(total_power),
                                                                                                                   np.log(rmssd),
                                                                                                                   get_age(birthday))
            # # analysis_spwvd(working_data, total_time)
            #
            scales, fluct, coeff_low, coeff_high = analysis_dfa(filtered_data)
        except:
            return None, None, None, None
        #
        feature = {
            'mean_rr': mean_rr,
            'mean_hr': mean_hr,
            'min_hr': min_hr,
            'max_hr': max_hr,
            'sdnn': sdnn,
            'rmssd': rmssd,
            'rrcov': cov_rr,
            'pnn50': pnn50,
            'stress_idx': stress_idx,
            'total_power': total_power,
            'vlf': vlf,
            'lf': lf,
            'hf': hf,
            'ratio_f': ratio_f,
            'norm_lf': norm_lf,
            'norm_hf': norm_hf,
            'sd1': sd1,
            'sd2': sd2,
            'ap_en': ap_en,
            'sa_en': samp_en,
            'heart_coh': heart_coh,
            'corr_coef': correlation_coefficient,
            'respiration': breathing_rate,
            'coeff_low': coeff_low,
            'coeff_high': coeff_high
        }

        plot_feature = {
            'stress_score': stress_score,
            'balance_score': balance_score,
            'energy_score': energy_score,
            'heart_score': heart_score,
            'recovery_score': recovery_score,
            'age_score': age_score,
            'peak_list': new_peak_list,
            'mask_peak_list': mask_peak_list,
            'rr_list': rr_list,
            'rr': rr,
            'f': f,
            'psd': psd_s,
            'rr_array': rr_array,
            'lagged': lagged,
            't': rr_x,
            'scales': scales,
            'fluct': fluct,
        }

        print('return')
        print(filtered_data.shape)
        return filtered_data, sample_rate, feature, plot_feature
    else:
        feature = {
            'mean_rr': 650.12412,
            'mean_hr': 90.12312,
            'min_hr': 78.123124,
            'max_hr': 101.23123,
            'sdnn': 37.314141,
            'rmssd': 31.3747,
            'rrcov': 5.7472,
            'pnn50': 9.363728,
            'stress_idx': 5.2,
            'total_power': 12127.1231,
            'vlf': 162.4423,
            'lf': 276.3391,
            'hf': 331.2242,
            'ratio_f': 0.7771,
            'norm_lf': 42.3313,
            'norm_hf': 57.6687,
            'sd1': 21,
            'sd2': 77,
            'ap_en': -1,
            'sa_en': -1,
            'heart_coh': -1,
            'respiration': -1,
            # 'corr_coef': correlation_coefficient,
            'breath_rate': 12.331,
            'coeff_low': 0.5423,
            'coeff_high': 0.26173
        }
        return None, None, feature, None


def analysis_time_domain_feature(rr_list):
    # stress index calculation
    from scipy.stats import mode

    mean_rr = np.mean(rr_list[1:])
    std_rr = np.std(rr_list[1:])
    cov_rr = std_rr / mean_rr * 100
    hr = 60 * 1000 / rr_list
    # mean_hr = np.mean(hr)
    mean_hr = 60000 / mean_rr
    min_hr = np.min(hr[1:])
    max_hr = np.max(hr[1:])
    std_hr = np.std(hr[1:])

    sdnn = std_rr
    rmssd = np.sqrt(np.mean(np.square(rr_list[1:] - rr_list[:-1])))
    pnn50 = np.sum(np.where(np.abs(rr_list[1:] - rr_list[:-1]) > 50, 1, 0)) / (rr_list.shape[0] - 1)

    AMo = float((mode(rr_list)[1] / len(rr_list)))
    Mo = float(mode(rr_list)[0])
    MxDMn = max(rr_list) - min(rr_list)
    stress_idx = (AMo * 100) / (2 * Mo * MxDMn)

    return mean_rr, cov_rr, mean_hr, min_hr, max_hr, sdnn, rmssd, pnn50, stress_idx


def draw_pentagon_axis(ax):
    from matplotlib.patches import Polygon
    for i in range(5):
        coord = [[0, 0]]
        theta = np.pi * 2 / 5 * i + np.pi / 2
        x = np.cos(theta)
        y = np.sin(theta)
        coord.append([x, y])
        poly = Polygon(np.array(coord), edgecolor='gray', facecolor='gray', linewidth=1.)
        ax.add_patch(poly)


def draw_pentagon_graph(r_list, ax, edgecolor='gray', facecolor='white', alpha=1.):
    from matplotlib.patches import Polygon
    coord = []
    for i in range(5):
        theta = np.pi * 2 / 5 * i + np.pi / 2
        x = np.cos(theta) * r_list[i]
        y = np.sin(theta) * r_list[i]
        coord.append([x, y])
    poly = Polygon(np.array(coord), edgecolor=edgecolor, facecolor=facecolor, alpha=alpha)
    ax.add_patch(poly)


class SQIPBMAnalyzer(object):
    def __init__(self, fs: int, window_size: int, step_size: int):
        self.prev_data = None
        self.prev_mean_rr = None
        self.prev_bpm = None
        self.fs = fs
        self.step_size = step_size
        self.window_size = window_size
        self.detectors = Detectors(self.fs)

    def detect_peak(self, data: np.ndarray, filtering: bool = False):
        if filtering:
            b, a = butter(3, [1 / self.fs, 20 / self.fs], btype='bandpass')
            data = filtfilt(b, a, data)
        peak_array = np.array(self.detectors.engzee_detector(data))
        return peak_array

    def get_bpm(self, data):
        if data.shape[0] != self.window_size:
            print("Data length should be matched with window size")
            return
        peak_array = self.detect_peak(data, filtering=False)
        if peak_array.shape[0] < 2:
            print("# of detected peak is less than 2. Not available to compute bpm.")
            return
        return 60 / (np.mean(peak_array[1:] - peak_array[:-1]) / self.fs)

    def get_ma_bpm(self):
        return self.prev_bpm

    def get_sqi(self, data):
        crt_bpm = self.get_bpm(data)
        if crt_bpm is None:
            return 0
        if self.prev_bpm is None:
            print("First input data. true sqi will be computed from the second input data.")
            self.prev_bpm = crt_bpm
            return 1
        if np.abs(crt_bpm - self.prev_bpm) / self.prev_bpm < 0.5:
            self.prev_bpm = 0.5 * crt_bpm + 0.5 * self.prev_bpm
            sqi = 1
        else:
            sqi = 0

        return sqi

    def get_bpm_sqi(self, data):
        sqi = self.get_sqi(data)
        bpm = self.get_ma_bpm()
        return sqi, bpm


def analysis_ecg_v2(data, fs=250):
    rp = detect_peak(data, fs)

    window_time = 5
    step_time = 0.5
    plot_time = 30
    window_size = int(fs * window_time)
    step_size = int(fs * step_time)
    total_data_size = data.shape[0]
    threshold_sqi = 0.33
    moving_average_weight = 0.5
    detectors = Detectors(fs)

    short_rr_list = []
    for t in range(int((total_data_size - window_size) / step_size)):
        idx = np.arange(window_size) + step_size * t
        short_rp = detectors.engzee_detector(data[idx, 0])
        rr = 0
        if len(short_rp) > 0:
            for i in range(len(short_rp) - 1):
                rr += (short_rp[i + 1] - short_rp[i])
            rr /= len(short_rp)

        if t == 0:
            rr_non_nan = rr
        else:
            if np.abs(short_rr_list[-1][1] - rr) > fs * threshold_sqi:
                rr_non_nan = short_rr_list[-1][2]
            else:
                rr_non_nan = rr

        if t == 0:
            short_rr_list.append((idx[-1], rr, rr_non_nan))
        else:
            short_rr_list.append((idx[-1], rr, short_rr_list[-1][2] * moving_average_weight + moving_average_weight * rr_non_nan))
    short_rr_array = np.array(short_rr_list)
    for t in range(10):
        fig, ax = plt.subplots(3, 1, figsize=(12, 8))
        ax[0].plot(np.linspace(t * plot_time * fs, (t + 1) * plot_time * fs, fs * plot_time), data[t * plot_time * fs:(t + 1) * plot_time * fs, 0], linewidth=0.5,
                   color='black')
        rp_idx = np.where((np.array(rp) > t * plot_time * fs) & (np.array(rp) < (t + 1) * plot_time * fs))[0]
        ax[0].scatter(np.array(rp)[rp_idx], data[np.array(rp)[rp_idx], 0], color='red')
        ax[1].plot(short_rr_array[1:, 0], (short_rr_array[:-1, 1] - short_rr_array[1:, 1]) / fs)
        ax[1].plot(np.linspace(0, total_data_size, 100), np.ones(100) * threshold_sqi, 'r--', linewidth=0.4)
        ax[1].plot(np.linspace(0, total_data_size, 100), np.ones(100) * -threshold_sqi, 'r--', linewidth=0.4)
        ax[2].plot(short_rr_array[:, 0], 60 / (short_rr_array[:, 1] / fs), linewidth=0.5)
        ax[2].plot(short_rr_array[:, 0], 60 / (short_rr_array[:, 2] / fs), color='red', linewidth=0.5)
        ax[0].set_xlim(t * plot_time * fs, (t + 1) * plot_time * fs)
        ax[1].set_xlim(t * plot_time * fs, (t + 1) * plot_time * fs)
        ax[1].set_ylim(-1., 1.)
        ax[2].set_xlim(t * plot_time * fs, (t + 1) * plot_time * fs)
        ax[2].set_ylim(0, 180)
        fig.savefig('./window_5s_%d.png' % t)
        plt.close(fig)

    return rp


def get_peak_custom(data, sample_rate, save_path=None):
    print('get_peak_custom')
    print(data.shape)
    b, a = iirnotch(125, 30, 500)
    data = np.array(lfilter(b, a, data[:]))
    f1 = 5 / sample_rate
    f2 = 12 / sample_rate
    b, a = butter(1, [f1 * 2, f2 * 2], btype='bandpass')
    filtered_data = np.array(lfilter(b, a, data[:]))[2500:]
    diff_data = np.diff(filtered_data)
    sqr_data = np.square(diff_data)
    ma_data = np.zeros_like(diff_data)
    ma_data2 = np.zeros_like(diff_data)
    ma_window_size = 5
    for idx in range(ma_data.shape[0]):
        if idx < ma_window_size:
            ma_data[idx] = np.mean(sqr_data[:idx])
            ma_data2[idx] = np.mean(sqr_data[:idx])
        else:
            ma_data[idx] = np.mean(sqr_data[idx - ma_window_size:idx]) * 0.02 + ma_data[idx - 1] * 0.98
            if ma_data[idx - 1] > ma_data2[idx - 1]:
                ma_data2[idx] = np.mean(sqr_data[idx - ma_window_size:idx]) * 0.01 + ma_data2[idx - 1] * 0.99
            else:
                ma_data2[idx] = np.mean(sqr_data[idx - ma_window_size:idx]) * 0.005 + ma_data2[idx - 1] * 0.995
    idx = np.where((ma_data[1:] - ma_data2[1:]) * (ma_data[:-1] - ma_data2[:-1]) < 0)[0]

    range_list_even = []
    for i in range(int(len(idx) / 2)):
        range_list_even.append((idx[2 * i], idx[2 * i + 1]))

    peak_list_even = []
    rtn_peak_list_even = []
    for i in range(len(range_list_even)):
        peak_idx = np.argmax(filtered_data[range_list_even[i][0]:range_list_even[i][1]]) + range_list_even[i][0]
        if i != 0:
            if peak_idx - rtn_peak_list_even[-1] < sample_rate / 4:
                continue
        peak_y = np.max(filtered_data[range_list_even[i][0]:range_list_even[i][1]])
        peak_list_even.append((peak_idx, peak_y))
        rtn_peak_list_even.append(peak_idx)

    range_list_odd = []
    for i in range(int(len(idx) / 2)):
        if 2 * i + 2 >= len(idx):
            break
        range_list_odd.append((idx[2 * i + 1], idx[2 * i + 2]))

    peak_list_odd = []
    rtn_peak_list_odd = []
    for i in range(len(range_list_odd)):
        peak_idx = np.argmax(filtered_data[range_list_odd[i][0]:range_list_odd[i][1]]) + range_list_odd[i][0]
        if i != 0:
            if peak_idx - rtn_peak_list_odd[-1] < sample_rate / 4:
                continue
        peak_y = np.max(filtered_data[range_list_odd[i][0]:range_list_odd[i][1]])
        peak_list_odd.append((peak_idx, peak_y))
        rtn_peak_list_odd.append(peak_idx)

    if np.mean(np.array(peak_list_odd)[:, 1]) > np.mean(np.array(peak_list_even)[:, 1]):
        peak_list = peak_list_odd
        rtn_peak_list = rtn_peak_list_odd
    else:
        peak_list = peak_list_even
        rtn_peak_list = rtn_peak_list_even

    # step = 5000
    # for t in range(5):
    #     fig, ax = plt.subplots(6, 1, figsize=(18, 6))
    #     ax[0].plot(np.linspace(t * step, t * step + step, step), data[t * step:t * step + step], linewidth=0.4)
    #     ax[1].plot(np.linspace(t * step, t * step + step, step), filtered_data[t * step:t * step + step], linewidth=0.4)
    #     # ax[2].plot(data[:5000, 0], linewidth=0.3, color='blue')
    #     # ax[2].plot(filtered_data[:5000], linewidth=0.3, color='red')
    #     ax[2].plot(np.linspace(t * step, t * step + step, step), diff_data[t * step:t * step + step], linewidth=0.4)
    #     ax[3].plot(np.linspace(t * step, t * step + step, step), sqr_data[t * step:t * step + step], linewidth=0.4)
    #     ax[4].plot(np.linspace(t * step, t * step + step, step), ma_data[t * step:t * step + step], linewidth=0.4)
    #     ax[4].plot(np.linspace(t * step, t * step + step, step), ma_data2[t * step:t * step + step], linewidth=0.4, color='red')
    #     ax[5].plot(np.linspace(t * step, t * step + step, step), np.zeros([step]), linewidth=0.4, color='red')
    #     ax[5].plot(np.linspace(t * step, t * step + step, step), ma_data[t * step:t * step + step] - ma_data2[t * step:t * step + step], linewidth=0.4)
    #     ax[5].scatter(idx, np.zeros_like(idx), color='red', s=5, alpha=0.3)
    #     ax[0].scatter(idx, np.zeros_like(idx), color='blue', s=3, alpha=0.5)
    #     ax[0].scatter(np.array(peak_list)[:, 0], np.array(peak_list)[:, 1], color='red')
    #     for i in range(6):
    #         ax[i].set_xlim(step * t, step * t + step)
    #     fig.savefig('./filter_%d.png' % t)
    #     plt.close(fig)

    plot_time = 1000

    if save_path is not None:
        for t in range(20):
            fig, ax = plt.subplots(3, 1, figsize=(18, 8))
            ax[0].plot(filtered_data[plot_time * t:plot_time * (t + 1)], linewidth=0.5, color='black')
            ax[1].plot(diff_data[plot_time * t:plot_time * (t + 1)], linewidth=0.5, color='black')
            ax[2].plot(sqr_data[plot_time * t:plot_time * (t + 1)], linewidth=0.5, color='black')
            ax[2].plot(ma_data[plot_time * t:plot_time * (t + 1)], linewidth=0.5, color='blue')
            ax[2].plot(ma_data2[plot_time * t:plot_time * (t + 1)], linewidth=0.5, color='red')
            fig.savefig('./%s/tmp_%d.png' % (save_path, t))
            plt.close(fig)

    print('get_peak_custom')
    print(filtered_data.shape)
    return rtn_peak_list, filtered_data
