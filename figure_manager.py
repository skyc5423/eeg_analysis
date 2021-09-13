from mne.viz.topomap import _draw_outlines, _check_outlines
import numpy as np
import constants
import matplotlib.pyplot as plt
from scipy.interpolate import griddata
from matplotlib.patches import Ellipse
from library.mne_data.interpolation import _GridData
from scipy.stats import norm
from matplotlib import cm
from matplotlib.colors import ListedColormap
from mpl_toolkits.axes_grid1 import make_axes_locatable
from PIL import Image
import matplotlib.font_manager as fm
from matplotlib.ticker import FormatStrFormatter
from pathlib import Path
from config.cfg import cfg


def custom_color_map_blue_red(value=None):
    jet = cm.get_cmap('jet', 1024)
    j = jet(np.linspace(0.1, 0.9, 1024))

    new_color = np.zeros([512, 4])

    A = np.linspace(0.8, 0.8, 512)
    new_color[0:512, 0] = j[512:1024, 0]
    new_color[0:512, 1] = j[512:1024, 1]
    new_color[0:512, 2] = j[512:1024, 2]
    new_color[:, 3] = A
    if value is None:
        return ListedColormap(j)
    else:
        return new_color[int(value * 511)]


def interpolate_topo_map(power, pos, outlines, aspect_ratio=None, n=128, kind='cubic'):
    xlim = np.inf, -np.inf,
    ylim = np.inf, -np.inf,
    mask_ = np.c_[outlines['mask_pos']]
    if aspect_ratio:
        mask_[:, 0] *= aspect_ratio[0]
        mask_[:, 1] *= aspect_ratio[1]
        # mask_[:, 1] -= 0.03
    # else:
    #     pos[:, 0] /= (np.max(pos[:, 0]) / np.max(mask_[:, 0]))
    #     pos[:, 1] /= (np.max(pos[:, 1]) / np.max(mask_[:, 1]))

    xmin, xmax = (np.min(np.r_[xlim[0], mask_[:, 0]]),
                  np.max(np.r_[xlim[1], mask_[:, 0]]))
    ymin, ymax = (np.min(np.r_[ylim[0], mask_[:, 1]]),
                  np.max(np.r_[ylim[1], mask_[:, 1]]))

    xi = np.linspace(xmin, xmax, n)
    yi = np.linspace(ymin, ymax, n)
    interp = _GridData(np.array((pos[:, 0], pos[:, 1])).T).set_values(power, kind=kind)
    Zi = interp.set_locations(xi, yi)("interp2d")

    return Zi, xmin, xmax, ymin, ymax


def make_head_outline(ax, outlines):
    ax.axes.axis('off')
    if isinstance(outlines, dict):
        _draw_outlines(ax, outlines)


def plot_topo_map(powers, pos, outlines, request_id, crt_prefix, feature, is_stretch, head_pos=None, labelsize=25):
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)
    for band in powers.keys():
        pos, outlines = _check_outlines(pos, outlines, head_pos)
        _, ax = plt.subplots(1, 1, figsize=(7.5, 5))
        make_head_outline(ax, outlines)
        power = powers.get(band)

        Zi, xmin, xmax, ymin, ymax = interpolate_topo_map(power, pos, outlines)

        patch_ = Ellipse((0, 0),
                         2 * outlines['clip_radius'][0],
                         2 * outlines['clip_radius'][1],
                         clip_on=True,
                         transform=ax.transData)

        Zi = np.where(Zi >= 0.999, 0.999, Zi)
        Zi = np.where(Zi <= 0.001, 0.001, Zi)
        Zi = norm().ppf(Zi)

        if is_stretch:
            # here
            im = ax.imshow(Zi, cmap=custom_color_map_blue_red(), vmin=norm().ppf(0.001), vmax=norm().ppf(0.999),
                           origin='lower',
                           aspect='equal', extent=(xmin, xmax, ymin, ymax),
                           interpolation='bilinear')
        else:
            im = ax.imshow(Zi, cmap='jet', vmin=-np.max(np.abs(power)), vmax=np.max(np.abs(power)), origin='lower',
                           aspect='equal', extent=(xmin, xmax, ymin, ymax),
                           interpolation='bilinear')

        if patch_ is not None:
            im.set_clip_path(patch_)

        divider = make_axes_locatable(ax)
        cax = divider.append_axes('right', size='10%', pad=0.5)
        cbar = ax.figure.colorbar(im, cax=cax, cmap=custom_color_map_blue_red(), orientation='vertical', pad=10.)
        cbar.set_ticks([-3, -2, -1, 0, 1, 2, 3])
        cbar.ax.tick_params(labelsize=labelsize,
                            direction='in', length=8)
        ax.scatter(pos[:, 0], pos[:, 1], color='black')
        ax.figure.savefig(path_fig / Path(crt_prefix + '_' + feature + '_' + band + ".png"))
        plt.close(ax.figure)


