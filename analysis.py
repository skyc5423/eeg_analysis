import psutil
from multiprocessing.pool import Pool

import numpy as np
import constants
import json
import math
import matplotlib.pyplot as plt
from scipy import fftpack
from scipy.signal import welch
from sklearn.linear_model import LinearRegression
from scipy.stats import gamma
from scipy.stats import norm
from scipy.stats import beta
import datetime
from file_io import write_excel
from figure_manager import *


def get_age(birthday: str):
    now = datetime.datetime.now()

    if isinstance(birthday, int):
        birth_year, birth_month, birth_day = birthday / 10000, birthday % 10000 / 100, birthday % 10000 % 100
    elif isinstance(birthday, str):
        birthday = int(birthday)
        birth_year, birth_month, birth_day = birthday / 10000, birthday % 10000 / 100, birthday % 10000 % 100
    else:
        raise RuntimeError('Not supported type for birthday:' + str(type(birthday)))

    age = now.year - birth_year + 1
    return int(age)


def down_sampling(data, fs, target_fs):
    ch_num = data.shape[0]
    scale = fs / target_fs
    if not scale.is_integer():
        scale = round(scale)
    else:
        scale = int(scale)

    len_used = int(data.shape[1] / scale) * scale
    data_tmp = data[:, :len_used]
    new_data = data_tmp.reshape([ch_num, -1, scale])

    return np.mean(new_data, axis=2)


def get_multi_scale_entropy(raw, max_scale=21):
    mse = []
    for i in [2, 3, 4, 5, 6, 16, 17, 18, 19, 20]:
        len_used = int(raw.get_data().shape[1] / i) * i
        cur_data_1 = np.array(raw.get_data()[:, :len_used])
        cur_data_2 = cur_data_1.reshape([raw.get_data().shape[0], -1, i])
        cur_data_3 = np.mean(cur_data_2, axis=2)
        mse.append(get_samp_entropy_nd_arr_tmp(cur_data_3, int(raw.info['sfreq']), time_window=3, r=0.25, m_0=2,
                                               ch_list=['F7', 'F8', 'T3', 'T4']))

    return np.array(mse)


# fixme : it takes too long : 64
def get_samp_entropy(raw):
    ori_data = raw.get_data()
    fs = int(raw.info['sfreq'])
    return get_samp_entropy_nd_arr_tmp(ori_data, fs, ch_list=['P3', 'P4', 'Pz'])


# fixme : it takes too long : 229
def get_samp_entropy_nd_arr_tmp(ori_data, fs, target_fs=250, time_window=5, m_0=1, r=0.25, ch_list=None):
    if ch_list is None:
        ch_list = constants.YBRAIN_CH_LIST
    data = down_sampling(ori_data, fs, target_fs)
    N = data.shape[1]
    window = int(target_fs * time_window)
    # window = data.shape[1]
    # time_window =
    samp_en = np.zeros(19)
    m_1 = m_0 + 1
    for epoch_idx in range(int(N / window)):
        for ch_name in ch_list:
            ch = constants.YBRAIN_CH_LIST.index(ch_name)
            cur_data = np.array(data[ch, epoch_idx * window:epoch_idx * window + window])
            cur_std = np.std(cur_data)
            cur_r = cur_std * r
            mi = np.zeros([window + 1, window + 1, 2, m_0])
            for i in range(m_0):
                tmp = np.meshgrid(cur_data[i:], cur_data[i:])
                mi[:window - i, :window - i, 0, i] = tmp[0]
                mi[:window - i, :window - i, 1, i] = tmp[1]

            mi = np.array(mi[:-m_0, :-m_0])
            B = (np.sum(np.where(np.max(np.abs(mi[:, :, 0, :] - mi[:, :, 1, :]), axis=2) <= cur_r, 1, 0)) - (
                    window + 1 - m_0)) / ((window - m_0 - 1) * float(window - m_0))

            mi = np.zeros([window + 1, window + 1, 2, m_1])
            for i in range(m_1):
                tmp = np.meshgrid(cur_data[i:], cur_data[i:])
                mi[:window - i, :window - i, 0, i] = tmp[0]
                mi[:window - i, :window - i, 1, i] = tmp[1]

            mi = np.array(mi[:-m_1, :-m_1])
            A = (np.sum(np.where(np.max(np.abs(mi[:, :, 0, :] - mi[:, :, 1, :]), axis=2) <= cur_r, 1, 0)) - (
                    window + 1 - m_1)) / ((window - m_1 - 1) * float(window - m_1))

            samp_en[ch] += -np.log(A / B)
    return samp_en / float((N / window) * 1)


