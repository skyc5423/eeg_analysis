import matplotlib
import matplotlib.font_manager as fm
import matplotlib.pyplot as plt
import numpy as np
import os
from scipy.signal import welch
from matplotlib.patches import Ellipse
from PIL import Image


def plot_ecg(analysis_data, plot_feature, sample_rate, start_time, save_path, plot_time=30):
    print('plot_ecg')
    print(analysis_data.shape)
    # for t in range(int(analysis_data.shape[0] / (250 * 30))):
    if not os.path.exists('./%s' % save_path):
        os.mkdir('./%s' % save_path)
    fig, ax = plt.subplots(1, 1, figsize=(10, 1.5))
    ax.tick_params(
        axis='y',  # changes apply to the x-axis
        which='both',  # both major and minor ticks are affected
        left=False,  # ticks along the bottom edge are off
        right=False,  # ticks along the top edge are off
        labelleft=False)
    ax.set_xlabel('Time (s)', fontsize=11)
    ax.set_ylim(np.min(analysis_data[start_time * sample_rate:(start_time + plot_time) * sample_rate]),
                np.max(analysis_data[start_time * sample_rate:(start_time + plot_time) * sample_rate]))
    rr_list = plot_feature['peak_list']
    # ax.set_title('ECG Time Series')
    ax.plot(np.linspace(start_time, start_time + plot_time, plot_time * sample_rate), analysis_data[start_time * sample_rate:(start_time + plot_time) * sample_rate],
            linewidth=0.6, color='black')
    ax.scatter(np.array(rr_list) / sample_rate, analysis_data[np.array(rr_list)], color='green', s=15)
    ax.set_xlim(start_time, start_time + plot_time)
    plt.legend()
    plt.tight_layout()
    fig.savefig('./%s/ecg.png' % save_path)
    plt.close(fig)

    if False:  # for Debug
        for t in range(9):
            start_time_debug = t * 30
            fig, ax = plt.subplots(1, 1, figsize=(10, 1.5))
            ax.tick_params(
                axis='y',  # changes apply to the x-axis
                which='both',  # both major and minor ticks are affected
                left=False,  # ticks along the bottom edge are off
                right=False,  # ticks along the top edge are off
                labelleft=False)
            ax.set_xlabel('Time (s)', fontsize=11)
            ax.set_ylim(np.min(analysis_data[start_time_debug * sample_rate:(start_time_debug + plot_time) * sample_rate]),
                        np.max(analysis_data[start_time_debug * sample_rate:(start_time_debug + plot_time) * sample_rate]))
            rr_list = plot_feature['peak_list']
            # ax.set_title('ECG Time Series')
            ax.plot(np.linspace(start_time_debug, start_time_debug + plot_time, plot_time * sample_rate),
                    analysis_data[start_time_debug * sample_rate:(start_time_debug + plot_time) * sample_rate],
                    linewidth=0.6, color='black')
            ax.scatter(np.array(rr_list) / sample_rate, analysis_data[np.array(rr_list)], color='green', s=15)
            ax.set_xlim(start_time_debug, start_time_debug + plot_time)
            plt.legend()
            plt.tight_layout()
            fig.savefig('./%s/ecg_%d.png' % (save_path, t))
            plt.close(fig)


def plot_rr(t, rr, save_path):
    fig, ax = plt.subplots(1, 1, figsize=(10, 1.5))
    # ax.set_title('RR Time Series')
    ax.set_xlabel('Time (s)', fontsize=11)
    ax.set_ylabel('RR times (s)', fontsize=11)

    ax.plot(t, rr / 1000, linewidth=0.6, color='blue')
    ax.set_xlim(t[0], t[-1])
    plt.tight_layout()
    fig.savefig('./%s/rr.png' % save_path)
    plt.close(fig)