def plot_ica_topomap(power, pos, outlines, idx, crt_prefix, request_id, sign):
    aspect_ratio = [(255. - 64.) / (897. - 128.) * (10. / 3.), (271. - 16.) / (889. - 120.) * (10. / 3.)]

    fig, ax = plt.subplots(1, 1, figsize=(3, 3))
    # interpolate data
    pos_ = np.zeros(pos.shape)
    pos_[:, 0] = pos[:, 0] * aspect_ratio[0]
    pos_[:, 1] = pos[:, 1] * aspect_ratio[1]
    Zi, xmin, xmax, ymin, ymax = interpolate_topo_map(power, pos_, outlines, aspect_ratio=aspect_ratio)

    tmpx, tmpy = np.mgrid[np.min(pos_[:, 0]):np.max(pos_[:, 0]):128j, np.min(pos_[:, 1]):np.max(pos_[:, 1]):128j]
    gt = griddata(pos_ * 1.07, power, (tmpx, tmpy), 'cubic')
    gt = np.flip(np.transpose(gt), 0)

    im = ax.imshow(gt, cmap='jet', vmin=-np.max([np.abs(np.min(power)), np.max(power)]),
                   vmax=np.max([np.abs(np.min(power)), np.max(power)]),
                   extent=(xmin, xmax, ymin, ymax))
    patch_ = Ellipse((0, 0),
                     1 * aspect_ratio[0],
                     1 * aspect_ratio[1],
                     clip_on=True,
                     transform=ax.transData)
    ax.axis('off')

    if patch_ is not None:
        im.set_clip_path(patch_)

    ax.figure.canvas.draw()
    rtn = np.array(ax.figure.canvas.renderer._renderer)

    for ch in range(19):
        ax.plot(pos_[ch, 0] * 1.15, pos_[ch, 1] * 1.15, 'r', marker='o', markersize=2)

    fig_path = Path(cfg.OUT_DIR, request_id)
    fig_path.mkdir(exist_ok=True, parents=True)
    ax.figure.savefig(fig_path / Path("%s_ica_sources_%d_%d.png" % (crt_prefix, idx + 1, sign)))
    rtn_tmp = np.array(ax.figure.canvas.renderer._renderer)
    plt.close(fig)

    return rtn[:, :, 0:3] / 255., rtn_tmp[:, :, 0:3] / 255.


def information_speed(score, request_id, crt_prefix, language='Korean'):
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)
    if language == 'Korean':
        font_location = './resource/font/NanumSquareBold.ttf'
        fontprop = fm.FontProperties(fname=font_location)
        slow_text = '느림'
        fast_text = '빠름'
    else:
        font_location = './resource/font/KosugiMaru-Regular.ttf'
        fontprop = fm.FontProperties(fname=font_location)
        slow_text = 'slow'
        fast_text = 'fast'

    if score < 0.1:
        score = 0.09
    elif score > 0.9:
        score = 0.91

    if score < 0.2:
        portion_bar = score * 5.
        sizes = [portion_bar, 1 - portion_bar, 1, 1, 1, 1, 5]
        colors = ['#ffcf76', '#eaeaea', '#eaeaea', '#eaeaea', '#eaeaea', '#eaeaea', '#ffffff']
        marker_color = '#ffcf76'
    elif score < 0.4:
        portion_bar = (score - 0.2) * 5.
        sizes = [1, portion_bar, 1 - portion_bar, 1, 1, 1, 5]
        colors = ['#ffcf76', '#ffa66b', '#eaeaea', '#eaeaea', '#eaeaea', '#eaeaea', '#ffffff']
        marker_color = '#ffa66b'
    elif score < 0.6:
        portion_bar = (score - 0.4) * 5.
        sizes = [1, 1, portion_bar, 1 - portion_bar, 1, 1, 5]
        colors = ['#ffcf76', '#ffa66b', '#ff8062', '#eaeaea', '#eaeaea', '#eaeaea', '#ffffff']
        marker_color = '#ff8062'
    elif score < 0.8:
        portion_bar = (score - 0.6) * 5.
        sizes = [1, 1, 1, portion_bar, 1 - portion_bar, 1, 5]
        colors = ['#ffcf76', '#ffa66b', '#ff8062', '#ff5858', '#eaeaea', '#eaeaea', '#ffffff']
        marker_color = '#ff5858'
    else:
        portion_bar = (score - 0.8) * 5.
        sizes = [1, 1, 1, 1, portion_bar, 1 - portion_bar, 5]
        colors = ['#ffcf76', '#ffa66b', '#ff8062', '#ff5858', '#ff3254', '#eaeaea', '#ffffff']
        marker_color = '#ff3254'

    explode = (0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05)  # only "explode" the 2nd slice (i.e. 'Hogs')
    fig, ax = plt.subplots()

    ax.pie(sizes, colors=colors, explode=explode, shadow=False, startangle=180, counterclock=False)

    circle = plt.Circle((0, 0), 2 / 3, color='white')
    ax.add_artist(circle)
    if score < 0.1:
        ax.text(-0.3, 0, '%d' % 10, fontsize=40, fontweight=545)
        ax.text(0.14, 0, '% 미만', fontsize=20, color='#b5b5bc', fontweight=545, fontproperties=fontprop)
    elif score > 0.9:
        ax.text(-0.3, 0, '%d' % 90, fontsize=40, fontweight=545)
        ax.text(0.14, 0, '% 초과', fontsize=20, color='#b5b5bc', fontweight=545, fontproperties=fontprop)
    else:
        ax.text(-0.3, 0, '%d' % int(score * 100), fontsize=40, fontweight=545)
        ax.text(0.14, 0, '%', fontsize=20, color='#b5b5bc', fontweight=545)

    ax.text(-0.85, -0.12, slow_text, fontproperties=fontprop, color='#000000', verticalalignment='center',
            horizontalalignment='center', fontsize=12)
    ax.text(0.87, -0.12, fast_text, fontproperties=fontprop, color='#000000', verticalalignment='center',
            horizontalalignment='center', fontsize=12)

    def get_triangle_coord(score):
        radius = 0.65
        first_coord = (-radius * np.cos(score * np.pi), radius * np.sin(score * np.pi))
        line_len = 0.08
        inner_radius = radius - line_len
        tmp = line_len / (2 * (radius - line_len))
        angle_diff = np.arctan(tmp)
        second_coord = (
            -inner_radius * np.cos(score * np.pi - angle_diff), inner_radius * np.sin(score * np.pi - angle_diff))
        third_coord = (
            -inner_radius * np.cos(score * np.pi + angle_diff), inner_radius * np.sin(score * np.pi + angle_diff))
        return first_coord, second_coord, third_coord

    triangle_marker = plt.Polygon(get_triangle_coord(score), color=marker_color)
    ax.add_artist(triangle_marker)

    ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

    fig.canvas.draw()
    npa = fig.canvas.renderer._renderer
    tmp = np.array(npa)
    img = Image.fromarray(tmp[40:280, 100:-100])
    img.save(path_fig / Path('%s_info_speed.png' % (crt_prefix)))
    plt.close(fig)


