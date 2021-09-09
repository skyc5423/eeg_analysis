from reportlab.lib.pagesizes import A4
from reportlab.pdfgen import canvas
from abs_y_report import YReport
import os
from pathlib import Path
from config.cfg import cfg


class YReportCompare(YReport):

    def __init__(self, request_id, info_crt, info_cmp, language='Korean'):
        super().__init__(request_id, info_crt, info_cmp, original_file=None, language=language)

        self.path = Path(cfg.OUT_DIR, request_id)
        self.path.mkdir(exist_ok=True, parents=True)
        self.path_report = str(self.path / Path('y_report_compare.pdf'))
        self.c = canvas.Canvas(self.path_report, pagesize=A4, bottomup=True)

        self.c.setPageSize(A4)

    def function_abnormal_summary(self, subject):

        self.c.showPage()
        self.set_template()
        data_patient_1 = [[self.const.COVER_NAME_TEXT, subject['name']],
                          ['ID', subject['id']],
                          [self.const.COVER_AGE_TEXT, subject['age']]]
        data_patient_2 = [[self.const.COVER_GENDER_TEXT, subject['gender']],
                          [self.const.COVER_HAND_TEXT, subject['handedness']]]

        self.make_table(data_patient_1, self.const.SUM_PAT_INFO_TABLE_X, self.const.SUM_PAT_INFO_TABLE_Y + 25, self.const.SUM_PAT_INFO_TABLE_W, self.const.SUM_PAT_INFO_TABLE_H,
                        self.const.SUM_PAT_INFO_TABLE_STYLE)
        self.make_table(data_patient_2, self.const.SUM_PAT_INFO_TABLE_X + self.const.SUM_PAT_INFO_TABLE_W[0] + self.const.SUM_PAT_INFO_TABLE_W[1] + 10,
                        self.const.SUM_PAT_INFO_TABLE_Y + 25, self.const.SUM_PAT_INFO_TABLE_W,
                        self.const.SUM_PAT_INFO_TABLE_H_2,
                        self.const.SUM_PAT_INFO_TABLE_STYLE)

        self.make_text('SCAN Report Summary', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.FONT_ARIAL_MT)

        self.make_rectangle_double(self.const.X_LIM * 0.08, self.const.Y_LIM * 0.25)
        self.make_text(self.const.EEG_BASED_ANALYSIS_TEXT, self.const.X_LIM * 0.10, self.const.Y_LIM * 0.247, 50, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.EEG_BASED_ANALYSIS_FONT)

        self.make_text(self.const.EEG_BASED_ANALYSIS_DESC_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.28, self.const.FEATURE_DESC_TEXT_SIZE - 10,
                       self.const.FEATURE_DESC_TEXT_COLOR, self.const.FEATURE_DESC_TEXT_TYPE, w=self.const.X_LIM * 0.9)

        self.make_line(self.const.X_LIM * 0.11, self.const.Y_LIM * 0.31, self.const.FEATURE_NO_DESC_LINE_W, self.const.FEATURE_NO_DESC_LINE_H,
                       self.const.FEATURE_NO_DESC_LINE_T, self.const.FEATURE_NO_DESC_LINE_COLOR, line_alpha=0.1)

        self.make_text('Pre', self.const.X_LIM * 0.25, self.const.Y_LIM * 0.344, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Post', self.const.X_LIM * 0.685, self.const.Y_LIM * 0.344, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_img(self.path / Path('cmp_stress.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.40, self.const.X_LIM * 0.45, self.const.Y_LIM * 0.052)
        self.make_img(self.path / Path('crt_stress.png'), self.const.X_LIM * 0.5, self.const.Y_LIM * 0.40, self.const.X_LIM * 0.45, self.const.Y_LIM * 0.052)
        self.make_text(self.const.STRESS_IDX_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.384, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)
        self.make_img(self.path / Path('cmp_concentration.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.49, self.const.X_LIM * 0.45, self.const.Y_LIM * 0.052)
        self.make_img(self.path / Path('crt_concentration.png'), self.const.X_LIM * 0.5, self.const.Y_LIM * 0.49, self.const.X_LIM * 0.45, self.const.Y_LIM * 0.052)
        self.make_text(self.const.CONCENTRATION_IDX_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.474, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)
        self.make_img(self.path / Path('cmp_cognition.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.58, self.const.X_LIM * 0.45, self.const.Y_LIM * 0.052)
        self.make_img(self.path / Path('crt_cognition.png'), self.const.X_LIM * 0.5, self.const.Y_LIM * 0.58, self.const.X_LIM * 0.45, self.const.Y_LIM * 0.052)
        self.make_text(self.const.COGNITION_IDX_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.564, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)

        self.make_img(self.path / Path('cmp_brain_use.png'), self.const.X_LIM * 0.15, self.const.Y_LIM * 0.71, self.const.X_LIM * 0.32, self.const.Y_LIM * 0.160)
        self.make_img(self.path / Path('crt_brain_use.png'), self.const.X_LIM * 0.55, self.const.Y_LIM * 0.71, self.const.X_LIM * 0.32, self.const.Y_LIM * 0.160)
        self.make_text(self.const.BRAIN_USE_IDX_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.67, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)

        self.make_text(self.const.FUN_DESC_TEXT, self.const.FEATURE_DESC_TEXT_X, self.const.Y_LIM * 0.87, self.const.FEATURE_DESC_TEXT_SIZE,
                       self.const.FEATURE_DESC_TEXT_COLOR, self.const.FEATURE_DESC_TEXT_TYPE, w=self.const.FEATURE_DESC_TEXT_W)

        self.c.showPage()
        self.set_template()

        self.make_rectangle_double(self.const.X_LIM * 0.08, self.const.Y_LIM * 0.17)
        self.make_text(self.const.INFO_ANALYSIS_PATTERN_TEXT, self.const.X_LIM * 0.10, self.const.Y_LIM * 0.167, 50, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.INFO_ANALYSIS_PATTERN_FONT)

        self.make_text(self.const.EEG_BASED_ANALYSIS_DESC_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.20, self.const.FEATURE_DESC_TEXT_SIZE - 10,
                       self.const.FEATURE_DESC_TEXT_COLOR, self.const.FEATURE_DESC_TEXT_TYPE, w=self.const.X_LIM * 0.9)

        self.make_line(self.const.X_LIM * 0.11, self.const.Y_LIM * 0.23, self.const.FEATURE_NO_DESC_LINE_W, self.const.FEATURE_NO_DESC_LINE_H,
                       self.const.FEATURE_NO_DESC_LINE_T, self.const.FEATURE_NO_DESC_LINE_COLOR, line_alpha=0.1)

        self.make_text('Pre', self.const.X_LIM * 0.25, self.const.Y_LIM * 0.264, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Post', self.const.X_LIM * 0.685, self.const.Y_LIM * 0.264, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        self.make_img(self.path / Path('cmp_info_amount_complexity.png'), self.const.X_LIM * 0.15, self.const.Y_LIM * 0.354, self.const.X_LIM * 0.27,
                      self.const.Y_LIM * 0.11)
        self.make_img(self.path / Path('crt_info_amount_complexity.png'), self.const.X_LIM * 0.55, self.const.Y_LIM * 0.354, self.const.X_LIM * 0.27,
                      self.const.Y_LIM * 0.11)
        self.make_text(self.const.INFO_COMPLEXITY_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.324, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)
        self.make_img(self.path / Path('cmp_info_speed.png'), self.const.X_LIM * 0.15, self.const.Y_LIM * 0.524, self.const.X_LIM * 0.30, self.const.Y_LIM * 0.12)
        self.make_img(self.path / Path('crt_info_speed.png'), self.const.X_LIM * 0.55, self.const.Y_LIM * 0.524, self.const.X_LIM * 0.30, self.const.Y_LIM * 0.12)
        self.make_text(self.const.INFO_SPEED_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.494, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)
        self.make_img(self.path / Path('cmp_hemispheric_connectivity.png'), self.const.X_LIM * 0.15, self.const.Y_LIM * 0.694, self.const.X_LIM * 0.30,
                      self.const.Y_LIM * 0.144)
        self.make_img(self.path / Path('crt_hemispheric_connectivity.png'), self.const.X_LIM * 0.55, self.const.Y_LIM * 0.694, self.const.X_LIM * 0.30,
                      self.const.Y_LIM * 0.144)
        self.make_text(self.const.INFO_CONNECTIVITY_TEXT, self.const.X_LIM * 0.074, self.const.Y_LIM * 0.664, 35, self.const.FUN_OVERALL_TEXT_COLOR, self.const.IDX_FONT)

        self.make_text(self.const.FUN_DESC_TEXT, self.const.FEATURE_DESC_TEXT_X, self.const.Y_LIM * 0.87, self.const.FEATURE_DESC_TEXT_SIZE,
                       self.const.FEATURE_DESC_TEXT_COLOR, self.const.FEATURE_DESC_TEXT_TYPE, w=self.const.FEATURE_DESC_TEXT_W)

    def functional_abnormal_desc_table(self, cmp_cdf_dict, crt_cdf_dict):

        self.c.showPage()
        self.set_template()

        self.make_rectangle_double(self.const.X_LIM * 0.11, self.const.Y_LIM * 0.14)
        self.make_text(self.const.EEG_BASED_ANALYSIS_TEXT, self.const.X_LIM * 0.13, self.const.Y_LIM * 0.137, 50, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.EEG_BASED_ANALYSIS_FONT)

        self.make_text('SCAN Report Description', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.SUMMARY_TITLE_FONT)

        data_table_1 = [[self.const.FEATURE_TEXT, self.const.DESCRIPTION_TEXT, self.const.RESULT_TEXT]]

        data_table_1.append(
            [self.const.TEXT_STRESS_IDX, self.const.TEXT_STRESS_DESC_TABLE,
             self.const.PERCENTAGE_COMPARE_TEXT % (int(100 * cmp_cdf_dict['stress']), int(100 * crt_cdf_dict['stress']))])
        data_table_1.append([self.const.TEXT_CONCENTRATION_IDX, self.const.TEXT_CONCENTRATION_DESC_TABLE,
                             self.const.PERCENTAGE_COMPARE_TEXT % (int(100 * cmp_cdf_dict['concentration']), int(100 * crt_cdf_dict['concentration']))])
        data_table_1.append([self.const.TEXT_COGNITION_IDX, self.const.TEXT_COGNITION_DESC_TABLE,
                             self.const.PERCENTAGE_COMPARE_TEXT % (int(100 * cmp_cdf_dict['cognition']), int(100 * crt_cdf_dict['cognition']))])
        data_table_1.append([self.const.TEXT_BRAIN_USE_IDX, self.const.TEXT_BRAIN_USE_DESC_TABLE,
                             self.const.PERCENTAGE_COMPARE_TEXT % (int(100 * cmp_cdf_dict['use_of_brain']), int(100 * crt_cdf_dict['use_of_brain']))])

        self.make_table(data_table_1, self.const.X_LIM * 0.07 * self.const.UNIT_PIXEL, self.const.Y_LIM * 0.38 * self.const.UNIT_PIXEL, self.const.FUN_DESC_TABLE_W,
                        self.const.FUN_DESC_TABLE_H_1, self.const.FUN_DESC_TABLE_STYLE)

        self.make_text('Pre', self.const.X_LIM * 0.24, self.const.Y_LIM * 0.655, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Post', self.const.X_LIM * 0.7, self.const.Y_LIM * 0.655, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        self.make_img(self.path / Path('cmp_psd_sef.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.675, self.const.X_LIM * 0.47,
                      self.const.X_LIM * 0.45 * 0.6)

        self.make_img(self.path / Path('crt_psd_sef.png'), self.const.X_LIM * 0.5, self.const.Y_LIM * 0.675, self.const.X_LIM * 0.47,
                      self.const.X_LIM * 0.45 * 0.6)

        self.c.showPage()
        self.set_template()

        self.make_rectangle_double(self.const.X_LIM * 0.11, self.const.Y_LIM * 0.14)
        self.make_text(self.const.INFO_ANALYSIS_PATTERN_TEXT, self.const.X_LIM * 0.13, self.const.Y_LIM * 0.137, 50, self.const.FUN_OVERALL_TEXT_COLOR,
                       self.const.INFO_ANALYSIS_PATTERN_FONT)

        self.make_text('SCAN Report Description', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.SUMMARY_TITLE_FONT)

        data_table_2 = [[self.const.FEATURE_TEXT, self.const.DESCRIPTION_TEXT, self.const.RESULT_TEXT]]

        data_table_2.append([self.const.TEXT_BRAIN_COMPLEXITY_IDX, self.const.TEXT_BRAIN_COMPLEXITY_DESC_TABLE,
                             self.const.PERCENTAGE_COMPARE_TEXT % (int(100 * cmp_cdf_dict['info_complex']), int(100 * crt_cdf_dict['info_complex']))])
        data_table_2.append([self.const.TEXT_BRAIN_INFO_SPEED_IDX, self.const.TEXT_BRAIN_INFO_SPEED_DESC_TABLE,
                             self.const.PERCENTAGE_COMPARE_TEXT % (int(100 * cmp_cdf_dict['info_speed']), int(100 * crt_cdf_dict['info_speed']))])
        data_table_2.append([self.const.TEXT_BRAIN_CONNECTIVITY_IDX, self.const.TEXT_BRAIN_CONNECTIVITY_DESC_TABLE,
                             self.const.PERCENTAGE_COMPARE_TEXT % (int(100 * cmp_cdf_dict['connectivity']), int(100 * crt_cdf_dict['connectivity']))])

        self.make_table(data_table_2, self.const.X_LIM * 0.07 * self.const.UNIT_PIXEL, self.const.Y_LIM * 0.33 * self.const.UNIT_PIXEL, self.const.FUN_DESC_TABLE_W,
                        self.const.FUN_DESC_TABLE_H_2, self.const.FUN_DESC_TABLE_STYLE)

    def power_page(self):

        self.c.showPage()
        self.set_template()

        self.make_text('Power Analysis', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.FONT_ARIAL_MT)

        self.make_text('Pre', self.const.X_LIM * 0.24, self.const.Y_LIM * 0.13, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Post', self.const.X_LIM * 0.7, self.const.Y_LIM * 0.13, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        self.make_text('Absolute power', self.const.X_LIM * 0.07, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Relative power', self.const.X_LIM * 0.30, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        self.make_text('Absolute power', self.const.X_LIM * 0.55, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Relative power', self.const.X_LIM * 0.78, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        for band, y_ratio in [('Delta', 0.24), ('Theta', 0.48), ('Alpha', 0.72)]:
            self.make_img(self.path / Path('cmp_abs_power_%s.png' % (band)), self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('cmp_rel_power_%s.png' % (band)), self.const.X_LIM * 0.27, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('crt_abs_power_%s.png' % (band)), self.const.X_LIM * 0.52, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('crt_rel_power_%s.png' % (band)), self.const.X_LIM * 0.74, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_text(band, self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                           self.const.FONT_ARIAL_MT)
            if band == 'Delta':
                self.make_text('z-score', self.const.X_LIM * 0.18, self.const.Y_LIM * y_ratio - 30, 30, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.FONT_ARIAL)
                self.make_text('z-score', self.const.X_LIM * 0.4, self.const.Y_LIM * y_ratio - 30, 30, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.FONT_ARIAL)
                self.make_text('z-score', self.const.X_LIM * 0.65, self.const.Y_LIM * y_ratio - 30, 30, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.FONT_ARIAL)
                self.make_text('z-score', self.const.X_LIM * 0.87, self.const.Y_LIM * y_ratio - 30, 30, self.const.FUN_OVERALL_TEXT_COLOR,
                               self.const.FONT_ARIAL)

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
                    if ref_num is not None:
                        desc = desc_tmp + ' [%d].'
                        h = self.make_text(desc % ref_num, self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                           self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)
                    else:
                        h = self.make_text(desc_tmp, self.const.X_LIM * 0.07, h, 35,
                                           self.const.FUN_OVERALL_TEXT_COLOR,
                                           self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)

        self.c.showPage()
        self.set_template()

        self.make_text('Power Analysis', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.FONT_ARIAL_MT)

        self.make_text('Pre', self.const.X_LIM * 0.24, self.const.Y_LIM * 0.13, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Post', self.const.X_LIM * 0.7, self.const.Y_LIM * 0.13, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        self.make_text('Absolute power', self.const.X_LIM * 0.07, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Relatvie power', self.const.X_LIM * 0.30, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        self.make_text('Absolute power', self.const.X_LIM * 0.55, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Relative power', self.const.X_LIM * 0.78, self.const.Y_LIM * 0.18, 45, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        for band, y_ratio in [('Beta', 0.24), ('High Beta', 0.48), ('Gamma', 0.72)]:
            self.make_img(self.path / Path('cmp_abs_power_%s.png' % (band)), self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('cmp_rel_power_%s.png' % (band)), self.const.X_LIM * 0.27, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('crt_abs_power_%s.png' % (band)), self.const.X_LIM * 0.52, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_img(self.path / Path('crt_rel_power_%s.png' % (band)), self.const.X_LIM * 0.74, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)

            self.make_text(band, self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                           self.const.FONT_ARIAL_MT)

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
                    if ref_num is not None:
                        desc = desc_tmp + ' [%d].'
                        h = self.make_text(desc % ref_num, self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                           self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)
                    else:
                        h = self.make_text(desc_tmp, self.const.X_LIM * 0.07, h, 35,
                                           self.const.FUN_OVERALL_TEXT_COLOR,
                                           self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)

    def power_ratio_page(self):

        self.c.showPage()
        self.set_template()

        self.make_text('Power Ratio Analysis', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FUN_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.POWER_TITLE_FONT)

        self.make_text('Pre', self.const.X_LIM * 0.21, self.const.Y_LIM * 0.17, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Post', self.const.X_LIM * 0.68, self.const.Y_LIM * 0.17, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        for band, y_ratio in [('DAR', 0.24), ('TAR', 0.48), ('TBR', 0.72)]:
            self.make_img(self.path / Path('cmp_rat_power_%s.png' % (band)), self.const.X_LIM * 0.12, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)
            self.make_img(self.path / Path('crt_rat_power_%s.png' % (band)), self.const.X_LIM * 0.59, self.const.Y_LIM * y_ratio, self.const.X_LIM * 0.2,
                          self.const.X_LIM * 0.145)
            self.make_text(band, self.const.X_LIM * 0.05, self.const.Y_LIM * y_ratio - 60, 45, self.const.FUN_OVERALL_TEXT_COLOR,
                           self.const.FONT_ARIAL_MT)

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
                    if ref_num is not None:
                        desc = desc_tmp + ' [%d].'
                        h = self.make_text(desc % ref_num, self.const.X_LIM * 0.07, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
                                           self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)
                    else:
                        h = self.make_text(desc_tmp, self.const.X_LIM * 0.07, h, 35,
                                           self.const.FUN_OVERALL_TEXT_COLOR,
                                           self.const.POWER_DESC_FONT, w=self.const.X_LIM * 0.9)

    def psd_ch_page(self, crt_prefix='diff'):
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

        self.make_text('Pre', self.const.X_LIM * 0.27, self.const.Y_LIM * 0.19, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Post', self.const.X_LIM * 0.735, self.const.Y_LIM * 0.19, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        self.make_text(self.const.PEAK_DESC_TEXT, self.const.PEAK_DESC_TEXT_X, self.const.PEAK_DESC_TEXT_Y, self.const.PEAK_DESC_TEXT_SIZE, self.const.PEAK_DESC_TEXT_COLOR,
                       self.const.PEAK_DESC_TEXT_TYPE, w=self.const.PEAK_DESC_TEXT_W)

        self.make_img(self.path / Path('cmp_alpha_peak_ch_11.png'), self.const.PEAK_O1_IMG_X, self.const.PEAK_IMG_Y - 200, self.const.PEAK_IMG_W, self.const.PEAK_IMG_H)
        self.make_img(self.path / Path('crt_alpha_peak_ch_11.png'), self.const.PEAK_O2_IMG_X, self.const.PEAK_IMG_Y - 200, self.const.PEAK_IMG_W, self.const.PEAK_IMG_H)

        self.make_img(self.path / Path('cmp_alpha_peak_ch_15.png'), self.const.PEAK_O1_IMG_X, self.const.PEAK_IMG_Y + 700, self.const.PEAK_IMG_W, self.const.PEAK_IMG_H)
        self.make_img(self.path / Path('crt_alpha_peak_ch_15.png'), self.const.PEAK_O2_IMG_X, self.const.PEAK_IMG_Y + 700, self.const.PEAK_IMG_W, self.const.PEAK_IMG_H)

        self.make_line(self.const.FEATURE_NO_DESC_LINE_X, self.const.FEATURE_NO_DESC_LINE_1_Y + 450, self.const.FEATURE_NO_DESC_LINE_W, self.const.FEATURE_NO_DESC_LINE_H,
                       self.const.FEATURE_NO_DESC_LINE_T, self.const.FEATURE_NO_DESC_LINE_COLOR,
                       self.const.FEATURE_NO_DESC_LINE_DOT)

        h = self.const.FEATURE_NO_DESC_LINE_1_Y + 550

        h = self.make_text(
            self.const.ALPHA_PEAK_DESC_TEXT,
            self.const.X_LIM * 0.1, h, 35, self.const.FUN_OVERALL_TEXT_COLOR,
            self.const.ALPHA_PEAK_DESC_FONT, w=self.const.X_LIM * 0.75)

        self.set_template()

    def connectivity_page(self):

        self.c.showPage()
        self.set_template()

        self.make_text('Pre', self.const.X_LIM * 0.235, self.const.Y_LIM * 0.22, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)
        self.make_text('Post', self.const.X_LIM * 0.67, self.const.Y_LIM * 0.22, 50, self.const.FUN_OVERALL_TEXT_COLOR, self.const.FONT_ARIAL_MT)

        self.make_text('Connectivity', self.const.FUN_TITLE_TEXT_X, self.const.FUN_TITLE_TEXT_Y, self.const.FEATURE_TITLE_TEXT_SIZE, self.const.FUN_TITLE_TEXT_COLOR,
                       self.const.FEATURE_TITLE_TEXT_TYPE)

        self.make_text(self.const.TEXT_CONNECTIVITY_FIGURE_DESC, self.const.FEATURE_DESC_TEXT_X, self.const.FEATURE_DESC_TEXT_Y - 50, self.const.FEATURE_DESC_TEXT_SIZE,
                       self.const.FEATURE_DESC_TEXT_COLOR,
                       self.const.FEATURE_DESC_TEXT_TYPE, w=self.const.FEATURE_DESC_TEXT_W)

        self.make_img(self.path / Path('cmp_connectivity_line.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.55, self.const.X_LIM * 0.4,
                      self.const.X_LIM * 0.4)

        self.make_img(self.path / Path('cmp_mi.png'), self.const.X_LIM * 0.05, self.const.Y_LIM * 0.26, self.const.X_LIM * 0.4,
                      self.const.X_LIM * 0.4)

        self.make_img(self.path / Path('crt_connectivity_line.png'), self.const.X_LIM * 0.5, self.const.Y_LIM * 0.55, self.const.X_LIM * 0.4,
                      self.const.X_LIM * 0.4)

        self.make_img(self.path / Path('crt_mi.png'), self.const.X_LIM * 0.5, self.const.Y_LIM * 0.26, self.const.X_LIM * 0.4,
                      self.const.X_LIM * 0.4)

    def make_compare_report_pdf(self, cover_page=True, functional_abnormal_page=True, power_page=True, psd_ch_page=True, alpha_peak_page=True, connectivity_page=True,
                                reference_page=True, appendix_page=True, appendix_feature_page=False, crt_cdf_dict=None, cmp_cdf_dict=None):

        subject = self.get_subject_from_info()

        if cover_page:
            self.cover_page(subject)

        if functional_abnormal_page:
            self.function_abnormal_summary(subject)
            self.functional_abnormal_desc_table(cmp_cdf_dict, crt_cdf_dict)

        if power_page:
            self.power_page()
            self.power_ratio_page()

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

        if appendix_page:
            self.appendix_page()

        if False:
            self.appendix_feature_page()

        self.c.save()