# fixme : it takes too long : 8
def get_LZcomplexity(raw):
    ori_data = raw.get_data()
    LZC = np.zeros(ori_data.shape[0])
    for ch in range(ori_data.shape[0]):
        if not constants.YBRAIN_CH_LIST[ch] in ['Fp1', 'Fp2']:
            continue
        cur_data = ori_data[ch]
        med = np.median(cur_data)
        binary_data = np.where(cur_data > med, 1, 0)
        bin_seq = []
        cur_seq = ''
        for idx in range(binary_data.shape[0]):
            cur_seq = cur_seq + str(binary_data[idx])
            if not cur_seq in bin_seq:
                bin_seq.append(cur_seq)
                cur_seq = ''
        c = bin_seq.__len__()
        b = binary_data.shape[0] / np.log2(binary_data.shape[0])

        LZC[ch] = c / b
    return LZC


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

    fluctfit_low = 2 ** np.polyval(coeff_low, np.log2(scales[(scales < 16)]))
    fluctfit_high = 2 ** np.polyval(coeff_high, np.log2(scales[(scales > 16)]))
    fig, ax = plt.subplots(1, 1)
    ax.plot(np.log10(scales), np.log10(fluct), 'bo')
    ax.plot(np.log10(scales[(scales < 16)]), np.log10(fluctfit_low), 'r', label=r'$\alpha$ = %0.2f' % coeff_low[0])
    ax.plot(np.log10(scales[(scales > 16)]), np.log10(fluctfit_high), 'r', label=r'$\alpha$ = %0.2f' % coeff_high[0])
    ax.title('DFA')
    ax.xlabel(r'$\log_{10}$(time window)')
    ax.ylabel(r'$\log_{10}$<F(t)>')
    ax.legend()
    ax.show()
    fig.savefig('./dfa.png')
    plt.close(fig)
    return scales, fluct, coeff_low[0], coeff_high[0]


# fixme : it takes too long : 104
def get_dfa(raw):
    dfa = np.zeros([raw.get_data().shape[0]])
    for ch in range(raw.get_data().shape[0]):
        if not constants.YBRAIN_CH_LIST[ch][-1].isdigit():
            continue
        if int(constants.YBRAIN_CH_LIST[ch][-1]) % 2 == 0:
            continue
        test_data = raw.get_data()[ch]
        mean_data = test_data - np.mean(test_data)
        length = len(mean_data)
        N = 50
        f = np.zeros([N])
        for m in range(1, N + 1):
            n = 10 * m
            detrended_data = np.array(mean_data)
            for i in range(n):
                data_for_trend = np.array(mean_data[i * int(length / n):(i + 1) * int(length / n)])
                X = np.arange(data_for_trend.shape[0])
                X = np.expand_dims(X, 1)
                Y = data_for_trend
                reg = LinearRegression().fit(X, Y)
                a, b = reg.coef_[0], reg.intercept_
                data_for_detrend = np.arange(data_for_trend.shape[0]) * a + b
                detrended_data[i * int(length / n):(i + 1) * int(length / n)] -= data_for_detrend
            f[m - 1] = np.sqrt(np.mean(np.square(detrended_data)))
        X = np.arange(N) + 1
        X = np.expand_dims(X, 1)
        reg = LinearRegression().fit(X, np.log(f + 1E-7))
        dfa[ch] = reg.coef_
    return dfa


def get_SEF95(raw):
    ori_data = raw.get_data()
    mean_data = np.mean(ori_data, axis=0)
    f, y = welch(mean_data, fs=raw.info['sfreq'], nperseg=int(raw.info['sfreq'] * 4), nfft=int(raw.info['sfreq'] * 10))
    se = 0
    min = np.where(f == 1.)[0][0]
    max = np.where(f == 50.)[0][0]
    for i in range(min, y.shape[0]):
        se += y[i] / np.sum(y[min:max + 1])
        if se > 0.95:
            return f[i]