def info_amount_complexity(score_info, score_complex, request_id, crt_prefix, language='Korean'):
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)
    if language == 'Korean':
        font_location = './resource/font/NanumSquareBold.ttf'
        fontprop = fm.FontProperties(fname=font_location)
        complexity_text = '복잡도'
    else:
        font_location = './resource/font/KosugiMaru-Regular.ttf'
        fontprop = fm.FontProperties(fname=font_location)
        complexity_text = '複雑度'

    if score_complex < 0.1:
        score_complex = 0.09
    elif score_complex > 0.9:
        score_complex = 0.91
    fig, ax = plt.subplots(1, 1, figsize=(6, 4.5))
    ax.grid(color='#eaeaea', linestyle='--', axis='x', dashes=(8, 8))
    # ax.barh([1.04, 0], [score_info * 100, score_complex * 100], height=[0.8, 0.8], color=['#639ce7', '#6dc6bd'])
    ax.barh([0.], [score_complex * 100], height=[0.8], color=['#6dc6bd'])
    ax.set_axisbelow(True)
    ax.set_ylim(-1.8, 1.84)
    ax.spines['right'].set_visible(False)
    ax.spines['top'].set_visible(False)
    ax.spines['left'].set_color('#eaeaea')
    ax.spines['bottom'].set_color('#eaeaea')
    ax.xaxis.set_major_formatter(FormatStrFormatter('%d%%'))
    ax.set_xlim(0, 100)
    ax.tick_params(axis='x',
                   top=False,
                   bottom=False,
                   labelbottom=True,
                   labelsize=15,
                   labelcolor='#b5b5bc',
                   grid_color='#eaeaea')
    ax.tick_params(axis='y',
                   right=False,
                   left=False,
                   labelleft=False,
                   grid_color='#eaeaea')

    x_coord_complex = np.min([np.max([25, score_complex * 100 + 5]), 82])

    if int(score_complex * 100) < 10:
        x_percent_coord_offset_complex = 2
    elif int(score_complex * 100) > 99:
        x_percent_coord_offset_complex = 2
    else:
        x_percent_coord_offset_complex = 2
    if score_complex < 0.1:
        ax.text(5, 0, complexity_text, fontproperties=fontprop, color='#000000', verticalalignment='center',
                fontsize=18)
        ax.text(x_coord_complex, 0, '%d' % 10, fontproperties=fontprop, color='#000000',
                verticalalignment='center', horizontalalignment='left',
                fontsize=20)
        ax.text(x_coord_complex + 4 * x_percent_coord_offset_complex, 0, '% 미만', fontsize=15, color='#b5b5bc',
                verticalalignment='center', horizontalalignment='left', fontweight=545, fontproperties=fontprop)
    elif score_complex < 0.2:
        ax.text(5, 0, complexity_text, fontproperties=fontprop, color='#000000', verticalalignment='center',
                fontsize=18)
        ax.text(x_coord_complex, 0, '%d' % int(score_complex * 100), fontproperties=fontprop, color='#000000',
                verticalalignment='center', horizontalalignment='left',
                fontsize=20)
        ax.text(x_coord_complex + 4 * x_percent_coord_offset_complex, 0, '%', fontsize=15, color='#b5b5bc',
                verticalalignment='center', horizontalalignment='left', fontweight=545)
    elif score_complex > 0.9:
        ax.text(5, 0, complexity_text, fontproperties=fontprop, color='#ffffff', verticalalignment='center',
                fontsize=18)
        ax.text(x_coord_complex, 0, '%d' % 90, fontproperties=fontprop, color='#ffffff',
                verticalalignment='center', horizontalalignment='left',
                fontsize=20)
        ax.text(x_coord_complex + 4 * x_percent_coord_offset_complex, 0, '% 초과', fontsize=15, color='#eaeaea',
                verticalalignment='center', horizontalalignment='left', fontweight=545, fontproperties=fontprop)
    else:
        ax.text(5, 0, complexity_text, fontproperties=fontprop, color='#ffffff', verticalalignment='center',
                fontsize=18)
        ax.text(x_coord_complex, 0, '%d' % int(score_complex * 100), fontproperties=fontprop, color='#000000',
                verticalalignment='center', horizontalalignment='left',
                fontsize=20)
        ax.text(x_coord_complex + 4 * x_percent_coord_offset_complex, 0, '%', fontsize=15, color='#b5b5bc',
                verticalalignment='center', horizontalalignment='left', fontweight=545)

    fig.canvas.draw()
    npa = fig.canvas.renderer._renderer
    tmp = np.array(npa)
    img = Image.fromarray(tmp[50:])
    img.save(path_fig / Path('%s_info_amount_complexity.png' % (crt_prefix)))
    plt.close(fig)