def plot_rr_hist(peak_list, mask_list, sample_rate, save_path):
    fig, ax = plt.subplots(1, 1, figsize=(3.6, 2.4))
    # ax.set_title('RR Time Series')
    ax.set_ylabel('# of beats', fontsize=11)
    ax.set_xlabel('RR times (s)', fontsize=11)
    rr_array = np.array(peak_list)[1:] - np.array(peak_list)[:-1]
    rr_array = np.delete(rr_array, np.where(mask_list)[0])

    ax.hist(rr_array / sample_rate, color='blue', bins=19, rwidth=0.9)
    plt.tight_layout()
    fig.savefig('./%s/rr_hist.png' % save_path)
    plt.close(fig)


def plot_psd_rr(f, psd, save_path):
    fig, ax = plt.subplots(1, 1, figsize=(3.9, 2.6))
    ax.plot(np.array(f), np.array(psd), color='black')
    idx_vlf = np.where(f <= 0.045)[0]
    idx_lf = np.where(np.where(f >= 0.04, f, 100) <= 0.155)[0]
    idx_hf = np.where(np.where(f >= 0.15, f, 100) <= 0.44)[0]
    ax.fill_between(np.array(f)[idx_vlf], np.array(psd)[idx_vlf], color='gray', alpha=0.5)
    ax.fill_between(np.array(f)[idx_lf], np.array(psd)[idx_lf], color='red', alpha=0.5)
    ax.fill_between(np.array(f)[idx_hf], np.array(psd)[idx_hf], color='green', alpha=0.5)
    ax.set_xlim(0, 0.44)
    ax.set_ylim(0)
    ax.set_xlabel('Frequency (Hz)', fontsize=11)
    ax.set_ylabel('PSD (s\u00b2/Hz)', fontsize=11)
    plt.tight_layout()
    fig.savefig('./%s/psd.png' % save_path)
    plt.close(fig)


def plot_poincare(peak_list, mask_list, sample_rate, lagged, sd1, sd2, save_path):
    rr_series = (np.array(peak_list)[1:] - np.array(peak_list)[:-1]) / sample_rate * 1000
    rr_series = np.delete(rr_series, np.where(mask_list)[0])
    # rr_series = np.array(peak_list)
    fig, ax = plt.subplots(1, 1, figsize=(3., 3.))
    for i in range(rr_series.shape[0] - lagged):
        ax.scatter(rr_series[i], rr_series[i + lagged], color='black', s=5)

    # width = np.max(np.sqrt(np.square(rr_series[1:]) + np.square(rr_series[:-1]))) - np.min(np.sqrt(np.square(rr_series[1:]) + np.square(rr_series[:-1])))
    width = np.abs(sd2) * np.sqrt(2)
    height = np.abs(sd1) * np.sqrt(2)
    ellipse = Ellipse((np.mean(rr_series[:-1]), np.mean(rr_series[1:])),
                      width=width * 2 * np.sqrt(2),
                      height=height * 2 * np.sqrt(2),
                      angle=45, alpha=0.1, facecolor='green'
                      )
    ellipse_edge = Ellipse((np.mean(rr_series[:-1]), np.mean(rr_series[1:])),
                           width=width * 2 * np.sqrt(2),
                           height=height * 2 * np.sqrt(2),
                           angle=45, alpha=0.9, edgecolor='black', fill=False
                           )
    ax.text(np.mean(rr_series[:-1]) - height - 20, np.mean(rr_series[:-1]) + height, 'sd1', color='blue', fontsize=12)
    ax.text(np.mean(rr_series[:-1]) + width / np.sqrt(2) / 4 + 10, np.mean(rr_series[:-1]) + width / np.sqrt(2) / 4 - 5, 'sd2', color='red', fontsize=12)
    ax.arrow(np.mean(rr_series[:-1]), np.mean(rr_series[1:]), width, width, color='red', width=0.5, head_width=5, head_length=5,
             length_includes_head=True)
    ax.arrow(np.mean(rr_series[:-1]), np.mean(rr_series[1:]), -height, height, color='blue', width=0.5, head_width=5,
             head_length=5, length_includes_head=True)
    ax.add_patch(ellipse)
    ax.add_patch(ellipse_edge)
    ax.set_xlabel('$RR_n$(ms)', fontsize=11)
    ax.set_ylabel('$RR_{n+1}$(ms)', fontsize=11)
    plt.tight_layout()
    fig.savefig('./%s/poincare_plot.png' % (save_path))
    plt.close(fig)