def get_power(custom_raw):
    fs = custom_raw.info['sfreq']
    input_data = custom_raw.get_data()
    data_ = np.array(input_data)
    data = data_
    # fft_for_psd = np.zeros([data.shape[0], data.shape[1]])
    for ch in range(data.shape[0]):
        # fft_for_psd[ch] = np.abs(np.fft.fft(data[ch]))
        f, psd_tmp = welch(data[ch], fs=fs, nfft=fs * 32, nperseg=fs * 2, noverlap=int(1.5 * fs))
        if ch == 0:
            psd = np.expand_dims(psd_tmp, 0)
        else:
            psd = np.concatenate([psd, np.expand_dims(psd_tmp, 0)], axis=0)

    abs_power = {}
    rel_power = {}

    # Absolute power normalize for neuroguide algorithm.
    abs_norm_coeff = np.load('./reference_files/abs_norm_coeff.npy')
    band_list = ['Delta', 'Theta', 'Alpha', 'Beta', 'High Beta', 'Gamma']

    for band in constants.BANDS.keys():
        band_freq = constants.BANDS.get(band)
        band_idx = np.where(np.where(f >= band_freq[0], f, 999) <= band_freq[1])[0]

        power = np.mean(psd[:, band_idx], axis=1) * (band_freq[1] - band_freq[0])

        crt_norm_coeff = abs_norm_coeff[band_list.index(band)]

        abs_power[band] = np.exp(np.log(power + 1E-9) * crt_norm_coeff[:, 0] + crt_norm_coeff[:, 1])

    total_power = np.zeros(psd.shape[0])
    for ch in range(psd.shape[0]):
        for band in abs_power.keys():
            total_power[ch] += abs_power.get(band)[ch]

    for band in abs_power.keys():
        rel_power[band] = abs_power.get(band) / total_power

    rat_power = {}

    rat_power['DAR'] = abs_power['Delta'] / abs_power['Alpha']
    rat_power['TAR'] = abs_power['Theta'] / abs_power['Alpha']
    rat_power['TBR'] = abs_power['Theta'] / abs_power['Beta']

    return abs_power, rel_power, f, psd, rat_power


def get_power_v2(custom_raw):
    fs = custom_raw.info['sfreq']
    input_data = custom_raw.get_data()
    data_ = np.array(input_data)
    data = data_
    for ch in range(data.shape[0]):
        f, psd_tmp = welch(data[ch], fs=fs, nfft=fs * 32, nperseg=fs * 2, noverlap=int(1.5 * fs))
        if ch == 0:
            psd = np.expand_dims(psd_tmp, 0)
        else:
            psd = np.concatenate([psd, np.expand_dims(psd_tmp, 0)], axis=0)

    abs_power = {}
    rel_power = {}

    # Absolute power normalize for neuroguide algorithm.
    # abs_norm_coeff = np.load('./reference_files/abs_norm_coeff.npy')
    band_list = ['Delta', 'Theta', 'Alpha', 'Low Beta', 'Mid Beta', 'High Beta', 'Gamma']

    for band in constants.BANDS_v2.keys():
        band_freq = constants.BANDS_v2.get(band)
        band_idx = np.where(np.where(f >= band_freq[0], f, 999) <= band_freq[1])[0]

        power = np.mean(psd[:, band_idx], axis=1) * (band_freq[1] - band_freq[0])

        abs_power[band] = np.exp(np.log(power + 1E-9))

    total_power = np.zeros(psd.shape[0])
    for ch in range(psd.shape[0]):
        for band in abs_power.keys():
            total_power[ch] += abs_power.get(band)[ch]

    for band in abs_power.keys():
        rel_power[band] = abs_power.get(band) / total_power

    rat_power = {}

    rat_power['DAR'] = abs_power['Delta'] / abs_power['Alpha']
    rat_power['TAR'] = abs_power['Theta'] / abs_power['Alpha']
    rat_power['TBR'] = abs_power['Theta'] / (abs_power['Low Beta'] + abs_power['Mid Beta'])

    return abs_power, rel_power, psd, rat_power


def get_csd(x, fs, y=None, nperseg=None, nfft=1024):
    t = x.shape[-1]
    is_psd = False
    if nperseg is None:
        nperseg = int(t / 8)
    if y is None:
        y = np.array(x)
        is_psd = True
    num = int(t / nperseg)
    win = np.hamming(nperseg)
    pxy = np.zeros([num, nfft], dtype=np.complex64)
    U = np.dot(win, win) * fs
    for idx in range(num):
        x_idx = x[nperseg * idx:nperseg * (idx + 1)]
        y_idx = y[nperseg * idx:nperseg * (idx + 1)]
        wx_idx = x_idx * win
        wy_idx = y_idx * win

        x_reshape = np.zeros(nfft * (int(nperseg / nfft) + 1))
        x_reshape[:nperseg] = wx_idx
        x_reshape = np.reshape(x_reshape, [int(nperseg / nfft) + 1, nfft])
        x_sum = np.sum(x_reshape, 0)
        x_f = np.fft.fft(x_sum)

        y_reshape = np.zeros(nfft * (int(nperseg / nfft) + 1))
        y_reshape[:nperseg] = wy_idx
        y_reshape = np.reshape(y_reshape, [int(nperseg / nfft) + 1, nfft])
        y_sum = np.sum(y_reshape, 0)
        y_f = np.fft.fft(y_sum)

        pxy[idx] = x_f * np.conjugate(y_f) / U

    if is_psd:
        res = np.abs(np.mean(pxy, 0))
    else:
        res = np.mean(pxy, 0)
    return fftpack.fftfreq(nfft, 1 / fs), res