def hemispheric_connectivity(score_hemis_con, request_id, crt_prefix, language='Korean'):
    if language == 'Korean':
        font_location = './resource/font/NanumSquareBold.ttf'
        fontprop = fm.FontProperties(fname=font_location)
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)
    im1 = Image.open('resource/img/brain-top-outline.png')
    im2 = Image.open('resource/img/brain-top-fill.png')
    im1 = im1.resize((im2.size[0] + 2, im2.size[1] + 5))

    im1 = np.array(im1)
    im2 = np.array(im2)

    if score_hemis_con < 0.1:
        score_hemis_con = 0.09
    elif score_hemis_con > 0.9:
        score_hemis_con = 0.91

    im2[:int(im2.shape[0] * (1 - score_hemis_con))] = 1.

    if int(score_hemis_con * 100) < 10:
        x_percent_coord_offset = 2
    elif int(score_hemis_con * 100) > 99:
        x_percent_coord_offset = 2
    else:
        x_percent_coord_offset = 2

    fig, ax = plt.subplots(figsize=(8, 3))
    ax.axis('off')
    ax.imshow(im2, origin='lower')
    ax.imshow(im1)
    if score_hemis_con < 0.1:
        ax.text(350, 80, '%d' % 10, fontsize=30)
        ax.text(350 + x_percent_coord_offset * 40, 78, '% 미만', fontsize=20, color='#b5b5bc', fontproperties=fontprop)
    elif score_hemis_con > 0.9:
        ax.text(350, 80, '%d' % 90, fontsize=30)
        ax.text(350 + x_percent_coord_offset * 40, 78, '% 초과', fontsize=20, color='#b5b5bc', fontproperties=fontprop)
    else:
        ax.text(350, 80, '%d' % int(score_hemis_con * 100), fontsize=30)
        ax.text(350 + x_percent_coord_offset * 40, 78, '%', fontsize=20, color='#b5b5bc')

    ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

    fig.canvas.draw()
    npa = fig.canvas.renderer._renderer
    tmp = np.array(npa)
    img = Image.fromarray(tmp[:, 250:-140])
    img.save(path_fig / Path('%s_hemispheric_connectivity.png' % (crt_prefix)))
    plt.close(fig)


def use_of_brain(score_brain_use, request_id, crt_prefix, language='Korean'):
    if language == 'Korean':
        font_location = './resource/font/NanumSquareBold.ttf'
        fontprop = fm.FontProperties(fname=font_location)

    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)

    im1 = Image.open('resource/img/brain-side-outline.png')
    im2 = Image.open('resource/img/brain-side-fill.png')
    im1 = im1.resize((im2.size[0] + 2, im2.size[1] + 5))

    im1 = np.array(im1)
    im2 = np.array(im2)

    if score_brain_use < 0.1:
        score_brain_use = 0.09
    elif score_brain_use > 0.9:
        score_brain_use = 0.91

    im2[:int(im2.shape[0] * (1 - score_brain_use))] = 1.

    if int(score_brain_use * 100) < 10:
        x_percent_coord_offset = 2
    elif int(score_brain_use * 100) > 99:
        x_percent_coord_offset = 2
    else:
        x_percent_coord_offset = 2

    fig, ax = plt.subplots(figsize=(8, 3))
    ax.axis('off')
    ax.imshow(im2, origin='lower')
    ax.imshow(im1)
    if score_brain_use < 0.1:
        ax.text(440, 80, '%d' % 10, fontsize=30)
        ax.text(440 + x_percent_coord_offset * 45, 78, '% 미만', fontsize=20, color='#b5b5bc', fontproperties=fontprop)
    elif score_brain_use > 0.9:
        ax.text(440, 80, '%d' % 90, fontsize=30)
        ax.text(440 + x_percent_coord_offset * 45, 78, '% 초과', fontsize=20, color='#b5b5bc', fontproperties=fontprop)
    else:
        ax.text(440, 80, '%d' % int(score_brain_use * 100), fontsize=30)
        ax.text(440 + x_percent_coord_offset * 45, 78, '%', fontsize=20, color='#b5b5bc')

    ax.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.

    fig.canvas.draw()
    npa = fig.canvas.renderer._renderer
    tmp = np.array(npa)
    img = Image.fromarray(tmp[:, 250:-140])
    img.save(path_fig / Path('%s_brain_use.png' % (crt_prefix)))
    plt.close(fig)