def plot_breathing(b_signal, total_time):
    t = np.linspace(0, total_time, len(b_signal))
    fig, ax = plt.subplots(1, 1)
    ax.plot(t, b_signal)
    fig.savefig('./breathing_signal.png')
    plt.close(fig)


def plot_breathing_psd(b_psd, b_frq):
    fig, ax = plt.subplots(1, 1)
    ax.plot(b_frq, b_psd)
    ax.set_xlim(0, 1)
    fig.savefig('./breathing_psd.png')
    plt.close(fig)


def plot_dfa(scales, fluct, coeff_low, coeff_high, save_path):
    fluctfit_low = 2 ** np.polyval(coeff_low, np.log2(scales[(scales < 16)]))
    fluctfit_high = 2 ** np.polyval(coeff_high, np.log2(scales[(scales > 16)]))
    fig, ax = plt.subplots(1, 1, figsize=(3., 3.))
    ax.plot(np.log10(scales), np.log10(fluct), 'b.')
    ax.plot(np.log10(scales[(scales < 16)]), np.log10(fluctfit_low), 'red', label=r'$\alpha$ = %0.2f' % coeff_low[0])
    ax.plot(np.log10(scales[(scales > 16)]), np.log10(fluctfit_high), 'green', label=r'$\alpha$ = %0.2f' % coeff_high[0])
    ax.set_xlabel(r'$\log_{10}$n(beats)', fontsize=11)
    ax.set_ylabel(r'$\log_{10}$F(n)', fontsize=11)
    plt.tight_layout()
    fig.savefig('./%s/dfa.png' % save_path)
    plt.close(fig)


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


def draw_pentagon_graph(r_list, ax, edgecolor='gray', facecolor='white', alpha=1., fill=True):
    from matplotlib.patches import Polygon
    coord = []
    for i in range(5):
        theta = np.pi * 2 / 5 * i + np.pi / 2
        x = np.cos(theta) * r_list[i]
        y = np.sin(theta) * r_list[i]
        coord.append([x, y])
    poly = Polygon(np.array(coord), edgecolor=edgecolor, facecolor=facecolor, alpha=alpha, fill=fill)
    ax.add_patch(poly)