def get_gamma_dist(input_list):
    N = input_list.__len__()
    tmp_a = 0
    tmp_b = 0
    tmp_c = 0
    tmp_d = 0
    if N == 0:
        k, theta = 0, 0
    else:
        for i in range(N):
            tmp_a += input_list[i]
            tmp_b += (input_list[i] * math.log(input_list[i] + 1E-7))
            tmp_c += math.log(input_list[i] + 1E-7)
            tmp_d += input_list[i]
        tmp_a *= N
        tmp_b *= N
        tmp_e = tmp_c * tmp_d
    k = tmp_a / (tmp_b - tmp_e + 1E-7)
    theta = (tmp_b - tmp_e) / (N * N + 1E-7)

    return gamma(a=k, scale=theta), k, theta


def get_gaussian_dist(input_list):
    mean = np.mean(input_list)
    std = np.std(input_list)
    return norm(mean, std), mean, std


def get_beta_dist(input_list):
    a, b, loc, scale = beta.fit(input_list)

    return beta(a, b), a, b, loc, scale


def get_coherence(custom_raw, for_phase=False):
    input_data = custom_raw.get_data()
    fs = custom_raw.info['sfreq']

    window_size = 1
    while True:
        if fs / window_size >= (0.25 + 0.125):
            window_size *= 2
        else:
            break

    overlap_size = int(window_size * 0.25)
    n_f = int(window_size * 0.5)
    total_batch = int((input_data.shape[1] - window_size) / overlap_size)

    coherence = {}
    for keys in constants.BANDS.keys():
        coherence[keys] = np.zeros([total_batch, 19, 19])

    for t in range(total_batch):
        for n in range(19):
            for m in range(19):
                f, csd = get_csd(input_data[n, t * overlap_size:t * overlap_size + window_size], fs,
                                 input_data[m, t * overlap_size:t * overlap_size + window_size], nfft=n_f,
                                 nperseg=1024)
                _, py1 = get_csd(input_data[n, t * overlap_size:t * overlap_size + window_size], fs=fs, nfft=n_f,
                                 nperseg=n_f)
                _, py2 = get_csd(input_data[m, t * overlap_size:t * overlap_size + window_size], fs=fs, nfft=n_f,
                                 nperseg=n_f)
                tmp = csd / (np.sqrt(py1) + 1E-7) / (np.sqrt(py2) + 1E-7)
                Cyy = (tmp.real)

                for key in constants.BANDS.keys():
                    low, high = constants.BANDS[key][0], constants.BANDS[key][1]
                    freq_bands_indicator = ((low <= f) & (f < high))
                    if for_phase:
                        coherence[key][t, n, m] = np.mean(Cyy[freq_bands_indicator])
                    else:
                        coherence[key][t, n, m] = np.abs(np.mean(Cyy[freq_bands_indicator]))

    for key in constants.BANDS.keys():
        coherence[key] = np.mean(coherence[key], 0)

    return coherence


def get_asymmetry(power):
    if isinstance(power, dict):
        asym = {}
        for key in power.keys():
            asym_tmp = np.zeros([19, 19])
            for n in range(19):
                for m in range(19):
                    asym_tmp[n, m] = np.log(power[key][n]) - np.log(power[key][m])
            asym[key] = asym_tmp
    else:
        asym = np.zeros([19, 19])
        for n in range(19):
            for m in range(19):
                asym[n, m] = np.log(power[n]) - np.log(power[m])

    return asym


def get_connectivity(custom_raw, abs_power):
    asymmetry = {}

    coherence = get_coherence(custom_raw)

    for key in constants.BANDS.keys():
        asymmetry[key] = get_asymmetry(abs_power[key])

    return asymmetry, coherence


def get_alpha_peak(psds, window_size=0.1, fs=500.):
    sample_num = psds.shape[1]
    sampling_rate = fs

    window_sample_num = sample_num / sampling_rate * window_size
    pick = np.arange(2 * constants.BANDS.get('Alpha')[0] * sample_num / sampling_rate,
                     2 * constants.BANDS.get('Alpha')[1] * sample_num / sampling_rate, int(window_sample_num)).astype(
        np.uint32)
    best_power = np.ones([psds.shape[0]]) * -9999999999.
    best_idx = np.zeros([psds.shape[0]])
    for ch in range(psds.shape[0]):
        for idx in pick:
            cur_power = np.mean(psds[ch, idx:idx + int(window_sample_num)])
            if best_power[ch] < cur_power:
                best_power[ch] = cur_power
                best_idx[ch] = idx
    return np.round(best_idx / sample_num * sampling_rate / window_size / 2) * window_size, best_power