def type_idx(idx_score, index_type, request_id, crt_prefix, language='Korean'):
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)

    if language == 'Korean':
        font_location = './resource/font/NanumSquareBold.ttf'
        fontprop = fm.FontProperties(fname=font_location)
        very_low_text = '매우낮음'
        low_text = '낮음'
        medium_text = '보통'
        high_text = '높음'
        very_high_text = '매우높음'

        key_text_dict = {'stress': '스트레스',
                         'concentration': '집중도',
                         'cognition': '인지능력'}

        idx_desc_text = '%s 지수가 백분위 %d%%%s 수준입니다.'

    else:
        font_location = './resource/font/KosugiMaru-Regular.ttf'
        fontprop = fm.FontProperties(fname=font_location)
        very_low_text = 'とても低い'
        low_text = '低い'
        medium_text = '普通'
        high_text = '高い'
        very_high_text = 'とても高い'

        key_text_dict = {'stress': 'ストレス',
                         'concentration': '集中度',
                         'cognition': '認知能力'}

        idx_desc_text = '指数が百分率の%d%%レベルです。'

    level_define_var = [(very_low_text, 0., 0.1), (low_text, 0.1, 0.3), (medium_text, 0.3, 0.7), (high_text, 0.7, 0.9),
                        (very_high_text, 0.9, 1.)]
    color_define_var = ['#ff3254', '#f49242', '#f3f012', '#62ef5d', '#5bc6ea']

    fig, ax = plt.subplots(1, 1, figsize=(8, 2))

    if int(idx_score * 100) < 10:
        x_percent_coord_offset_info = 2
    elif int(idx_score * 100) > 99:
        x_percent_coord_offset_info = 2
    else:
        x_percent_coord_offset_info = 2

    if idx_score < 0.1:
        level_idx = 0
        idx_score = 0.09
    elif idx_score < 0.3:
        level_idx = 1
    elif idx_score < 0.7:
        level_idx = 2
    elif idx_score > 0.9:
        level_idx = 4
        idx_score = 0.91
    else:
        level_idx = 3

    ax.barh(0.1, 1., height=0.3, color='#eaeaea')

    if index_type != 'stress':
        ax.barh(0.1, idx_score, height=0.3, color=color_define_var[level_idx])
    else:
        ax.barh(0.1, idx_score, height=0.3, color=color_define_var[4 - level_idx])

    ax.set_xlim(0, 1)
    ax.set_ylim(-1, 1)
    ax.axis('off')

    if idx_score < 0.1:
        ax.text(0, 0.6, idx_desc_text % (key_text_dict[index_type], 10, '미만'), fontproperties=fontprop,
                color='#576881', verticalalignment='center',
                fontsize=13)

        ax.text(0.8, 0.65, 10, color='#000000', verticalalignment='center',
                horizontalalignment='left', fontsize=24)

        ax.text(0.8 + x_percent_coord_offset_info * 0.038, 0.6, '% 미만', fontproperties=fontprop, color='#b5b5bc',
                verticalalignment='center', fontsize=15)

    elif idx_score > 0.9:
        ax.text(0, 0.6, idx_desc_text % (key_text_dict[index_type], 90, '초과'), fontproperties=fontprop,
                color='#576881', verticalalignment='center',
                fontsize=13)

        ax.text(0.8, 0.65, 90, color='#000000', verticalalignment='center',
                horizontalalignment='left', fontsize=24)

        ax.text(0.8 + x_percent_coord_offset_info * 0.038, 0.6, '% 초과', fontproperties=fontprop, color='#b5b5bc',
                verticalalignment='center', fontsize=15)

    else:
        ax.text(0, 0.6, idx_desc_text % (key_text_dict[index_type], int(100 * idx_score), ''), fontproperties=fontprop,
                color='#576881', verticalalignment='center',
                fontsize=13)

        ax.text(0.8, 0.65, '%d' % int(100 * idx_score), color='#000000', verticalalignment='center',
                horizontalalignment='left', fontsize=24)

        ax.text(0.8 + x_percent_coord_offset_info * 0.038, 0.6, '%', fontproperties=fontprop, color='#b5b5bc',
                verticalalignment='center', fontsize=15)

    for i in range(level_define_var.__len__()):
        if i == level_idx:
            ax.text((level_define_var[i][1] + level_define_var[i][2]) / 2, -0.3, level_define_var[i][0],
                    fontproperties=fontprop, verticalalignment='center',
                    horizontalalignment='center', color='#000000', fontsize=12)
        else:
            ax.text((level_define_var[i][1] + level_define_var[i][2]) / 2, -0.3, level_define_var[i][0],
                    fontproperties=fontprop, verticalalignment='center',
                    horizontalalignment='center', color='#576881', fontsize=12)

        line_marker = plt.Polygon(((level_define_var[i][1], -0.1), (level_define_var[i][1], 0.3)), color='#ffffff')
        ax.add_artist(line_marker)

    fig.canvas.draw()
    npa = fig.canvas.renderer._renderer
    tmp = np.array(npa)
    img = Image.fromarray(tmp[30:150, 50:-50])
    img.save(path_fig / Path(crt_prefix + '_' + index_type + ".png"))
    plt.close(fig)


