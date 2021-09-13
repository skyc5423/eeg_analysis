import numpy as np
from reportlab.lib.pagesizes import A4
from reportlab.pdfgen import canvas
from abs_y_report import YReport
import logging
import os
from pathlib import Path
from config.cfg import cfg

LOG_FORMAT = ('%(levelname) -10s %(asctime)s %(name) -30s %(funcName) '
              '-35s %(lineno) -5d: %(message)s')
LOGGER = logging.getLogger(__name__)


class YReportAnalysis(YReport):

    def __init__(self, request_id, info_crt, original_file=None, language='Korean'):
        super().__init__(request_id, info_crt, info_cmp=None, original_file=original_file, language=language)

        self.path = Path(cfg.OUT_DIR, request_id)
        self.path.mkdir(exist_ok=True, parents=True)
        self.path_report = str(self.path / Path('y_report.pdf'))
        self.c = canvas.Canvas(self.path_report, pagesize=A4, bottomup=True)

        self.c.setPageSize(A4)

        if original_file is not None:
            self.concat_file(original_file)

    def appendix_page(self):
        self.c.showPage()
        self.set_template()
        self.make_text(self.const.INTRO_TITLE_TEXT, self.const.INTRO_TITLE_TEXT_X, self.const.INTRO_TITLE_TEXT_Y, self.const.INTRO_TITLE_TEXT_SIZE,
                       self.const.INTRO_TITLE_TEXT_COLOR, self.const.INTRO_TITLE_TEXT_TYPE)

        self.make_rectangle_double(self.const.INTRO_BRAIN_REC_X, self.const.INTRO_BRAIN_REC_Y - 250)
        self.make_text(self.const.INTRO_BRAIN_TEXT, self.const.INTRO_BRAIN_TEXT_X, self.const.INTRO_BRAIN_TEXT_Y - 250, self.const.INTRO_BRAIN_TEXT_SIZE,
                       self.const.INTRO_BRAIN_TEXT_COLOR, self.const.INTRO_BRAIN_TEXT_TYPE)
        self.make_img(self.const.INTRO_BRAIN_IMG, self.const.INTRO_BRAIN_IMG_X, self.const.INTRO_BRAIN_IMG_Y - 250, self.const.INTRO_BRAIN_IMG_W, self.const.INTRO_BRAIN_IMG_H)

        self.make_rectangle_double(self.const.INTRO_VIEW_REC_X, self.const.INTRO_VIEW_REC_Y - 250)
        self.make_text(self.const.INTRO_VIEW_TEXT, self.const.INTRO_VIEW_TEXT_X, self.const.INTRO_VIEW_TEXT_Y - 250, self.const.INTRO_VIEW_TEXT_SIZE,
                       self.const.INTRO_VIEW_TEXT_COLOR,
                       self.const.INTRO_VIEW_TEXT_TYPE)
        self.make_img(self.const.INTRO_VIEW_IMG, self.const.INTRO_VIEW_IMG_X, self.const.INTRO_VIEW_IMG_Y - 250, self.const.INTRO_VIEW_IMG_W, self.const.INTRO_VIEW_IMG_H)

        self.c.showPage()
        self.set_template()
        self.make_text(self.const.INTRO_TITLE_TEXT, self.const.INTRO_TITLE_TEXT_X, self.const.INTRO_TITLE_TEXT_Y, self.const.INTRO_TITLE_TEXT_SIZE,
                       self.const.INTRO_TITLE_TEXT_COLOR, self.const.INTRO_TITLE_TEXT_TYPE)

        self.make_rectangle_double(self.const.INTRO_FREQUENCY_REC_X, self.const.INTRO_FREQUENCY_REC_Y - 250)
        self.make_text(self.const.INTRO_FREQUENCY_TEXT, self.const.INTRO_FREQUENCY_TEXT_X, self.const.INTRO_FREQUENCY_TEXT_Y - 250, self.const.INTRO_FREQUENCY_TEXT_SIZE,
                       self.const.INTRO_FREQUENCY_TEXT_COLOR, self.const.INTRO_FREQUENCY_TEXT_TYPE)
        self.make_img(self.const.INTRO_FREQUENCY_IMG, self.const.INTRO_FREQUENCY_IMG_X, self.const.INTRO_FREQUENCY_IMG_Y - 250, self.const.INTRO_FREQUENCY_IMG_W,
                      self.const.INTRO_FREQUENCY_IMG_H)

        self.make_rectangle_double(self.const.INTRO_GRAPH_REC_X, self.const.INTRO_GRAPH_REC_Y - 250)
        self.make_text(self.const.INTRO_GRAPH_TEXT, self.const.INTRO_GRAPH_TEXT_X, self.const.INTRO_GRAPH_TEXT_Y - 250, self.const.INTRO_GRAPH_TEXT_SIZE,
                       self.const.INTRO_GRAPH_TEXT_COLOR, self.const.INTRO_GRAPH_TEXT_TYPE)
        self.make_img(self.const.INTRO_GRAPH_IMG, self.const.INTRO_GRAPH_IMG_X, self.const.INTRO_GRAPH_IMG_Y - 250, self.const.INTRO_GRAPH_IMG_W, self.const.INTRO_GRAPH_IMG_H)

        self.make_rectangle_double(self.const.INTRO_MONTAGE_REC_X, self.const.INTRO_MONTAGE_REC_Y - 250)
        self.make_text(self.const.INTRO_MONTAGE_TEXT, self.const.INTRO_MONTAGE_TEXT_X, self.const.INTRO_MONTAGE_TEXT_Y - 250, self.const.INTRO_MONTAGE_TEXT_SIZE,
                       self.const.INTRO_MONTAGE_TEXT_COLOR, self.const.INTRO_MONTAGE_TEXT_TYPE)
        self.make_img(self.const.INTRO_MONTAGE_IMG, self.const.INTRO_MONTAGE_IMG_X, self.const.INTRO_MONTAGE_IMG_Y - 250, self.const.INTRO_MONTAGE_IMG_W,
                      self.const.INTRO_MONTAGE_IMG_H)

        self.c.showPage()
        self.set_template()

        self.make_text(self.const.INTRO_TITLE_TEXT, self.const.INTRO_TITLE_TEXT_X, self.const.INTRO_TITLE_TEXT_Y, self.const.INTRO_TITLE_TEXT_SIZE,
                       self.const.INTRO_TITLE_TEXT_COLOR, self.const.INTRO_TITLE_TEXT_TYPE)

        self.make_rectangle_double(self.const.INTRO_MONTAGE_REC_X, self.const.INTRO_FREQUENCY_REC_Y - 250)
        self.make_text(self.const.APPENDIX_ANALYSIS_TEXT, self.const.INTRO_BRAIN_TEXT_X, self.const.INTRO_BRAIN_TEXT_Y - 250, self.const.INTRO_BRAIN_TEXT_SIZE,
                       self.const.INTRO_BRAIN_TEXT_COLOR, self.const.INTRO_BRAIN_TEXT_TYPE)
        self.make_img(self.const.APPENDIX_ANALYSIS_IMG, self.const.APPENDIX_ANALYSIS_IMG_X, self.const.APPENDIX_ANALYSIS_IMG_Y, self.const.APPENDIX_ANALYSIS_IMG_W,
                      self.const.APPENDIX_ANALYSIS_IMG_H)

        return

    def appendix_feature_page(self, raw_data_dict):
        self.c.showPage()
        self.set_template()
        self.make_text(self.const.INTRO_TITLE_TEXT, self.const.INTRO_TITLE_TEXT_X, self.const.INTRO_TITLE_TEXT_Y, self.const.INTRO_TITLE_TEXT_SIZE,
                       self.const.INTRO_TITLE_TEXT_COLOR, self.const.INTRO_TITLE_TEXT_TYPE)

        cur_y = self.const.APP_FEATURE_TABLE_Y
        our_ch_list = ['Fp1', 'F7', 'T3', 'T5', 'T6', 'T4', 'F8', 'Fp2', 'F4', 'C4', 'P4', 'O2', 'Pz', 'Fz', 'Cz', 'O1', 'P3', 'C3', 'F3']

        for feature in raw_data_dict.keys():
            if feature in ['coherence', 'asymmetry']:
                for band in raw_data_dict[feature].keys():
                    data_app = raw_data_dict[feature][band]
                    data = list(our_ch_list)
                    data.insert(0, feature + '_' + band)
                    data = [data]
                    for ch in range(data_app.shape[0]):
                        tmp_data = data[0][ch + 1]
                        tmp_list = list(data_app[ch].round(2))
                        tmp_list.insert(0, tmp_data)
                        data.append(tmp_list)
                    app_feature_table_w = [self.const.APP_FEATURE_TABLE_W * 3]
                    app_feature_table_h = []
                    for w in range(data[0].__len__() - 1):
                        app_feature_table_w.append(self.const.APP_FEATURE_TABLE_W)
                    for h in range(data.__len__()):
                        app_feature_table_h.append(self.const.APP_FEATURE_TABLE_H)

                    cur_y -= (sum(app_feature_table_h) + 20)
                    if cur_y <= 200:
                        self.c.showPage()
                        self.set_template()
                        self.make_text(self.const.INTRO_TITLE_TEXT, self.const.INTRO_TITLE_TEXT_X, self.const.INTRO_TITLE_TEXT_Y, self.const.INTRO_TITLE_TEXT_SIZE,
                                       self.const.INTRO_TITLE_TEXT_COLOR, self.const.INTRO_TITLE_TEXT_TYPE)
                        cur_y = self.const.APP_FEATURE_TABLE_Y
                        cur_y -= (sum(app_feature_table_h) + 20)

                    self.make_table(data, self.const.APP_FEATURE_TABLE_X, cur_y, app_feature_table_w, app_feature_table_h,
                                    self.const.APP_FEATURE_TABLE_STYLE)

            elif feature in ['abs_power', 'rel_power', 'rat_power']:
                data = list(our_ch_list)
                data.insert(0, feature)
                data = [data]
                for band in raw_data_dict[feature].keys():
                    tmp_data = list(np.where(raw_data_dict[feature][band] >= 10, raw_data_dict[feature][band].round(1), raw_data_dict[feature][band].round(2)))
                    tmp_data.insert(0, band)
                    data.append(tmp_data)
                app_feature_table_w = [self.const.APP_FEATURE_TABLE_W * 3]
                app_feature_table_h = []
                for w in range(data[0].__len__() - 1):
                    app_feature_table_w.append(self.const.APP_FEATURE_TABLE_W)
                for h in range(data.__len__()):
                    app_feature_table_h.append(self.const.APP_FEATURE_TABLE_H)

                cur_y -= (sum(app_feature_table_h) + 20)
                if cur_y <= 200:
                    self.c.showPage()
                    self.set_template()
                    self.make_text(self.const.INTRO_TITLE_TEXT, self.const.INTRO_TITLE_TEXT_X, self.const.INTRO_TITLE_TEXT_Y, self.const.INTRO_TITLE_TEXT_SIZE,
                                   self.const.INTRO_TITLE_TEXT_COLOR, self.const.INTRO_TITLE_TEXT_TYPE)
                    cur_y = self.const.APP_FEATURE_TABLE_Y
                    cur_y -= (sum(app_feature_table_h) + 20)

                self.make_table(data, self.const.APP_FEATURE_TABLE_X, cur_y, app_feature_table_w, app_feature_table_h,
                                self.const.APP_FEATURE_TABLE_STYLE)

    def psd_ch_page(self, crt_prefix='crt'):
        self.c.showPage()
        self.make_text(self.const.PSD_TITLE_TEXT, self.const.PSD_TITLE_TEXT_X, self.const.PSD_TITLE_TEXT_Y, self.const.PSD_TITLE_TEXT_SIZE, self.const.PSD_TITLE_TEXT_COLOR,
                       self.const.PSD_TITLE_TEXT_TYPE)

        self.make_text(self.const.PSD_DESC_TEXT, self.const.PSD_DESC_TEXT_X, self.const.PSD_DESC_TEXT_Y, self.const.PSD_DESC_TEXT_SIZE, self.const.PSD_DESC_TEXT_COLOR,
                       self.const.PSD_DESC_TEXT_TYPE, w=self.const.PSD_DESC_TEXT_W)

        self.make_img(self.path / Path(self.const.PSD_CHANNEL_IMG % (crt_prefix)), self.const.PSD_CHANNEL_IMG_X, self.const.PSD_CHANNEL_IMG_Y, self.const.PSD_CHANNEL_IMG_W,
                      self.const.PSD_CHANNEL_IMG_H)
        self.make_img(self.path / Path(self.const.PSD_MEAN_IMG % (crt_prefix)), self.const.PSD_MEAN_IMG_X, self.const.PSD_MEAN_IMG_Y, self.const.PSD_MEAN_IMG_W,
                      self.const.PSD_MEAN_IMG_H)
        self.set_template()

    def alpha_peak_page(self):
        self.c.showPage()
        self.make_text(self.const.PEAK_TITLE_TEXT, self.const.PEAK_TITLE_TEXT_X, self.const.PEAK_TITLE_TEXT_Y, self.const.PEAK_TITLE_TEXT_SIZE, self.const.PEAK_TITLE_TEXT_COLOR,
                       self.const.PEAK_TITLE_TEXT_TYPE)

        self.make_text(self.const.PEAK_DESC_TEXT, self.const.PEAK_DESC_TEXT_X, self.const.PEAK_DESC_TEXT_Y, self.const.PEAK_DESC_TEXT_SIZE, self.const.PEAK_DESC_TEXT_COLOR,
                       self.const.PEAK_DESC_TEXT_TYPE, w=self.const.PEAK_DESC_TEXT_W)

        self.make_img(self.path / Path(self.const.PEAK_O1_IMG), self.const.PEAK_O1_IMG_X, self.const.PEAK_IMG_Y, self.const.PEAK_IMG_W, self.const.PEAK_IMG_H)
        self.make_img(self.path / Path(self.const.PEAK_O2_IMG), self.const.PEAK_O2_IMG_X, self.const.PEAK_IMG_Y, self.const.PEAK_IMG_W, self.const.PEAK_IMG_H)

        self.make_line(self.const.FEATURE_NO_DESC_LINE_X, self.const.FEATURE_NO_DESC_LINE_1_Y, self.const.FEATURE_NO_DESC_LINE_W, self.const.FEATURE_NO_DESC_LINE_H,
                       self.const.FEATURE_NO_DESC_LINE_T, self.const.FEATURE_NO_DESC_LINE_COLOR,
                       self.const.FEATURE_NO_DESC_LINE_DOT)

        h = self.const.FEATURE_NO_DESC_LINE_1_Y + 100

        # h = self.make_text(
        #     self.const.ALPHA_PEAK_DESC_TEXT,
        #     self.const.X_LIM * 0.1, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
        #     self.const.ALPHA_PEAK_DESC_FONT, w=self.const.X_LIM * 0.75)

        self.set_template()

    def draw_survey_graph(self, parsed_survey, y_start):
        spec = parsed_survey['survey_spec']
        level_min = parsed_survey['min_level']
        level_max = parsed_survey['max_level']
        range_num = spec.__len__()
        score = parsed_survey['score']
        level = parsed_survey['level']
        low_good = parsed_survey['low_good']
        if low_good is None:
            low_good = True

        unit_bar_len = self.const.SURVEY_TOTAL_BAR_LENGTH / range_num

        self.make_line(self.const.SURVEY_BAR_X, y_start, self.const.SURVEY_TOTAL_BAR_LENGTH, 0, line_thick=self.const.SURVEY_BAR_T, line_color=self.const.SURVEY_TOTAL_BAR_COLOR,
                       line_dot=False)

        if level == level_min:
            if low_good:
                survey_score_bar_color = self.const.SURVEY_SCORE_BAR_COLOR_BLUE
            else:
                survey_score_bar_color = self.const.SURVEY_SCORE_BAR_COLOR_RED
        elif level == level_max:
            if low_good:
                survey_score_bar_color = self.const.SURVEY_SCORE_BAR_COLOR_RED
            else:
                survey_score_bar_color = self.const.SURVEY_SCORE_BAR_COLOR_BLUE
        else:
            survey_score_bar_color = self.const.SURVEY_SCORE_BAR_COLOR_GREEN

        self.c.setFillColor(survey_score_bar_color)
        for i in range(level):
            if i == level - 1:
                if level == 1:
                    add_color_bar_len = unit_bar_len / (spec[i]['max'] - spec[i]['min'])
                    self.make_line(self.const.SURVEY_BAR_X + unit_bar_len * i, y_start, add_color_bar_len * (score - spec[i]['min']), 0, line_thick=self.const.SURVEY_BAR_T,
                                   line_color=survey_score_bar_color, line_dot=False)
                else:
                    add_color_bar_len = unit_bar_len / (spec[i]['max'] - spec[i]['min'] + 1)
                    self.make_line(self.const.SURVEY_BAR_X + unit_bar_len * i, y_start, add_color_bar_len * (score - spec[i]['min'] + 1), 0, line_thick=self.const.SURVEY_BAR_T,
                                   line_color=survey_score_bar_color, line_dot=False)
            else:
                self.make_line(self.const.SURVEY_BAR_X + unit_bar_len * i, y_start, unit_bar_len, 0, line_thick=self.const.SURVEY_BAR_T, line_color=survey_score_bar_color,
                               line_dot=False)

        level_label_text_x_offset = unit_bar_len / 2 * np.arange(-range_num + 1, range_num, 2)
        for level_idx in range(range_num):
            if type(spec[level_idx]['min']) == type(0):
                level_label_text = self.const.SURVEY_LEVEL_LABEL_TEXT_INT % (level_idx + 1, spec[level_idx]['min'], spec[level_idx]['max'])
            else:
                level_label_text = self.const.SURVEY_LEVEL_LABEL_TEXT_FLOAT % (level_idx + 1, spec[level_idx]['min'], spec[level_idx]['max'])
            level_label_text_x = self.const.SURVEY_LEVEL_LABEL_TEXT_X + level_label_text_x_offset[level_idx]
            level_label_text_y = y_start + self.const.SURVEY_LEVEL_LABEL_TEXT_Y_OFFSET
            self.make_text(level_label_text, level_label_text_x, level_label_text_y, self.const.SURVEY_LEVEL_LABEL_TEXT_SIZE, self.const.SURVEY_LEVEL_LABEL_TEXT_COLOR,
                           self.const.SURVEY_LEVEL_LABEL_TEXT_TYPE,
                           orientation='CENTER')

    def surveys_page(self, surveys, subject, for_eeg=False):
        parsed_surveys = self.parse_survey(surveys)

        self.c.showPage()
        self.set_template()
        self.make_text(self.const.SURVEY_TITLE_TEXT, self.const.PSD_TITLE_TEXT_X, self.const.PSD_TITLE_TEXT_Y, self.const.PSD_TITLE_TEXT_SIZE, self.const.PSD_TITLE_TEXT_COLOR,
                       self.const.PSD_TITLE_TEXT_TYPE)

        if not for_eeg:
            data_patient_1 = [[self.const.COVER_NAME_TEXT, subject['name']],
                              ['ID', subject['id']],
                              [self.const.COVER_AGE_TEXT, subject['age']]]
            data_patient_2 = [[self.const.COVER_GENDER_TEXT, subject['gender']],
                              [self.const.COVER_HAND_TEXT, subject['handedness']]]

            self.make_table(data_patient_1, self.const.SUM_PAT_INFO_TABLE_X, self.const.SUM_PAT_INFO_TABLE_Y + 25,
                            self.const.SUM_PAT_INFO_TABLE_W, self.const.SUM_PAT_INFO_TABLE_H,
                            self.const.SUM_PAT_INFO_TABLE_STYLE)
            self.make_table(data_patient_2, self.const.SUM_PAT_INFO_TABLE_X + self.const.SUM_PAT_INFO_TABLE_W[0] +
                            self.const.SUM_PAT_INFO_TABLE_W[1] + 10,
                            self.const.SUM_PAT_INFO_TABLE_Y + 25, self.const.SUM_PAT_INFO_TABLE_W,
                            self.const.SUM_PAT_INFO_TABLE_H_2,
                            self.const.SUM_PAT_INFO_TABLE_STYLE)

        cur_y = self.const.INTRO_REC_2_Y + self.const.INTRO_REC_2_H + 400
        main_comment_after = None

        for idx in range(parsed_surveys.__len__()):
            # if idx == 1:
            #     break
            if parsed_surveys[idx]['is_main'] and idx != 0:
                if main_comment_after is not None:
                    cur_y = self.make_text(main_comment_after,
                                           self.const.SURVEY_COMMENT_TEXT_X, cur_y, self.const.SURVEY_COMMENT_TEXT_SIZE, self.const.SURVEY_COMMENT_TEXT_COLOR,
                                           self.const.SURVEY_COMMENT_TEXT_TYPE, w=self.const.SURVEY_COMMENT_TEXT_W)
                cur_y = self.new_page_assertion(cur_y, 50)
                self.make_line(self.const.SURVEY_COMMENT_LINE_X, cur_y + 50, self.const.SURVEY_COMMENT_LINE_W, 0, line_thick=self.const.SURVEY_COMMENT_LINE_T,
                               line_color=self.const.SURVEY_COMMENT_LINE_COLOR, line_dot=False)
                cur_y += 100

            cur_y = self.new_page_assertion(cur_y, 100)
            self.make_rectangle_double(self.const.SURVEY_REC_X, cur_y + 15)
            self.make_text(parsed_surveys[idx]['name'], self.const.SURVEY_NAME_TEXT_X, cur_y, self.const.SURVEY_NAME_TEXT_SIZE, self.const.SURVEY_NAME_TEXT_COLOR,
                           self.const.SURVEY_NAME_TEXT_TYPE)

            cur_y += 200

            if 'survey_spec' in parsed_surveys[idx].keys():
                if parsed_surveys[idx]['survey_spec'] is not None:
                    cur_y = self.new_page_assertion(cur_y, 150)
                    self.draw_survey_graph(parsed_surveys[idx], cur_y)
                    cur_y += 150

            if 'comment' in parsed_surveys[idx].keys() and parsed_surveys[idx]['comment'] is not None:
                comment_spl = parsed_surveys[idx]['comment'].split('LSM')
                if parsed_surveys[idx]['is_main']:
                    comment_after = None
                    if comment_spl.__len__() == 1:
                        main_comment_after = None
                    else:
                        main_comment_after = comment_spl[1]
                else:
                    if comment_spl.__len__() == 1:
                        comment_after = None
                    else:
                        comment_after = comment_spl[1]
                comment_before = comment_spl[0]

                if comment_before is not None:
                    if type(parsed_surveys[idx]['score']) == type(0):
                        cur_y = self.make_text(
                            comment_before.replace('%', '%%').replace('#', '<font color="{color}">%d</font>').format(color=self.const.Y_RED_TEXT) % parsed_surveys[idx][
                                'score'],
                            self.const.SURVEY_COMMENT_TEXT_X, cur_y, self.const.SURVEY_COMMENT_TEXT_SIZE, self.const.SURVEY_COMMENT_TEXT_COLOR,
                            self.const.SURVEY_COMMENT_TEXT_TYPE, w=self.const.SURVEY_COMMENT_TEXT_W)
                    else:
                        cur_y = self.make_text(
                            comment_before.replace('%', '%%').replace('#', '<font color="{color}">%.2f</font>').format(color=self.const.Y_RED_TEXT) %
                            parsed_surveys[idx][
                                'score'],
                            self.const.SURVEY_COMMENT_TEXT_X, cur_y, self.const.SURVEY_COMMENT_TEXT_SIZE, self.const.SURVEY_COMMENT_TEXT_COLOR,
                            self.const.SURVEY_COMMENT_TEXT_TYPE, w=self.const.SURVEY_COMMENT_TEXT_W)
                    cur_y += 30
                if comment_after is not None:
                    cur_y = self.make_text(comment_after,
                                           self.const.SURVEY_COMMENT_TEXT_X, cur_y, self.const.SURVEY_COMMENT_TEXT_SIZE, self.const.SURVEY_COMMENT_TEXT_COLOR,
                                           self.const.SURVEY_COMMENT_TEXT_TYPE, w=self.const.SURVEY_COMMENT_TEXT_W)

                # cur_y += comment_h / self.const.UNIT_PIXEL + 100

            if 'additions' in parsed_surveys[idx].keys() and parsed_surveys[idx]['additions'] is not None:
                data_table = []
                table_height = []
                cur_key_num = 0
                for key_value in parsed_surveys[idx]['additions']:
                    sliced_key = ''
                    iter_num_key = int((str(key_value['key']).__len__() - 1) / 25)
                    for len_key in range(iter_num_key):
                        sliced_key += str(key_value['key'])[len_key * 25:(len_key + 1) * 25] + '\n'
                    sliced_key += str(key_value['key'])[iter_num_key * 25:]

                    sliced_value = ''
                    iter_num_value = int((str(key_value['value']).__len__() - 1) / 25)
                    for len_value in range(iter_num_value):
                        sliced_value += str(key_value['value'])[len_value * 25:(len_value + 1) * 25] + '\n'
                    sliced_value += str(key_value['value'])[iter_num_value * 25:]

                    cur_key_num += (np.max([iter_num_key, iter_num_value]) + 1)

                    if cur_y + cur_key_num * 20 / self.const.UNIT_PIXEL + 100 > self.const.SURVEY_DESC_TEXT_Y_1:
                        if data_table.__len__() > 0:

                            crt_table_w = [self.const.SUM_PAT_INFO_TABLE_W[0], self.const.SUM_PAT_INFO_TABLE_W[1]]
                            col_1, col_2 = 0, 0
                            for d in data_table:
                                key_len = np.min([str(d[0]).__len__(), 25])
                                value_len = np.min([str(d[1]).__len__(), 25])
                                if key_len > col_1:
                                    col_1 = key_len
                                if value_len > col_2:
                                    col_2 = value_len
                            crt_table_w[0] += np.max(int(col_1 / 5 - 1), 0) * self.const.SUM_PAT_INFO_TABLE_W[0] / 4
                            crt_table_w[1] += np.max(int(col_2 / 5 - 1), 0) * self.const.SUM_PAT_INFO_TABLE_W[1] / 4
                            self.make_table(data_table, self.const.SUM_PAT_INFO_TABLE_X, (self.const.Y_LIM - cur_y) * self.const.UNIT_PIXEL - np.sum(table_height),
                                            crt_table_w, table_height,
                                            self.const.SURVEY_TABLE_STYLE)
                        data_table = []
                        table_height = []
                        cur_y = self.new_page_assertion(cur_y, cur_key_num * 20 / self.const.UNIT_PIXEL + 100)
                        cur_key_num = 0

                    data_addition = [sliced_key, sliced_value]
                    data_table.append(data_addition)
                    table_height.append(20. * (np.max([iter_num_key, iter_num_value]) + 1))

                crt_table_w = [self.const.SUM_PAT_INFO_TABLE_W[0], self.const.SUM_PAT_INFO_TABLE_W[1]]
                col_1, col_2 = 0, 0
                for d in data_table:
                    key_len = np.min([str(d[0]).__len__(), 25])
                    value_len = np.min([str(d[1]).__len__(), 25])
                    if key_len > col_1:
                        col_1 = key_len
                    if value_len > col_2:
                        col_2 = value_len
                crt_table_w[0] += np.max(int(col_1 / 5 - 1), 0) * self.const.SUM_PAT_INFO_TABLE_W[0] / 4
                crt_table_w[1] += np.max(int(col_2 / 5 - 1), 0) * self.const.SUM_PAT_INFO_TABLE_W[1] / 4
                self.make_table(data_table, self.const.SUM_PAT_INFO_TABLE_X, (self.const.Y_LIM - cur_y) * self.const.UNIT_PIXEL - np.sum(table_height),
                                crt_table_w, table_height, self.const.SURVEY_TABLE_STYLE)
                cur_y += np.sum(table_height) / self.const.UNIT_PIXEL + 100

            if 'comment' not in parsed_surveys[idx].keys() and 'survey_spec' not in parsed_surveys[idx].keys() and 'additions' not in parsed_surveys[idx].keys():
                # comment_h = self.make_text(
                #     'None',
                #     self.const.SURVEY_COMMENT_TEXT_X, cur_y, self.const.SURVEY_COMMENT_TEXT_SIZE, '#FFFFFFFF',
                #     self.const.SURVEY_COMMENT_TEXT_TYPE, w=self.const.SURVEY_COMMENT_TEXT_W)
                # cur_y = self.new_page_assertion(cur_y, comment_h / self.const.UNIT_PIXEL + 100)
                cur_y = self.make_text(
                    'None',
                    self.const.SURVEY_COMMENT_TEXT_X, cur_y, self.const.SURVEY_COMMENT_TEXT_SIZE, self.const.SURVEY_COMMENT_TEXT_COLOR,
                    self.const.SURVEY_COMMENT_TEXT_TYPE, w=self.const.SURVEY_COMMENT_TEXT_W)

                # cur_y += comment_h / self.const.UNIT_PIXEL + 100

        if main_comment_after is not None:
            cur_y = self.make_text(main_comment_after,
                                   self.const.SURVEY_COMMENT_TEXT_X, cur_y, self.const.SURVEY_COMMENT_TEXT_SIZE, self.const.SURVEY_COMMENT_TEXT_COLOR,
                                   self.const.SURVEY_COMMENT_TEXT_TYPE, w=self.const.SURVEY_COMMENT_TEXT_W)

        self.make_text(self.const.SURVEY_DESC_TEXT_1, self.const.SURVEY_DESC_TEXT_X, self.const.SURVEY_DESC_TEXT_Y_1, self.const.SURVEY_DESC_TEXT_SIZE,
                       self.const.SURVEY_DESC_TEXT_COLOR, self.const.SURVEY_DESC_TEXT_TYPE, orientation='CENTER')
        self.make_text(self.const.SURVEY_DESC_TEXT_2, self.const.SURVEY_DESC_TEXT_X, self.const.SURVEY_DESC_TEXT_Y_2, self.const.SURVEY_DESC_TEXT_SIZE,
                       self.const.SURVEY_DESC_TEXT_COLOR, self.const.SURVEY_DESC_TEXT_TYPE, orientation='CENTER')

        return

    def power_page(self, subject, cdf_dict):

        self.c.showPage()
        self.set_template()

        self.make_text('Power Analysis', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.POWER_TITLE_FONT)

        self.make_text('Absolute power', self.const.X_LIM * 0.07, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.POWER_TITLE_FONT)
        self.make_text('Relative power', self.const.X_LIM * 0.30, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.POWER_TITLE_FONT)

        for band, y_ratio in [('Delta', 0.24), ('Theta', 0.48), ('Alpha', 0.72)]:
            self.make_img(self.path / Path('crt_abs_power_%s.png' % (band)), self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('crt_rel_power_%s.png' % (band)), self.const.X_LIM * 0.27, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_text(band, self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                           self.const.POWER_BAND_FONT)
            if band == 'Delta':
                self.make_text('z-score', self.const.X_LIM * 0.18, self.const.Y_LIM * y_ratio - 30, 30, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.FONT_ARIAL)
                self.make_text('z-score', self.const.X_LIM * 0.4, self.const.Y_LIM * y_ratio - 30, 30, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.FONT_ARIAL)

            abnormal_ch_list_pos = []
            abnormal_ch_list_neg = []
            for ch in range(19):
                if cdf_dict['abs_power'][band][ch] < 0.05 or cdf_dict['rel_power'][band][ch] < 0.05:
                    # abnormal_ch_list.append(ch)
                    if self.const.YBRAIN_CH_LIST[ch].startswith('F'):
                        if not self.const.TEXT_FRONTAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_FRONTAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('P'):
                        if not self.const.TEXT_PARIETAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_PARIETAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('C'):
                        if not self.const.TEXT_CENTRAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_CENTRAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('O'):
                        if not self.const.TEXT_OCCIPITAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_OCCIPITAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('T'):
                        if not self.const.TEXT_TEMPORAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_TEMPORAL)
                elif cdf_dict['abs_power'][band][ch] > 0.95 or cdf_dict['rel_power'][band][ch] > 0.95:
                    # abnormal_ch_list.append(ch)
                    if self.const.YBRAIN_CH_LIST[ch].startswith('F'):
                        if not self.const.TEXT_FRONTAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_FRONTAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('P'):
                        if not self.const.TEXT_PARIETAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_PARIETAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('C'):
                        if not self.const.TEXT_CENTRAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_CENTRAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('O'):
                        if not self.const.TEXT_OCCIPITAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_OCCIPITAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('T'):
                        if not self.const.TEXT_TEMPORAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_TEMPORAL)

            h = self.const.Y_LIM * y_ratio + 50
            if len(abnormal_ch_list_pos) != 0:
                desc_arg = [subject['name']]
                desc_tmp = self.const.POWER_PAGE_DESC_PRE
                for i in range(len(abnormal_ch_list_pos)):
                    desc_tmp += '%s, '
                    desc_arg.append(abnormal_ch_list_pos[i])
                desc_arg.append(band)
                desc_tmp = desc_tmp[:-2] + self.const.POWER_PAGE_DESC_LOW
                h = self.make_text(desc_tmp % tuple(desc_arg), self.const.X_LIM * 0.5, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                   self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.45)

            if len(abnormal_ch_list_neg) != 0:
                desc_arg = [subject['name']]
                desc_tmp = self.const.POWER_PAGE_DESC_PRE
                for i in range(len(abnormal_ch_list_neg)):
                    desc_tmp += '%s, '
                    desc_arg.append(abnormal_ch_list_neg[i])
                desc_arg.append(band)
                desc_tmp = desc_tmp[:-2] + self.const.POWER_PAGE_DESC_HIGH
                h = self.make_text(desc_tmp % tuple(desc_arg), self.const.X_LIM * 0.5, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                   self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.45)

            h = self.const.Y_LIM * y_ratio + self.const.X_LIM * 0.154
            for desc_tmp, ref_num in self.const.POW_DESC_LIST[band]:
                if ref_num is None:
                    desc = desc_tmp
                    h = self.make_text(desc, self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                       self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)
                elif isinstance(ref_num, list):
                    desc = desc_tmp + ' ['
                    for i in range(len(ref_num)):
                        desc += '%d, '
                    desc = desc[:-2] + '].'
                    h = self.make_text(desc % tuple(ref_num), self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                       self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)
                else:
                    desc = desc_tmp + ' [%d].'
                    h = self.make_text(desc % ref_num, self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                       self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)

        self.c.showPage()
        self.set_template()

        self.make_text('Power Analysis', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.POWER_TITLE_FONT)

        self.make_text('Absolute power', self.const.X_LIM * 0.07, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.POWER_TITLE_FONT)
        self.make_text('Relative power', self.const.X_LIM * 0.30, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.POWER_TITLE_FONT)

        for band, y_ratio in [('Beta', 0.24), ('High Beta', 0.48), ('Gamma', 0.72)]:
            self.make_img(self.path / Path('crt_abs_power_%s.png' % (band)), self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('crt_rel_power_%s.png' % (band)), self.const.X_LIM * 0.27, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_text(band, self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                           self.const.POWER_BAND_FONT)

            abnormal_ch_list_pos = []
            abnormal_ch_list_neg = []
            for ch in range(19):
                if cdf_dict['abs_power'][band][ch] < 0.05 or cdf_dict['rel_power'][band][ch] < 0.05:
                    if self.const.YBRAIN_CH_LIST[ch].startswith('F'):
                        if not self.const.TEXT_FRONTAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_FRONTAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('P'):
                        if not self.const.TEXT_PARIETAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_PARIETAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('C'):
                        if not self.const.TEXT_CENTRAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_CENTRAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('O'):
                        if not self.const.TEXT_OCCIPITAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_OCCIPITAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('T'):
                        if not self.const.TEXT_TEMPORAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_TEMPORAL)
                elif cdf_dict['abs_power'][band][ch] > 0.95 or cdf_dict['rel_power'][band][ch] > 0.95:
                    if self.const.YBRAIN_CH_LIST[ch].startswith('F'):
                        if not self.const.TEXT_FRONTAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_FRONTAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('P'):
                        if not self.const.TEXT_PARIETAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_PARIETAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('C'):
                        if not self.const.TEXT_CENTRAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_CENTRAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('O'):
                        if not self.const.TEXT_OCCIPITAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_OCCIPITAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('T'):
                        if not self.const.TEXT_TEMPORAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_TEMPORAL)

            h = self.const.Y_LIM * y_ratio + 50
            if len(abnormal_ch_list_pos) != 0:
                desc_arg = [subject['name']]
                desc_tmp = self.const.POWER_PAGE_DESC_PRE
                for i in range(len(abnormal_ch_list_pos)):
                    desc_tmp += '%s, '
                    desc_arg.append(abnormal_ch_list_pos[i])
                desc_arg.append(band)
                desc_tmp = desc_tmp[:-2] + self.const.POWER_PAGE_DESC_LOW
                h = self.make_text(desc_tmp % tuple(desc_arg), self.const.X_LIM * 0.5, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                   self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.45)

            if len(abnormal_ch_list_neg) != 0:
                desc_arg = [subject['name']]
                desc_tmp = self.const.POWER_PAGE_DESC_PRE
                for i in range(len(abnormal_ch_list_neg)):
                    desc_tmp += '%s, '
                    desc_arg.append(abnormal_ch_list_neg[i])
                desc_arg.append(band)
                desc_tmp = desc_tmp[:-2] + self.const.POWER_PAGE_DESC_HIGH
                h = self.make_text(desc_tmp % tuple(desc_arg), self.const.X_LIM * 0.5, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                   self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.45)

            h = self.const.Y_LIM * y_ratio + self.const.X_LIM * 0.154
            for desc_tmp, ref_num in self.const.POW_DESC_LIST[band]:
                if ref_num is None:
                    desc = desc_tmp
                    h = self.make_text(desc, self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                       self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)
                elif isinstance(ref_num, list):
                    desc = desc_tmp + ' ['
                    for i in range(len(ref_num)):
                        desc += '%d, '
                    desc = desc[:-2] + '].'
                    h = self.make_text(desc % tuple(ref_num), self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                       self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)
                else:
                    desc = desc_tmp + ' [%d].'
                    h = self.make_text(desc % ref_num, self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                       self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)

    def power_ratio_page(self, subject, cdf_dict):

        self.c.showPage()
        self.set_template()

        self.make_text('Power Ratio Analysis', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.POWER_TITLE_FONT)

        for band, y_ratio in [('DAR', 0.24), ('TAR', 0.48), ('TBR', 0.72)]:
            self.make_img(self.path / Path('crt_rat_power_%s.png' % (band)), self.const.X_LIM * 0.12, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_text(band, self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                           self.const.POWER_BAND_FONT)

            abnormal_ch_list_pos = []
            abnormal_ch_list_neg = []
            for ch in range(19):
                if cdf_dict['rat_power'][band][ch] < 0.05:
                    # abnormal_ch_list.append(ch)
                    if self.const.YBRAIN_CH_LIST[ch].startswith('F'):
                        if not self.const.TEXT_FRONTAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_FRONTAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('P'):
                        if not self.const.TEXT_PARIETAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_PARIETAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('C'):
                        if not self.const.TEXT_CENTRAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_CENTRAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('O'):
                        if not self.const.TEXT_OCCIPITAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_OCCIPITAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('T'):
                        if not self.const.TEXT_TEMPORAL in abnormal_ch_list_pos:
                            abnormal_ch_list_pos.append(self.const.TEXT_TEMPORAL)
                elif cdf_dict['rat_power'][band][ch] > 0.95:
                    # abnormal_ch_list.append(ch)
                    if self.const.YBRAIN_CH_LIST[ch].startswith('F'):
                        if not self.const.TEXT_FRONTAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_FRONTAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('P'):
                        if not self.const.TEXT_PARIETAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_PARIETAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('C'):
                        if not self.const.TEXT_CENTRAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_CENTRAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('O'):
                        if not self.const.TEXT_OCCIPITAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_OCCIPITAL)
                    elif self.const.YBRAIN_CH_LIST[ch].startswith('T'):
                        if not self.const.TEXT_TEMPORAL in abnormal_ch_list_neg:
                            abnormal_ch_list_neg.append(self.const.TEXT_TEMPORAL)

            h = self.const.Y_LIM * y_ratio + 50
            if len(abnormal_ch_list_pos) != 0:
                desc_arg = [subject['name']]
                desc_tmp = self.const.POWER_PAGE_DESC_PRE
                for i in range(len(abnormal_ch_list_pos)):
                    desc_tmp += '%s, '
                    desc_arg.append(abnormal_ch_list_pos[i])
                desc_arg.append(band)
                desc_tmp = desc_tmp[:-2] + self.const.POWER_RATIO_PAGE_DESC_LOW
                h = self.make_text(desc_tmp % tuple(desc_arg), self.const.X_LIM * 0.5, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                   self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.45)

            if len(abnormal_ch_list_neg) != 0:
                desc_arg = [subject['name']]
                desc_tmp = self.const.POWER_PAGE_DESC_PRE
                for i in range(len(abnormal_ch_list_neg)):
                    desc_tmp += '%s, '
                    desc_arg.append(abnormal_ch_list_neg[i])
                desc_arg.append(band)
                desc_tmp = desc_tmp[:-2] + self.const.POWER_RATIO_PAGE_DESC_HIGH
                h = self.make_text(desc_tmp % tuple(desc_arg), self.const.X_LIM * 0.5, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                   self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.45)

            h = self.const.Y_LIM * y_ratio + self.const.X_LIM * 0.154
            for desc_tmp, ref_num in self.const.POW_DESC_LIST[band]:
                if isinstance(ref_num, list):
                    desc = desc_tmp + ' ['
                    for i in range(len(ref_num)):
                        desc += '%d, '
                    desc = desc[:-2] + '].'
                    h = self.make_text(desc % tuple(ref_num), self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                       self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)
                else:
                    desc = desc_tmp + ' [%d].'
                    h = self.make_text(desc % ref_num, self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                       self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)

    def total_power_page(self):

        self.c.showPage()
        self.set_template()

        self.make_text('Total Topographic Map', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.POWER_TITLE_FONT)

        for band, x_ratio in [('Delta', 0.2), ('Theta', 0.45), ('Alpha', 0.7)]:
            self.make_img(self.path / Path('crt_abs_power_%s.png' % (band)), self.const.X_LIM * x_ratio, self.const.Y_LIM * 0.2, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('crt_rel_power_%s.png' % (band)), self.const.X_LIM * x_ratio, self.const.Y_LIM * 0.5, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_text(band, self.const.X_LIM * x_ratio + 150, self.const.Y_LIM * 0.2 - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                           self.const.POWER_BAND_FONT)

            self.make_text(band, self.const.X_LIM * x_ratio + 150, self.const.Y_LIM * 0.5 - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                           self.const.POWER_BAND_FONT)

            if band == 'Delta':
                self.make_text('z-score', self.const.X_LIM * x_ratio + 300, self.const.Y_LIM * 0.3 - 30, 30, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.FONT_ARIAL)
                # self.make_text('z-score', self.const.X_LIM * 0.4, self.const.Y_LIM * x_ratio - 30, 30, self.const.FUN_OVERALL_TEXT_COLOR,
                #                self.const.FONT_ARIAL)

        for band, x_ratio in [('Beta', 0.2), ('High Beta', 0.45), ('Gamma', 0.7)]:
            self.make_img(self.path / Path('crt_abs_power_%s.png' % (band)), self.const.X_LIM * x_ratio, self.const.Y_LIM * 0.32, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('crt_rel_power_%s.png' % (band)), self.const.X_LIM * x_ratio, self.const.Y_LIM * 0.62, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            if band == 'High Beta':
                self.make_text(band, self.const.X_LIM * x_ratio + 120, self.const.Y_LIM * 0.32 - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.POWER_BAND_FONT)

                self.make_text(band, self.const.X_LIM * x_ratio + 120, self.const.Y_LIM * 0.62 - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.POWER_BAND_FONT)
            else:
                self.make_text(band, self.const.X_LIM * x_ratio + 150, self.const.Y_LIM * 0.32 - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.POWER_BAND_FONT)

                self.make_text(band, self.const.X_LIM * x_ratio + 150, self.const.Y_LIM * 0.62 - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.POWER_BAND_FONT)

        for band, x_ratio in [('DAR', 0.2), ('TAR', 0.45), ('TBR', 0.7)]:
            self.make_img(self.path / Path('crt_rat_power_%s.png' % (band)), self.const.X_LIM * x_ratio, self.const.Y_LIM * 0.8, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_text(band, self.const.X_LIM * x_ratio + 150, self.const.Y_LIM * 0.8 - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                           self.const.POWER_BAND_FONT)

        self.make_text('Absolute\nPower', self.const.X_LIM * 0.05, self.const.Y_LIM * 0.2 - 60, 55, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.POWER_BAND_FONT)

        self.make_text('Relative\nPower', self.const.X_LIM * 0.05, self.const.Y_LIM * 0.5 - 60, 55, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.POWER_BAND_FONT)

        self.make_text('Power\nRatio', self.const.X_LIM * 0.05, self.const.Y_LIM * 0.8 - 60, 55, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.POWER_BAND_FONT)

    def function_abnormal_summary(self, subject):

        self.c.showPage()
        self.set_template()
        # data_patient_1 = [[self.const.COVER_NAME_TEXT, subject['name']],
        #                   ['ID', subject['id']],
        #                   [self.const.COVER_AGE_TEXT, subject['age']]]
        # data_patient_2 = [[self.const.COVER_GENDER_TEXT, subject['gender']],
        #                   [self.const.COVER_HAND_TEXT, subject['handedness']],
        #                   [self.const.COVER_DATE_TEXT, subject['created']]]
        #
        # self.make_table(data_patient_1, self.coㄹnst.SUM_PAT_INFO_TABLE_X, self.const.SUM_PAT_INFO_TABLE_Y + 25, self.const.SUM_PAT_INFO_TABLE_W, self.const.SUM_PAT_INFO_TABLE_H,
        #                 self.const.SUM_PAT_INFO_TABLE_STYLE)
        # self.make_table(data_patient_2, self.const.SUM_PAT_INFO_TABLE_X + self.const.SUM_PAT_INFO_TABLE_W[0] + self.const.SUM_PAT_INFO_TABLE_W[1] + 10,
        #                 self.const.SUM_PAT_INFO_TABLE_Y + 25, self.const.SUM_PAT_INFO_TABLE_W,
        #                 self.const.SUM_PAT_INFO_TABLE_H,
        #                 self.const.SUM_PAT_INFO_TABLE_STYLE)

        self.make_text('SCAN Report Summary', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.FONT_ARIAL_MT)

        self.make_rectangle_double(self.const.X_LIM * 0.08, self.const.Y_LIM * 0.25 + 50)
        self.make_text(self.const.EEG_BASED_ANALYSIS_TEXT, self.const.X_LIM * 0.10, self.const.Y_LIM * 0.247 + 50, 50, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.EEG_BASED_ANALYSIS_FONT)

        # self.make_text(self.const.EEG_BASED_ANALYSIS_DESC_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.28, self.const.FEATURE_DESC_TEXT_SIZE - 10,
        #                self.const.FEATURE_DESC_TEXT_COLOR, self.const.FEATURE_DESC_TEXT_TYPE, w=self.const.X_LIM * 0.9)

        self.make_line(self.const.X_LIM * 0.11, self.const.Y_LIM * 0.31, self.const.FEATURE_NO_DESC_LINE_W, self.const.FEATURE_NO_DESC_LINE_H,
                       self.const.FEATURE_NO_DESC_LINE_T, self.const.FEATURE_NO_DESC_LINE_COLOR, line_alpha=0.1)

        self.make_img(self.path / Path('crt_stress.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.34, self.const.X_LIM * 0.45, self.const.Y_LIM * 0.052)
        self.make_text(self.const.STRESS_IDX_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.324, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)
        self.make_img(self.path / Path('crt_concentration.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.43, self.const.X_LIM * 0.45, self.const.Y_LIM * 0.052)
        self.make_text(self.const.CONCENTRATION_IDX_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.414, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)
        self.make_img(self.path / Path('crt_cognition.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.52, self.const.X_LIM * 0.45, self.const.Y_LIM * 0.052)
        self.make_text(self.const.COGNITION_IDX_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.504, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)

        self.make_img(self.path / Path('crt_brain_use.png'), self.const.X_LIM * 0.55, self.const.Y_LIM * 0.385, self.const.X_LIM * 0.32, self.const.Y_LIM * 0.160)
        self.make_text(self.const.BRAIN_USE_IDX_TEXT, self.const.X_LIM * 0.55, self.const.Y_LIM * 0.33, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)

        self.make_rectangle_double(self.const.X_LIM * 0.08, self.const.Y_LIM * 0.61)
        self.make_text(self.const.INFO_ANALYSIS_PATTERN_TEXT, self.const.X_LIM * 0.10, self.const.Y_LIM * 0.607, 50, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.INFO_ANALYSIS_PATTERN_FONT)

        self.make_line(self.const.X_LIM * 0.11, self.const.Y_LIM * 0.67, self.const.FEATURE_NO_DESC_LINE_W, self.const.FEATURE_NO_DESC_LINE_H,
                       self.const.FEATURE_NO_DESC_LINE_T, self.const.FEATURE_NO_DESC_LINE_COLOR, line_alpha=0.1)

        self.make_img(self.path / Path('crt_info_amount_complexity.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.71, self.const.X_LIM * 0.27,
                      self.const.Y_LIM * 0.11)
        self.make_text(self.const.INFO_COMPLEXITY_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.684, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)
        self.make_img(self.path / Path('crt_info_speed.png'), self.const.X_LIM * 0.34, self.const.Y_LIM * 0.70, self.const.X_LIM * 0.30, self.const.Y_LIM * 0.12)
        self.make_text(self.const.INFO_SPEED_TEXT, self.const.X_LIM * 0.374, self.const.Y_LIM * 0.684, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)
        self.make_img(self.path / Path('crt_hemispheric_connectivity.png'), self.const.X_LIM * 0.65, self.const.Y_LIM * 0.70, self.const.X_LIM * 0.25,
                      self.const.Y_LIM * 0.12)
        self.make_text(self.const.INFO_CONNECTIVITY_TEXT, self.const.X_LIM * 0.674, self.const.Y_LIM * 0.684, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)

        self.make_text(self.const.FUN_DESC_TEXT, self.const.FEATURE_DESC_TEXT_X, self.const.Y_LIM * 0.145, self.const.FEATURE_DESC_TEXT_SIZE,
                       self.const.FEATURE_DESC_TEXT_COLOR, self.const.FEATURE_DESC_TEXT_TYPE, w=self.const.FEATURE_DESC_TEXT_W)

    def functional_abnormal_desc_table(self, cdf_dict):

        self.c.showPage()
        self.set_template()

        self.make_rectangle_double(self.const.X_LIM * 0.11, self.const.Y_LIM * 0.14)
        self.make_text(self.const.EEG_BASED_ANALYSIS_TEXT, self.const.X_LIM * 0.13, self.const.Y_LIM * 0.137, 50, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.EEG_BASED_ANALYSIS_FONT)

        self.make_text('SCAN Report Description', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.FONT_ARIAL_MT)

        data_table_1 = [[self.const.FEATURE_TEXT, self.const.DESCRIPTION_TEXT, self.const.RESULT_TEXT]]

        if cdf_dict['stress'] < 0.1:
            cdf_dict['stress'] = 0.1
        elif cdf_dict['stress'] > 0.9:
            cdf_dict['stress'] = 0.9

        if cdf_dict['concentration'] < 0.1:
            cdf_dict['concentration'] = 0.1
        elif cdf_dict['concentration'] > 0.9:
            cdf_dict['concentration'] = 0.9

        if cdf_dict['cognition'] < 0.1:
            cdf_dict['cognition'] = 0.1
        elif cdf_dict['cognition'] > 0.9:
            cdf_dict['cognition'] = 0.9

        if cdf_dict['use_of_brain'] < 0.1:
            cdf_dict['use_of_brain'] = 0.1
        elif cdf_dict['use_of_brain'] > 0.9:
            cdf_dict['use_of_brain'] = 0.9

        if cdf_dict['info_complex'] < 0.1:
            cdf_dict['info_complex'] = 0.1
        elif cdf_dict['info_complex'] > 0.9:
            cdf_dict['info_complex'] = 0.9

        if cdf_dict['info_speed'] < 0.1:
            cdf_dict['info_speed'] = 0.1
        elif cdf_dict['info_speed'] > 0.9:
            cdf_dict['info_speed'] = 0.9

        if cdf_dict['connectivity'] < 0.1:
            cdf_dict['connectivity'] = 0.1
        elif cdf_dict['connectivity'] > 0.9:
            cdf_dict['connectivity'] = 0.9

        data_table_1.append([self.const.TEXT_STRESS_IDX, self.const.TEXT_STRESS_DESC_TABLE, self.const.PERCENTAGE_TEXT % int(100 * cdf_dict['stress'])])
        data_table_1.append([self.const.TEXT_CONCENTRATION_IDX, self.const.TEXT_CONCENTRATION_DESC_TABLE, self.const.PERCENTAGE_TEXT % int(100 * cdf_dict['concentration'])])
        data_table_1.append([self.const.TEXT_COGNITION_IDX, self.const.TEXT_COGNITION_DESC_TABLE, self.const.PERCENTAGE_TEXT % int(100 * cdf_dict['cognition'])])
        data_table_1.append([self.const.TEXT_BRAIN_USE_IDX, self.const.TEXT_BRAIN_USE_DESC_TABLE, self.const.PERCENTAGE_TEXT % int(100 * cdf_dict['use_of_brain'])])

        self.make_table(data_table_1, self.const.X_LIM * 0.07 * self.const.UNIT_PIXEL, self.const.Y_LIM * 0.38 * self.const.UNIT_PIXEL, self.const.FUN_DESC_TABLE_W,
                        self.const.FUN_DESC_TABLE_H_1, self.const.FUN_DESC_TABLE_STYLE)

        self.make_img(self.path / Path('crt_psd_sef.png'), self.const.X_LIM * 0.1, self.const.Y_LIM * 0.625, self.const.X_LIM * 0.8,
                      self.const.X_LIM * 0.45)

        self.c.showPage()
        self.set_template()

        self.make_rectangle_double(self.const.X_LIM * 0.11, self.const.Y_LIM * 0.14)
        self.make_text(self.const.INFO_ANALYSIS_PATTERN_TEXT, self.const.X_LIM * 0.13, self.const.Y_LIM * 0.137, 50, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.INFO_ANALYSIS_PATTERN_FONT)

        self.make_text('SCAN Report Description', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.FONT_ARIAL_MT)

        data_table_2 = [[self.const.FEATURE_TEXT, self.const.DESCRIPTION_TEXT, self.const.RESULT_TEXT]]

        data_table_2.append([self.const.TEXT_BRAIN_COMPLEXITY_IDX, self.const.TEXT_BRAIN_COMPLEXITY_DESC_TABLE, self.const.PERCENTAGE_TEXT % int(100 * cdf_dict['info_complex'])])
        data_table_2.append([self.const.TEXT_BRAIN_INFO_SPEED_IDX, self.const.TEXT_BRAIN_INFO_SPEED_DESC_TABLE, self.const.PERCENTAGE_TEXT % int(100 * cdf_dict['info_speed'])])
        data_table_2.append(
            [self.const.TEXT_BRAIN_CONNECTIVITY_IDX, self.const.TEXT_BRAIN_CONNECTIVITY_DESC_TABLE, self.const.PERCENTAGE_TEXT % int(100 * cdf_dict['connectivity'])])

        self.make_table(data_table_2, self.const.X_LIM * 0.07 * self.const.UNIT_PIXEL, self.const.Y_LIM * 0.33 * self.const.UNIT_PIXEL, self.const.FUN_DESC_TABLE_W,
                        self.const.FUN_DESC_TABLE_H_2, self.const.FUN_DESC_TABLE_STYLE)

    def connectivity_page(self):

        self.c.showPage()
        self.set_template()

        self.make_text('Connectivity', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FEATURE_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.FEATURE_TITLE_TEXT_TYPE)

        self.make_text(self.const.TEXT_CONNECTIVITY_FIGURE_DESC, self.const.FEATURE_DESC_TEXT_X, self.const.FEATURE_DESC_TEXT_Y - 50, self.const.FEATURE_DESC_TEXT_SIZE,
                       self.const.FEATURE_DESC_TEXT_COLOR, self.const.FEATURE_DESC_TEXT_TYPE, w=self.const.FEATURE_DESC_TEXT_W)

        self.make_img(self.path / Path('crt_connectivity_line.png'), self.const.X_LIM * 0.25, self.const.Y_LIM * 0.55, self.const.X_LIM * 0.48,
                      self.const.X_LIM * 0.48)

        self.make_img(self.path / Path('crt_mi.png'), self.const.X_LIM * 0.25, self.const.Y_LIM * 0.25, self.const.X_LIM * 0.48,
                      self.const.X_LIM * 0.48)

    def make_single_report_pdf(self, cover_page=True, functional_abnormal_page=True, power_page=True, psd_ch_page=True, alpha_peak_page=True, connectivity_page=True,
                               survey_page=True, reference_page=True, appendix_page=True, appendix_feature_page=True, cdf_dict=None, raw_data_dict=None):

        subject = self.get_subject_from_info()

        if True:
            self.cover_page(subject)

        if functional_abnormal_page:
            self.function_abnormal_summary(subject)
            self.functional_abnormal_desc_table(cdf_dict)

        if power_page:
            self.total_power_page()
            self.power_page(subject, cdf_dict)
            self.power_ratio_page(subject, cdf_dict)

        if psd_ch_page:
            self.psd_ch_page()
        if alpha_peak_page:
            self.alpha_peak_page()

        if connectivity_page:
            self.connectivity_page()

        if reference_page:

            refer_list = []
            refer_num_list = []

            for key in self.const.REFERENCE_LIST.keys():
                if not self.const.REFERENCE_LIST[key][0] in refer_num_list:
                    refer_list.append(self.const.REFERENCE_LIST[key][1])
                    refer_num_list.append(self.const.REFERENCE_LIST[key][0])

            self.reference_page(refer_list)

        if survey_page:
            surveys = self.info_crt['anlzRequest']['surveys']
            self.surveys_page(surveys, subject, functional_abnormal_page)

        if appendix_page:
            self.appendix_page()

        # if appendix_feature_page:
        #     self.appendix_feature_page(raw_data_dict)

        # if appendix_page:
        #     self.appendix_feature_page()
        self.c.save()