def get_alpha_peak_mean(psds, window_size=0.1, fs=500.):
    sample_num = psds.shape[1]
    sampling_rate = fs

    psds_mean = np.mean(psds, axis=0)

    window_sample_num = sample_num / sampling_rate * window_size
    pick = np.arange(2 * constants.BANDS.get('Alpha')[0] * sample_num / sampling_rate,
                     2 * constants.BANDS.get('Alpha')[1] * sample_num / sampling_rate, int(window_sample_num)).astype(
        np.uint32)
    best_power = -9999999999.
    best_idx = 0
    for idx in pick:
        cur_power = np.mean(psds_mean[idx:idx + int(window_sample_num)])
        if best_power < cur_power:
            best_power = cur_power
            best_idx = idx
    return np.round(best_idx / sample_num * sampling_rate / window_size / 2) * window_size, best_power


# fixme : it takes too long : 148
def get_mutual_information(raw, overlap_ratio=0.2, window_size=5):
    x = raw.get_data()
    fs = int(raw.info['sfreq'])
    overlap_step = int(fs * overlap_ratio * window_size)
    total_step = int((x.shape[1] - window_size * fs) / overlap_step + 1)
    entropy = np.zeros([19, 19])
    for ch1 in range(19):
        for ch2 in range(ch1, 19):
            if ch1 == ch2:
                continue
            entropy_tmp = 0
            for idx in range(total_step):
                x1_tmp = x[ch1, idx * overlap_step:idx * overlap_step + fs * window_size]
                x2_tmp = x[ch2, idx * overlap_step:idx * overlap_step + fs * window_size]
                bin1 = np.histogram(x1_tmp, 11)[0] / (window_size * fs)
                bin2 = np.histogram(x2_tmp, 11)[0] / (window_size * fs)
                bin12 = np.histogram2d(x1_tmp, x2_tmp, 11)[0] / (window_size * fs)
                h1 = 0
                h2 = 0
                h12 = 0
                for prob in bin1:
                    h1 -= prob * np.log(prob + 1E-7)
                for prob in bin2:
                    h2 -= prob * np.log(prob + 1E-7)
                for i in range(bin12.shape[0]):
                    for j in range(bin12.shape[1]):
                        prob = bin12[i, j]
                        h12 -= prob * np.log(prob + 1E-7)
                entropy_tmp += (h1 + h2 - h12)
            entropy[ch1, ch2] = entropy_tmp / float(total_step)

    for ch1 in range(19):
        for ch2 in range(0, ch1):
            entropy[ch1, ch2] = entropy[ch2, ch1]

    return entropy