def memory_operate(alpha_score, request_id, crt_prefix, language='Korean'):
    if language == 'Korean':
        font_location = './resource/font/NanumSquareBold.ttf'
        fontprop = fm.FontProperties(fname=font_location)
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)
    font_location = './resource/font/NanumSquareBold.ttf'
    fontprop = fm.FontProperties(fname=font_location)
    level_define_var = ['매우낮음', '낮음', '표준', '높음', '매우높음']
    level_define_var_color = ['#6dc6bd33', '#6dc6bd66', '#6dc6bd99', '#6dc6bdcc', '#6dc6bd']
    fig, ax = plt.subplots(1, 1)

    if alpha_score < 0.2:
        level_idx = 0
    elif alpha_score < 0.4:
        level_idx = 1
    elif alpha_score < 0.6:
        level_idx = 2
    elif alpha_score < 0.8:
        level_idx = 3
    else:
        level_idx = 4

    if int(alpha_score * 100) < 10:
        x_percent_coord_offset_info = 1
    elif int(alpha_score * 100) > 99:
        x_percent_coord_offset_info = 3
    else:
        x_percent_coord_offset_info = 2

    ax.axis('off')
    ax.set_ylim(0, 0.8)
    ax.plot(np.linspace(norm.ppf(0.001), norm.ppf(0.999), 100),
            norm.pdf(np.linspace(norm.ppf(0.001), norm.ppf(0.999), 100)), color='black')
    line_marker = plt.Polygon(((-3.25, 0), (3.25, 0)), color='#000000', linewidth=3.)
    ax.add_artist(line_marker)
    for i in range(0, 6):
        if i != 0 or i != 5:
            line_marker = plt.Polygon(((-3.25 + 1.3 * i, 0), (-3.25 + 1.3 * i, norm.pdf(-3.25 + 1.3 * i))),
                                      color='#000000', linewidth=1.)
            ax.add_artist(line_marker)
        line_marker = plt.Polygon(((-3.25 + 1.3 * i, norm.pdf(-3.25 + 1.3 * i)), (-3.25 + 1.3 * i, norm.pdf(0) + 0.08)),
                                  color='#000000', linewidth=0.2, linestyle='--')
        ax.add_artist(line_marker)

    for i in range(level_define_var.__len__()):
        if i == level_idx:
            ax.text(-2.6 + 1.3 * i, -0.033, level_define_var[i], fontproperties=fontprop, verticalalignment='center',
                    horizontalalignment='center', color='#000000', fontsize=12)
            ax.fill_between(np.linspace(-3.25 + 1.3 * i, -3.25 + 1.3 * (i + 1), 10), norm.pdf(0) + 0.08,
                            color=level_define_var_color[0])
            ax.plot(-2.6 + 1.3 * i, norm.pdf(0) + 0.08, marker='v', color='black', markersize=12)

            ax.text(-2.6 + 1.3 * i - 0.25, norm.pdf(0) + 0.122, '%d' % int(100 * alpha_score), color='#000000',
                    verticalalignment='center', horizontalalignment='left', fontsize=14)
            ax.text(-2.6 + 1.3 * i + x_percent_coord_offset_info * 0.038, norm.pdf(0) + 0.12, '%',
                    fontproperties=fontprop, color='#b5b5bc', verticalalignment='center',
                    fontsize=11)
        else:
            ax.text(-2.6 + 1.3 * i, -0.033, level_define_var[i], fontproperties=fontprop, verticalalignment='center',
                    horizontalalignment='center', color='#b5b5bc', fontsize=12)

        ax.fill_between(np.linspace(-3.25 + 1.3 * i, -3.25 + 1.3 * (i + 1), 10),
                        norm.pdf(np.linspace(-3.25 + 1.3 * i, -3.25 + 1.3 * (i + 1), 10)),
                        color=level_define_var_color[i])

    fig.canvas.draw()
    npa = fig.canvas.renderer._renderer
    tmp = np.array(npa)
    img = Image.fromarray(tmp[170:-20, 80:-80])
    img.save(path_fig / Path('%s_memory_operate.png' % (crt_prefix)))
    plt.close(fig)


def SEF_psd_plot(f, p, alpha_peak_freq, SEF_95_freq, request_id, crt_prefix):
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)
    fig, ax = plt.subplots(1, 1, figsize=(8, 4.5))
    ax.plot(f, 20 * np.log(p + 10E-3), color='#b5b5bc')
    ax.set_xlim(0, 60)
    idx_sef = np.argmin(np.abs(f - SEF_95_freq))

    min_y = np.min(20 * np.log((p + 10E-3)[np.where((f > 1) & (f < 40))[0]])) - 20
    max_y = np.max(20 * np.log((p + 10E-3)[np.where((f > 1) & (f < 40))[0]])) + 20
    ax.get_yaxis().set_ticks([-140, -120, -100, -80, -60, -40, -20, 0, 20, 40, 60, 80, 100, 120, 140])
    ax.set_ylim(min_y, max_y)

    ax.fill_between(f[:idx_sef], 20 * np.log(p[:idx_sef] + 10E-4), min_y, color='#eaeaea')
    # ax.fill_between(np.linspace(8, 12, 20), 80, -60, color='#ff325444')
    ax.plot(f[idx_sef], 20 * np.log(p[idx_sef]), color='#639ce7', marker='o')
    ax.text(f[idx_sef] - 2, 20 * np.log(p[idx_sef]) + 5, 'SEF-95 frequency: %.1f' % SEF_95_freq, color='#639ce7',
            fontsize=12)
    ax.set_xlabel('Frequency (Hz)', fontsize=12)
    ax.set_ylabel('PSD (dB / Hz)', fontsize=12)
    ax.spines['right'].set_visible(False)
    ax.spines['top'].set_visible(False)
    ax.spines['left'].set_color('#eaeaea')
    ax.spines['bottom'].set_color('#eaeaea')
    fig.savefig(path_fig / Path('%s_psd_sef.png' % (crt_prefix)))
    plt.close(fig)