def plot_pentagon_chart(score, save_path):
    font_prop = fm.FontProperties(fname='./font/NanumSquareBold.ttf', size=13)

    fig, ax = plt.subplots(1, 1, figsize=(4, 4))
    ax.set_xlim(-1.5, 1.5)
    ax.set_ylim(-1.5, 1.5)
    draw_pentagon_axis(ax)
    for i in range(4, 0, -1):
        draw_pentagon_graph([0.25 * i, 0.25 * i, 0.25 * i, 0.25 * i, 0.25 * i], ax)
    score_text = np.where(np.array(score) < 0.1, '매우 나쁨',
                          np.where(np.array(score) < 0.3, '조금 나쁨', np.where(np.array(score) < 0.7, '보통', np.where(np.array(score) < 0.9, '조금 좋음', '매우 좋음'))))
    score_fake = list(np.where(np.array(score) < 0.1, 0.1, np.array(score)))
    draw_pentagon_graph(score_fake, ax, edgecolor='#4475F3', facecolor='#4475F3', alpha=0.25)
    draw_pentagon_graph(score_fake, ax, edgecolor='#4475F3', fill=False)
    draw_pentagon_axis(ax)
    ax.text(0, 1.38, '스트레스 저항도', horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#444444')
    ax.text(-1.2, 0.73, '자율신경 균형', horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#444444')
    ax.text(1.2, 0.73, '피로 회복력', horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#444444')
    ax.text(-0.8, -1.05, '에너지 (활력)', horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#444444')
    ax.text(0.8, -1.05, '심장 건강도', horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#444444')

    ax.text(0, 1.15, score_text[0], horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#4475F3', alpha=0.75)
    ax.text(-1.2, 0.50, score_text[1], horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#4475F3', alpha=0.75)
    ax.text(1.2, 0.50, score_text[4], horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#4475F3', alpha=0.75)
    ax.text(-0.8, -1.28, score_text[2], horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#4475F3', alpha=0.75)
    ax.text(0.8, -1.28, score_text[3], horizontalalignment='center', verticalalignment='center', fontproperties=font_prop, color='#4475F3', alpha=0.75)
    ax.axis('off')
    fig.savefig('./%s/pentagon_chart.png' % save_path)
    plt.close(fig)


def plot_age_figure(real_age, hrv_age, save_path):
    fig, ax = plt.subplots(1, 1, figsize=(3, 3))
    ax.set_xlim(-1, 1)
    ax.set_ylim(-1, 1)
    img_heart = Image.open('./img/heartbeat.jpg')
    ax.imshow(np.array(img_heart), extent=(-1., 1., -0.5, 0.8), alpha=0.6)
    img_human = Image.open('./img/human.png')
    ax.imshow(np.array(img_human), extent=(-0.5, 0.5, -1., 1.), alpha=0.15)

    ax.text(0, 0, str(hrv_age), fontsize=100, fontweight='extra bold', horizontalalignment='center', verticalalignment='center', color='#4475F3')
    ax.text(-0.35, 0.8, 'Physical', fontsize=20, fontweight='bold', horizontalalignment='center', verticalalignment='center', color='#4475F3')
    ax.text(0.55, 0.8, 'Age', fontsize=20, fontweight='bold', horizontalalignment='center', verticalalignment='center', color='#444444')
    ax.text(0.55, -0.62, str(real_age), fontsize=20, fontweight='bold', horizontalalignment='center', verticalalignment='center', color='#444444')
    ax.text(-0.25, -0.62, 'Actual age', fontsize=15, fontweight='bold', horizontalalignment='center', verticalalignment='center', color='#44444488')
    ax.text(0, -0.85, 'The above result is for reference', fontsize=10, horizontalalignment='center', verticalalignment='center', color='#44444466')
    ax.text(0, -1., 'It cannot be used for medical diagnosis', fontsize=10, horizontalalignment='center', verticalalignment='center', color='#44444466')
    ax.axis('off')
    plt.tight_layout()
    fig.savefig('./%s/age_figure.png' % save_path)
    plt.close(fig)


def get_norm(feature, feature_val, age_range):
    if feature == 'Heart Rate':
        y_axis_label = 'Heart rate (beat/min)'

        def f(age):
            mean = -0.00021898 * (age ** 3) + 0.03292225 * (age ** 2) - 1.67995981 * age + 101.67408784
            return mean, mean + 1. * 16.1123, mean - 1. * 16.1123, 1.6448536269514729 * (feature_val - mean) / 16.1123
    elif feature == 'autonomic':
        y_axis_label = 'ln(Total power) (ms\u00b2)'

        def f(age):
            mean = - 0.01058391 * age + 7.89011095
            return mean, mean + 1. * 1.5767, mean - 1. * 1.5767, 1.6448536269514729 * (feature_val - mean) / 1.5767
    elif feature == 'sympathetic':
        y_axis_label = 'Normalized power [LF]'

        def f(age):
            mean = -0.00004702 * (age ** 2) + 0.00348018 * age + 0.41423332
            return mean, mean + 1. * 0.2855, mean - 1. * 0.2855, 1.6448536269514729 * (feature_val - mean) / 0.2855
    elif feature == 'parasympathetic':
        y_axis_label = 'Normalized power [HF]'

        def f(age):
            mean = +0.00004702 * (age ** 2) - 0.00348018 * age + 0.585767
            return mean, mean + 1. * 0.2855, mean - 1. * 0.2855, 1.6448536269514729 * (feature_val - mean) / 0.2855
    elif feature == 'SDNN':
        y_axis_label = 'SDNN (ms)'

        def f(age):
            mean = - 0.22034897 * age + 59.05908663
            return mean, mean + 1. * 35.7094, mean - 1. * 35.7094, 1.6448536269514729 * (feature_val - mean) / 35.7094
    elif feature == 'RMSSD':
        y_axis_label = 'ln(RMSSD) (ms)'

        def f(age):
            mean = - 0.00339738 * age + 3.93592346
            return mean, mean + 1. * 0.9558, mean - 1. * 0.9558, 1.6448536269514729 * (feature_val - mean) / 0.9558
    else:
        return

    return f(age_range), y_axis_label


def plot_hrv_graph(feature, feature_value, age, save_path):
    fig, ax = plt.subplots(1, 1, figsize=(4, 2.5))
    age_range = np.linspace(4, 85, 82)
    y_norm, y_label_axis = get_norm(feature, feature_value, age_range)
    ax.set_xlabel('age', fontsize=11)
    ax.set_ylabel(y_label_axis, fontsize=11)
    ax.plot(age_range, y_norm[0], color='black', )
    ax.plot(age_range, y_norm[1], color='red', ls='--', alpha=0.5)
    ax.plot(age_range, y_norm[2], color='blue', ls='--', alpha=0.5)
    norm_age = np.max([np.min([age, 85]), 4])
    ax.scatter(norm_age, feature_value, color='blue')
    ax.set_xlim(0, 90)
    ax.grid(b=True, which='major', color='#666666', linestyle='-', alpha=0.2)
    plt.tight_layout()
    fig.savefig('./%s/%s.png' % (save_path, feature))
    plt.close(fig)
    return y_norm[3][norm_age - 4]


def get_age(birthday):
    import datetime
    now = datetime.datetime.now()
    if not isinstance(birthday, int):
        year, _, _ = birthday.split('-')
    else:
        year = birthday / 10000
    return now.year - int(year) + 1


def plot_hrv_figure(analysis_data, sample_rate, plot_time, feature, plot_feature, info_crt, save_path):
    print('plot_hrv')
    print(analysis_data.shape)
    plot_ecg(analysis_data, plot_feature, sample_rate, plot_time, save_path)
    plot_rr(plot_feature['t'], plot_feature['rr'], save_path)
    plot_rr_hist(plot_feature['peak_list'], plot_feature['mask_peak_list'], sample_rate, save_path)
    plot_psd_rr(plot_feature['f'], plot_feature['psd'], save_path)
    plot_poincare(plot_feature['peak_list'], plot_feature['mask_peak_list'], sample_rate, plot_feature['lagged'], feature['sd1'], feature['sd2'], save_path)
    plot_dfa(plot_feature['scales'], plot_feature['fluct'], feature['coeff_low'], feature['coeff_high'], save_path)

    plot_pentagon_chart([plot_feature['stress_score'] / 100.,
                         plot_feature['balance_score'] / 100.,
                         plot_feature['energy_score'] / 100.,
                         plot_feature['heart_score'] / 100.,
                         plot_feature['recovery_score'] / 100.],
                        save_path)
    plot_age_figure(get_age(info_crt['subject']['birthday']), plot_feature['age_score'], save_path)
    z_score_sdnn = plot_hrv_graph('SDNN', feature['sdnn'], get_age(info_crt['subject']['birthday']), save_path)
    z_score_rmssd = plot_hrv_graph('RMSSD', np.log(feature['rmssd']), get_age(info_crt['subject']['birthday']), save_path)
    z_score_hr = plot_hrv_graph('Heart Rate', feature['mean_hr'], get_age(info_crt['subject']['birthday']), save_path)
    z_score_sympathetic = plot_hrv_graph('sympathetic', feature['norm_lf'], get_age(info_crt['subject']['birthday']), save_path)
    z_score_parasympathetic = plot_hrv_graph('parasympathetic', feature['norm_hf'], get_age(info_crt['subject']['birthday']), save_path)
    z_score_autonomic = plot_hrv_graph('autonomic', np.log(feature['total_power']), get_age(info_crt['subject']['birthday']), save_path)

    z_score_graph = {'sdnn': z_score_sdnn,
                     'rmssd': z_score_rmssd,
                     'hr': z_score_hr,
                     'sympathetic': z_score_sympathetic,
                     'parasympathetic': z_score_parasympathetic,
                     'autonomic': z_score_autonomic, }
    return z_score_graph