def get_cdf_val(feature_dict, age):
    ch_set_list = [('mean', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]),
                   ('frontal', [0, 1, 6, 7, 8, 13, 18]),
                   ('parietal', [10, 12, 16]),
                   ('temporal', [2, 3, 4, 5]),
                   ('left', [0, 1, 2, 3, 15, 16, 17, 18]),
                   ('right', [4, 5, 6, 7, 8, 9, 10, 11]),
                   ('center', [12, 13, 14]),
                   ('occipital', [11, 15])]

    age_range_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 25, 30, 35, 45, 999]
    feature_type_list = ['abs_power', 'rel_power', 'rat_power']
    band_type_list = ['Delta', 'Theta', 'Alpha', 'Beta', 'High Beta', 'Gamma']
    ratio_type_list = ['DAR', 'TAR', 'TBR']
    age = np.where(age < 5, 5, age)

    for age_idx in range(len(age_range_list)):
        if age_range_list[age_idx + 1] > age:
            break

    with open('./reference_files/all_feature_2.json') as f:
        json_tmp = json.load(f)

    norm_arr = np.load('./reference_files/norm.npy')

    cdf_obj = {}
    for key in feature_type_list:
        cdf_tmp = {}
        for band in feature_dict[key].keys():
            if key == 'rel_power':
                pow_feature_val = np.log(100 * feature_dict[key][band] + 1E-9)
            else:
                pow_feature_val = np.log(feature_dict[key][band] + 1E-9)
            if band in band_type_list:
                feature_idx = feature_type_list.index(key) * 5 + band_type_list.index(band)
                if band == 'Gamma':
                    feature_idx -= 1
            else:
                feature_idx = feature_type_list.index(key) * 5 + ratio_type_list.index(band)

            cdf_val = norm_arr[feature_idx, :, age_idx, 0] * pow_feature_val + norm_arr[feature_idx, :, age_idx, 1]
            cdf_tmp[band] = norm().cdf(cdf_val)
        cdf_obj[key] = cdf_tmp

    cdf_val = 0
    num = 0
    for (key, band, region) in [('rel_power', 'Beta', 'temporal'), ('rel_power', 'High Beta', 'temporal'),
                                ('rel_power', 'Beta', 'frontal'), ('rel_power', 'High Beta', 'frontal')]:
        for ch_set in ch_set_list:
            if ch_set[0] == region:
                for ch in ch_set[1]:
                    cdf_val += cdf_obj[key][band][ch]
                    num += 1
    cdf_obj['stress'] = cdf_val / num

    cdf_val = 0
    num = 0
    for (key, band, region) in [('rel_power', 'Delta', 'frontal'), ('rat_power', 'DAR', 'frontal')]:
        feature_val = feature_dict[key][band]
        for ch_set in ch_set_list:
            if ch_set[0] == region:
                for ch in ch_set[1]:
                    cdf_val += cdf_obj[key][band][ch]
                    num += 1
    cdf_obj['cognition'] = 1 - (cdf_val / num)

    cdf_val = 0
    num = 0
    for (key, band, region) in [('rat_power', 'TBR', 'mean')]:
        feature_val = feature_dict[key][band]
        for ch_set in ch_set_list:
            if ch_set[0] == region:
                for ch in ch_set[1]:
                    cdf_val += cdf_obj[key][band][ch]
                    num += 1
    cdf_obj['concentration'] = 1 - (cdf_val / num)

    json_obj = json_tmp['sef_95_mean']
    cdf_obj['use_of_brain'] = gamma(a=json_obj['a'], scale=json_obj['b']).cdf(feature_dict['sef_95'])

    alpha_peak = np.mean(feature_dict['alpha_peak'][ch_set_list[7][1]])
    alpha_peak_power = np.mean(feature_dict['alpha_peak_power'][ch_set_list[7][1]])
    cdf_peak = beta(json_tmp['alpha_peak_occipital']['a'], json_tmp['alpha_peak_occipital']['b']).cdf(
        (alpha_peak - json_tmp['alpha_peak_occipital']['loc']) / json_tmp['alpha_peak_occipital']['scale'])

    cdf_peak_power = gamma(a=json_tmp['alpha_peak_power_occipital']['a'],
                           scale=json_tmp['alpha_peak_power_occipital']['b']).cdf(alpha_peak_power)

    cdf_obj['memory_operate'] = (cdf_peak * 9 + cdf_peak_power) / 10

    samp_en = np.mean(feature_dict['samp_entropy'][ch_set_list[2][1]])
    cdf_samp_en = gamma(a=json_tmp['samp_entropy_parietal']['a'], scale=json_tmp['samp_entropy_parietal']['b']).cdf(
        samp_en)
    cdf_obj['info_amount'] = cdf_samp_en

    mse_cdf = 0
    for ch_name in ['F7', 'T3', 'T4', 'F8']:
        ch = constants.YBRAIN_CH_LIST.index(ch_name)
        cur_mse = feature_dict['mse'][:, ch]
        cur_feature_val = np.mean(cur_mse[:5]) - np.mean(cur_mse[5:])
        mse_cdf += (
            norm(json_tmp['mse_%s' % ch_name]['mean'], json_tmp['mse_%s' % ch_name]['std']).cdf(cur_feature_val))
    cdf_obj['info_speed'] = mse_cdf / 4

    lzc_cdf = 0
    for ch_name in ['Fp1', 'Fp2']:
        ch = constants.YBRAIN_CH_LIST.index(ch_name)
        cur_lzc = feature_dict['lzc'][ch]
        cur_gamma = gamma(a=json_tmp['lzc_%s' % ch_name]['a'], scale=json_tmp['lzc_%s' % ch_name]['b'])
        lzc_cdf += cur_gamma.cdf(cur_lzc)

    cdf_dfa = 0
    cdf_num = 0
    for ch_name in constants.YBRAIN_CH_LIST:
        if ch_name[-1].isdigit():
            if int(ch_name[-1]) % 2 == 1:
                ch = constants.YBRAIN_CH_LIST.index(ch_name)
                cur_dfa = feature_dict['dfa'][ch]
                cur_gamma = gamma(a=json_tmp['dfa_%s' % ch_name]['a'], scale=json_tmp['dfa_%s' % ch_name]['b'])
                cdf_dfa += cur_gamma.cdf(-cur_dfa)
                cdf_num += 1

    cdf_obj['info_complex'] = ((lzc_cdf / 2) + 1 - (cdf_dfa / cdf_num)) / 2

    inter_ch_list = []
    intra_ch_list = []
    for ch1 in range(19):
        if not constants.YBRAIN_CH_LIST[ch1][-1].isdigit():
            continue
        ch1_rem = int(constants.YBRAIN_CH_LIST[ch1][-1]) % 2
        for ch2 in range(19):
            if ch1 == ch2:
                continue
            if not constants.YBRAIN_CH_LIST[ch2][-1].isdigit():
                continue
            ch2_rem = int(constants.YBRAIN_CH_LIST[ch2][-1]) % 2
            if ch1_rem == ch2_rem:
                intra_ch_list.append((ch1, ch2))
            else:
                inter_ch_list.append((ch1, ch2))

    inter, intra = 0, 0

    for inter_ch in inter_ch_list:
        inter += feature_dict['mi'][inter_ch[0], inter_ch[1]]
    for intra_ch in intra_ch_list:
        intra += feature_dict['mi'][intra_ch[0], intra_ch[1]]

    cdf_obj['connectivity'] = gamma(a=json_tmp['mi_Fp1']['a'], scale=json_tmp['mi_Fp1']['b']).cdf(inter / intra)

    # json_tmp.close()

    return cdf_obj