# fixme : it takes too long : 8.5
def alpha_peak_plot(psd, alpha_peak, alpha_peak_power, sfreq, request_id, crt_prefix, pos, outlines='head',
                    head_pos=None):
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)

    for ch in range(19):
        tmp_peak = alpha_peak[ch]
        tmp_power = alpha_peak_power[ch]
        fig, ax = plt.subplots(1, 1, figsize=(8, 6.0))
        ax.set_title(constants.YBRAIN_CH_LIST[ch], fontsize=20)
        x = np.linspace(0, sfreq / 2, psd[ch].shape[0])
        ax.plot(x, 20 * np.log(psd[ch] + 1E-3))
        ax.set_xlim(1, 40)
        # ax.set_ylim(-60, 80)
        min_y = np.min(20 * np.log((psd[ch] + 1E-3)[np.where((x > 1) & (x < 40))[0]])) - 20
        max_y = np.max(20 * np.log((psd[ch] + 1E-3)[np.where((x > 1) & (x < 40))[0]])) + 20
        ax.fill_between(np.linspace(8, 12, 20), max_y, min_y, color='#ff325444')
        ax.text(tmp_peak, 20 * np.log(tmp_power), '%.1f(Hz), %.1f(dB / Hz)' % (tmp_peak, 20 * np.log(tmp_power)),
                fontsize=15)
        ax.plot(tmp_peak, 20 * np.log(tmp_power), marker='o', color='red')
        ax.set_xlabel('Frequency (Hz)', fontsize=15)
        ax.set_ylabel('PSD (dB / Hz)', fontsize=15)
        ax.get_xaxis().set_ticks([1, 10, 20, 30, 40])
        ax.get_yaxis().set_ticks([-140, -120, -100, -80, -60, -40, -20, 0, 20, 40, 60, 80, 100, 120, 140])
        ax.set_ylim(min_y, max_y)
        ax.tick_params(axis='both', which='major', labelsize=20)

        fig.savefig(path_fig / Path('%s_alpha_peak_ch_%d.png' % (crt_prefix, ch)))
        plt.close(fig)
    fig, ax = plt.subplots(1, 1, figsize=(8, 6.0))
    x = np.linspace(0, sfreq / 2, psd.shape[1])
    ax.plot(x, 20 * np.log(np.mean(psd, axis=0) + 1E-3))
    ax.set_title('Total mean', fontsize=12)
    ax.set_xlim(1, 40)
    # ax.set_ylim(-60, 80)
    min_y = np.min(20 * np.log((np.mean(psd, axis=0) + 1E-3)[np.where((x > 1) & (x < 40))[0]])) - 20
    max_y = np.max(20 * np.log((np.mean(psd, axis=0) + 1E-3)[np.where((x > 1) & (x < 40))[0]])) + 20
    ax.set_xlabel('Frequency (Hz)', fontsize=15)
    ax.set_ylabel('PSD (dB / Hz)', fontsize=15)
    ax.get_xaxis().set_ticks([1, 10, 20, 30, 40])
    ax.get_yaxis().set_ticks([-140, -120, -100, -80, -60, -40, -20, 0, 20, 40, 60, 80, 100, 120, 140])
    ax.set_ylim(min_y, max_y)
    ax.tick_params(axis='both', which='major', labelsize=20)
    fig.savefig(path_fig / Path('%s_mean_psd.png' % (crt_prefix)))
    plt.close(fig)

    pos, outlines = _check_outlines(pos, outlines, head_pos)
    fig, ax = plt.subplots(1, 1, figsize=(10, 10))
    make_head_outline(ax, outlines)

    for ch in range(pos.shape[0]):
        ch_name = constants.YBRAIN_CH_LIST[ch]
        pos_x = pos[ch, 0] * 0.87 + 0.445
        pos_y = pos[ch, 1] * 0.87 + 0.445

        c_ax_tmp = ax.inset_axes([pos_x, pos_y, 0.11, 0.11])
        c_ax_tmp.get_xaxis().set_ticks([])
        c_ax_tmp.get_yaxis().set_ticks([])
        c_ax_tmp.set_xlim(1, 40)
        c_ax_tmp.set_ylim(-60, 80)
        c_ax_tmp.set_title(ch_name, fontsize=14)
        c_ax_tmp.plot(x, 20 * np.log(psd[ch] + 1E-3), linewidth=0.5)

    c_ax_tmp = ax.inset_axes([0., 0., 0.11, 0.11])

    c_ax_tmp.set_xlabel('Frequency (Hz)', fontsize=10)
    c_ax_tmp.set_ylabel('PSD (dB / Hz)', fontsize=10)
    c_ax_tmp.get_xaxis().set_ticks([1, 10, 20, 30, 40])
    c_ax_tmp.get_yaxis().set_ticks([-60, -40, -20, 0, 20, 40, 60, 80])
    c_ax_tmp.tick_params(axis='both', which='major', labelsize=10)
    c_ax_tmp.set_xlim(1, 40)
    c_ax_tmp.set_ylim(-60, 80)
    c_ax_tmp.set_title('channel name', fontsize=12)
    c_ax_tmp.plot(x, 20 * np.log(np.mean(psd, axis=0)), linewidth=0.5)

    ax.figure.savefig(path_fig / Path("%s_channel_psd" % crt_prefix + ".png"))
    plt.close(ax.figure)