def make_analysis(art_removed_custom_raw, request_id, crt_prefix, age, language='Korean'):
    # Compute several features and make topomaps
    abs_power, rel_power, f, psd, rat_power = get_power(art_removed_custom_raw)
    # abs_power, rel_power, psd, rat_power = get_power_v2(art_removed_custom_raw)

    if cfg.FEATURE and cfg.ONLY_POWER:
        raw_data_dict = {'abs_power': abs_power,
                         'rel_power': rel_power,
                         'rat_power': rat_power,
                         'asym': None,
                         'coh': None,
                         'alpha_peak': None,
                         'alpha_peak_power': None,
                         'mse': None,
                         'samp_entropy': None,
                         'lzc': None,
                         'sef_95': None,
                         'mi': None,
                         'dfa': None}

        write_excel(None, raw_data_dict, f, psd, request_id)
        raise Exception('Configuration to save only power feature is set True. Remained processes are skipped')

    logical_cpu_count = psutil.cpu_count(logical=True)
    pool_size = min(logical_cpu_count, 3)
    with Pool(processes=pool_size) as worker_pool:
        w_get_multi_scale_entropy = worker_pool.apply_async(func=get_multi_scale_entropy, args=[art_removed_custom_raw])
        w_get_mutual_information = worker_pool.apply_async(func=get_mutual_information, args=[art_removed_custom_raw])
        w_get_dfa = worker_pool.apply_async(func=get_dfa, args=[art_removed_custom_raw])
        w_get_samp_entropy = worker_pool.apply_async(func=get_samp_entropy, args=[art_removed_custom_raw])
        w_get_lz_complexity = worker_pool.apply_async(func=get_LZcomplexity, args=[art_removed_custom_raw])
        w_get_sef95 = worker_pool.apply_async(func=get_SEF95, args=[art_removed_custom_raw])
        w_get_alpha_peak = worker_pool.apply_async(func=get_alpha_peak,
                                                   args=[psd, 0.1, art_removed_custom_raw.info['sfreq']])
        w_get_coherence = worker_pool.apply_async(func=get_coherence, args=[art_removed_custom_raw])

        alpha_peak, alpha_peak_power = w_get_alpha_peak.get()

        mse = w_get_multi_scale_entropy.get()  # 주로 사용되는 뇌파의 속도 ndarray (11)

        samp_entropy = w_get_samp_entropy.get()  # 뇌파의 정보량 scalar 1

        lzc = w_get_lz_complexity.get()  # 뇌파의 복잡도 ndarray (19)

        sef_95 = w_get_sef95.get()  # 뇌파의 사용량 scalar 1

        mi = w_get_mutual_information.get()  # 뇌의 연결성 ndarray (19, 19)

        dfa = w_get_dfa.get()  # 예측 가능성

        coherence = w_get_coherence.get()

        lzc = lzc * np.sqrt(art_removed_custom_raw.info['sfreq'] / 256)
        raw_data_dict = {'abs_power': abs_power,
                         'rel_power': rel_power,
                         'rat_power': rat_power,
                         'asym': None,
                         'coh': coherence,
                         'alpha_peak': alpha_peak,
                         'alpha_peak_power': alpha_peak_power,
                         'mse': mse,
                         'samp_entropy': samp_entropy,
                         'lzc': lzc,
                         'sef_95': sef_95,
                         'mi': mi,
                         'dfa': dfa}
        cdf_dict = get_cdf_val({'abs_power': abs_power,
                                'rel_power': rel_power,
                                'rat_power': rat_power,
                                'asym': None,
                                'coh': coherence,
                                'alpha_peak': alpha_peak,
                                'alpha_peak_power': alpha_peak_power,
                                'mse': mse,
                                'samp_entropy': samp_entropy,
                                'lzc': lzc,
                                'sef_95': sef_95,
                                'mi': mi,
                                'dfa': dfa},
                               age=age)

    if cfg.FEATURE:
        write_excel(cdf_dict, raw_data_dict, f, psd, request_id)

    if not cfg.REPORT:
        raise Exception('Configuration to save report is set False. Remained processes are skipped')

    for feature in ['abs_power', 'rel_power', 'rat_power']:
        plot_topo_map(cdf_dict[feature], constants.pos, 'head', request_id, crt_prefix, feature, True, None)

    alpha_peak_plot(psd, alpha_peak, alpha_peak_power, art_removed_custom_raw.info['sfreq'], request_id, crt_prefix,
                    constants.pos, outlines='head', head_pos=None)

    for feature in ['stress', 'concentration', 'cognition']:
        type_idx(cdf_dict[feature], feature, request_id, crt_prefix, language=language)

    use_of_brain(cdf_dict['use_of_brain'], request_id, crt_prefix)
    memory_operate(cdf_dict['memory_operate'], request_id, crt_prefix)

    info_amount_complexity(cdf_dict['info_amount'], cdf_dict['info_complex'], request_id, crt_prefix,
                           language=language)
    information_speed(cdf_dict['info_speed'], request_id, crt_prefix, language=language)
    hemispheric_connectivity(cdf_dict['connectivity'], request_id, crt_prefix)

    mean_alpha_peak, _ = get_alpha_peak_mean(psd, window_size=0.1,
                                             fs=art_removed_custom_raw.info['sfreq'])  # ndarray (19) both
    SEF_psd_plot(np.linspace(0, art_removed_custom_raw.info['sfreq'] / 2, psd.shape[1]), np.mean(psd, axis=0),
                 mean_alpha_peak, sef_95, request_id, crt_prefix)
    plot_mi_connect_line(mi, request_id, crt_prefix, constants.pos, 'head', None)
    return cdf_dict, raw_data_dict


def make_analysis_fake(request_id, crt_prefix, age, language='Korean', ):
    cdf_dict = {}
    for feature in ['abs_power', 'rel_power']:
        tmp = {}
        for band in ['Delta', 'Theta', 'Alpha', 'Beta', 'High Beta', 'Gamma']:
            tmp[band] = np.load('./reference_files/fake_data/%s_%s.npy' % (feature, band))
        cdf_dict[feature] = tmp
    for feature in ['rat_power']:
        tmp = {}
        for band in ['DAR', 'TAR', 'TBR']:
            tmp[band] = np.load('./reference_files/fake_data/%s_%s.npy' % (feature, band))
        cdf_dict[feature] = tmp
    for feature in ['stress', 'cognition', 'concentration', 'use_of_brain', 'memory_operate', 'info_amount', 'info_speed', 'info_complex', 'connectivity']:
        cdf_dict[feature] = np.random.random() / 10. + 0.9

    cdf_dict['cognition'] = 0.95
    for feature in ['stress', 'concentration', 'cognition']:
        type_idx(cdf_dict[feature], feature, request_id, crt_prefix, language=language)

    use_of_brain(cdf_dict['use_of_brain'], request_id, crt_prefix, language=language)
    memory_operate(cdf_dict['memory_operate'], request_id, crt_prefix, language=language)

    info_amount_complexity(cdf_dict['info_amount'], cdf_dict['info_complex'], request_id, crt_prefix,
                           language=language)
    information_speed(cdf_dict['info_speed'], request_id, crt_prefix, language=language)
    hemispheric_connectivity(cdf_dict['connectivity'], request_id, crt_prefix, language=language)

    return cdf_dict, None


def make_cmp_analysis(pre_raw, post_raw, request_id, crt_prefix):
    _, _, f, pre_psd, _ = get_power(pre_raw)
    _, _, f, post_psd, _ = get_power(post_raw)

    alpha_peak_plot_compare(pre_psd, post_psd, pre_raw.info['sfreq'], request_id, crt_prefix, constants.pos, outlines='head', head_pos=None)