def alpha_peak_plot_compare(psd_pre, psd_post, sfreq, request_id, crt_prefix, pos, outlines='head', head_pos=None):
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)
    fig, ax = plt.subplots(1, 1, figsize=(8, 6.0))
    x_pre = np.linspace(0, sfreq / 2, psd_pre.shape[1])
    line_pre, = ax.plot(x_pre, 20 * np.log(np.mean(psd_pre, axis=0) + 1E-3), color='blue', label='pre')
    x_post = np.linspace(0, sfreq / 2, psd_post.shape[1])
    line_post, = ax.plot(x_post, 20 * np.log(np.mean(psd_post, axis=0) + 1E-3), color='red', label='post')
    ax.set_title('Total mean', fontsize=12)
    ax.set_xlim(1, 40)
    ax.set_ylim(-60, 80)
    ax.legend(handles=[line_pre, line_post], loc='upper right', fontsize='x-large')
    ax.set_xlabel('Frequency (Hz)', fontsize=15)
    ax.set_ylabel('PSD (dB / Hz)', fontsize=15)
    ax.get_xaxis().set_ticks([1, 10, 20, 30, 40])
    ax.get_yaxis().set_ticks([-60, -40, -20, 0, 20, 40, 60, 80])
    ax.tick_params(axis='both', which='major', labelsize=20)
    fig.savefig(path_fig / Path('%s_mean_psd.png' % (crt_prefix)))
    plt.close(fig)

    pos, outlines = _check_outlines(pos, outlines, head_pos)
    fig, ax = plt.subplots(1, 1, figsize=(10, 10))
    make_head_outline(ax, outlines)

    for ch in range(pos.shape[0]):
        ch_name = constants.YBRAIN_CH_LIST[ch]
        pos_x = pos[ch, 0] * 0.87 + 0.445
        pos_y = pos[ch, 1] * 0.87 + 0.445

        c_ax_tmp = ax.inset_axes([pos_x, pos_y, 0.11, 0.11])
        c_ax_tmp.get_xaxis().set_ticks([])
        c_ax_tmp.get_yaxis().set_ticks([])
        c_ax_tmp.set_xlim(1, 40)
        c_ax_tmp.set_ylim(-60, 80)
        c_ax_tmp.set_title(ch_name, fontsize=14)
        c_ax_tmp.plot(x_pre, 20 * np.log(psd_pre[ch] + 1E-3), linewidth=0.5, color='blue')
        c_ax_tmp.plot(x_post, 20 * np.log(psd_post[ch] + 1E-3), linewidth=0.5, color='red')

    c_ax_tmp = ax.inset_axes([0., 0., 0.11, 0.11])

    c_ax_tmp.set_xlabel('Frequency (Hz)', fontsize=10)
    c_ax_tmp.set_ylabel('PSD (dB / Hz)', fontsize=10)
    c_ax_tmp.get_xaxis().set_ticks([1, 10, 20, 30, 40])
    c_ax_tmp.get_yaxis().set_ticks([-60, -40, -20, 0, 20, 40, 60, 80])
    c_ax_tmp.tick_params(axis='both', which='major', labelsize=10)
    c_ax_tmp.set_xlim(1, 40)
    c_ax_tmp.set_ylim(-60, 80)
    c_ax_tmp.set_title('channel name', fontsize=12)
    c_ax_tmp.plot(x_pre, 20 * np.log(np.mean(psd_pre, axis=0)), linewidth=0.5, color='blue')
    c_ax_tmp.plot(x_post, 20 * np.log(np.mean(psd_post, axis=0)), linewidth=0.5, color='red')

    ax.figure.savefig(path_fig / Path("%s_channel_psd" % crt_prefix + ".png"))
    plt.close(ax.figure)


def plot_mi_connect_line(mi, request_id, crt_prefix, pos, outlines, head_pos):
    plot_mutual_information(mi, request_id, crt_prefix)
    tmp = np.array(mi)
    for ch in range(19):
        if constants.YBRAIN_CH_LIST[ch].endswith('z'):
            tmp[ch] = -1
            tmp[:, ch] = -1
    tmp = tmp.flatten()
    tmp.sort()
    idx = np.where(mi >= tmp[-60])
    con_list = []
    for i in range(idx[0].shape[0]):
        if constants.YBRAIN_CH_LIST[idx[0][i]].endswith('z') or constants.YBRAIN_CH_LIST[idx[1][i]].endswith('z'):
            continue
        con_list.append((idx[0][i], idx[1][i]))
    plot_connectivity_line(con_list, pos, outlines, head_pos, request_id, crt_prefix)


def plot_mutual_information(mi, request_id, crt_prefix):
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)
    tmp_ch_list = ['Fp1', 'F7', 'F3', 'T3', 'C3', 'T5', 'P3', 'O1', 'Fz', 'Cz', 'Pz', 'Fp2', 'F8', 'F4', 'T4', 'C4', 'T6', 'P4', 'O2']
    fig, ax = plt.subplots(1, 1, figsize=(5, 5))
    tmp_mi = np.zeros([19, 19])
    for ch1 in range(19):
        for ch2 in range(19):
            tmp_mi[ch1, ch2] = mi[
                constants.YBRAIN_CH_LIST.index(tmp_ch_list[ch1]), constants.YBRAIN_CH_LIST.index(tmp_ch_list[ch2])]
    ax.imshow(tmp_mi, cmap='gray')
    ax.axis('off')
    for ch in range(19):
        ax.text(ch, -1, '%s' % tmp_ch_list[ch], horizontalalignment='center', verticalalignment='center', fontsize=9)
        ax.text(-1.2, ch, '%s' % tmp_ch_list[ch], horizontalalignment='center', verticalalignment='center', fontsize=10)
    fig.savefig(path_fig / Path('%s_mi.png' % (crt_prefix)))
    plt.close(fig)


def plot_connectivity_line(ch_set, pos, outlines, head_pos, request_id, crt_prefix):
    path_fig = Path(cfg.OUT_DIR, request_id)
    path_fig.mkdir(exist_ok=True, parents=True)
    pos, outlines = _check_outlines(pos, outlines, head_pos)
    fig, ax = plt.subplots(1, 1, figsize=(5, 5))
    make_head_outline(ax, outlines)

    for ch in range(pos.shape[0]):
        plt.plot(pos[ch, 0], pos[ch, 1], marker='o', color='black')

    for con_set in ch_set:
        plt.plot([pos[con_set[0], 0], pos[con_set[1], 0]], [pos[con_set[0], 1], pos[con_set[1], 1]], color='black')

    fig.savefig(path_fig / Path('%s_connectivity_line.png' % (crt_prefix)))
    plt.close(fig)
