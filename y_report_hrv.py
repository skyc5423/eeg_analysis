import logging

import numpy as np
import reportlab.lib.colors as colors
from pdfrw import PdfReader
from pdfrw.buildxobj import pagexobj
from pdfrw.toreportlab import makerl
from reportlab.lib.pagesizes import A4
from reportlab.lib.styles import ParagraphStyle
from reportlab.lib.utils import ImageReader
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.pdfgen import canvas
from reportlab.platypus import Frame, Paragraph
from reportlab.platypus.tables import Table
import os
from analysis.y_report_def_hrv_korea import KoreanConstants


class YReportHRV(object):

    def __init__(self, request_id, info_crt, feature, z_score_graph):
        self.request_id = str(request_id)
        self.info_crt = info_crt
        self.feature = feature
        self.z_score_graph = z_score_graph
        self.const = KoreanConstants
        self.register_font()
        self.page_num = 1

        self.c = canvas.Canvas(os.path.join(self.request_id, 'y_report_hrv.pdf'), pagesize=A4, bottomup=True)
        self.c.setPageSize(A4)

    def register_font(self):
        pdfmetrics.registerFont(TTFont(self.const.FONT_NANUM, 'font/NanumSquareRegular.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_NANUM_BOLD, 'font/NanumSquareBold.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_NANUM_EX_BOLD, 'font/NanumSquareExtraBold.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_ARIAL, 'font/arial.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_ARIAL_MT, 'font/arialmt.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_ARIAL_BLACK, 'font/arial-black.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_TIMES_NEW_ROMAN, 'font/times-new-roman.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_TIMES_NEW_ROMAN_ITALIC, 'font/times-new-roman-Italic.ttf'))

    def get_clr(self, str_color, alpha=1.0):
        r = int(str_color[1:3], 16)
        g = int(str_color[3:5], 16)
        b = int(str_color[5:7], 16)
        return colors.Color(r / 255., g / 255., b / 255., alpha)

    def pix_2_pdf(self, val):
        if isinstance(val, type([])):
            new_val = []
            for i in range(val.__len__()):
                new_val.append(val[i] * self.const.UNIT_PIXEL)
            return new_val
        else:
            return val * self.const.UNIT_PIXEL

    @staticmethod
    def get_age(birthday: str):
        import datetime
        now = datetime.datetime.now()
        if isinstance(birthday, int):
            birth_year, _, _ = birthday / 10000, birthday % 10000 / 100, birthday % 10000 % 100
        elif isinstance(birthday, str):
            birth_year, _, _ = birthday.split('-')
            birth_year = int(birth_year)
        else:
            raise RuntimeError('Not supported type for birthday:' + str(type(birthday)))

        return now.year - int(birth_year) + 1

    def get_subject_from_info(self):
        subject = self.info_crt['subject']
        if subject['sex'] in [2, 'FEMALE', 'female', 'Female']:
            gender = '여'
        else:
            gender = '남'
        if subject['handedness'] in [1, 'right', 'RIGHT', 'Right']:
            handedness = '오른손'
        elif subject['handedness'] in [0, 'left', 'LEFT', 'Left']:
            handedness = '왼손'
        else:
            handedness = '양손'
        kcd_code = ''
        # for indic in subject['indications']:
        #     kcd_code += indic['code'] + ', '

        age = self.get_age(subject['birthday'])
        subject = {'name': subject['name'], 'id': subject['code'], 'date': subject['birthday'], 'age': age, 'gender': gender,
                   'handedness': handedness}
        return subject

    def get_text_coord(self, x, y, font_size):
        return self.pix_2_pdf(x), self.pix_2_pdf(self.const.Y_LIM - (y - font_size / 2.)), self.pix_2_pdf(font_size)

    def get_norm_coord(self, x, y, w, h):
        return self.pix_2_pdf(x), self.pix_2_pdf(self.const.Y_LIM - y - h), self.pix_2_pdf(w), self.pix_2_pdf(h)

    def make_rectangle_double(self, x, y):
        self.make_img(self.const.CMN_RECT_DOUBLE_IMG, x, y, self.const.CMN_RECT_DOUBLE_W, self.const.CMN_RECT_DOUBLE_H)

    def make_rectangle_single(self, x, y):
        self.make_backgnd(x, y, self.const.CMN_RECT_SINGLE_W, self.const.CMN_RECT_SINGLE_H, self.const.Y_BLUE)

    def make_line(self, x_start, y_start, w, h, line_thick=1., line_color=None, line_dot=False):
        if line_color is None:
            line_color = self.const.Y_BLACK_TEXT
        x_start, y_start, w, h = self.get_norm_coord(x_start, y_start, w, h)
        line_thick = self.pix_2_pdf(line_thick)
        self.c.setLineWidth(line_thick)
        self.c.setStrokeColor(self.get_clr(line_color))
        if line_dot:
            self.c.setDash(1, 2)
        p = self.c.beginPath()
        p.moveTo(x_start, y_start)
        p.lineTo(x_start + w, y_start + h)
        p.close()
        self.c.drawPath(p)

    def make_img(self, img, x_start, y_start, width, height):
        x_start, y_start, width, height = self.get_norm_coord(x_start, y_start, width, height)
        r_img = ImageReader(img)
        self.c.drawImage(r_img, x_start, y_start, width=width, height=height, mask='auto')

    def make_text(self, text, x_start, y_start, font_size, font_color, font_type, font_alpha=1.0, orientation='LEFT', w=None, indent=None):
        x_start, y_start, font_size = self.get_text_coord(x_start, y_start, font_size)
        clr = self.get_clr('#FFFFFF', 1.0)
        self.c.setFillColor(clr)
        clr = self.get_clr(font_color, font_alpha)
        if orientation == 'LEFT':
            if w is not None:
                w = self.pix_2_pdf(w)
                frame = Frame(x_start, 0, w, y_start, showBoundary=0)
            else:
                frame = Frame(x_start, 0, A4[0] - x_start, y_start, showBoundary=0)
            # p_style = ParagraphStyle('Body', fontName=font_type, fontSize=font_size, fontColor=font_color, spaceAfter=5, spaceBefore=5, leading=20)
            if indent is None:
                p_style = ParagraphStyle('Body',
                                         fontName=font_type,
                                         justifyBreaks=1,
                                         fontSize=font_size,
                                         textColor=clr,
                                         leading=font_size * 1.5)
            else:
                p_style = ParagraphStyle('Body',
                                         fontName=font_type,
                                         justifyBreaks=1,
                                         fontSize=font_size,
                                         textColor=clr,
                                         firstLineIndent=indent[0],
                                         leftIndent=indent[1],
                                         leading=font_size * 1.5)
            p = Paragraph(text, p_style)
            frame.addFromList([p], self.c)
            if w is not None:
                return p.wrap(w, 10000)
        elif orientation == 'CENTER':
            self.c.setFont(font_type, font_size)
            self.c.setFillColor(font_color)
            self.c.drawCentredString(x_start, y_start, text)

    def make_backgnd(self, x_start, y_start, width, height, color, alpha=1.0):
        x_start, y_start, width, height = self.get_norm_coord(x_start, y_start, width, height)
        clr = self.get_clr(color, alpha)
        self.c.setFillColor(clr)
        self.c.rect(x_start, y_start, width, height, stroke=0, fill=1)

    def make_table(self, data, x_start, y_start, width, height, style):
        table_session = Table(data, colWidths=width, rowHeights=height)
        table_session.setStyle(style)
        table_session.wrapOn(self.c, 0, 0)
        table_session.drawOn(self.c, x_start, y_start)

    def set_template(self):
        self.make_text('- %d -' % self.page_num, self.const.CMN_PAGE_TEXT_X, self.const.CMN_PAGE_TEXT_Y, self.const.CMN_PAGE_TEXT_SIZE, self.const.CMN_PAGE_TEXT_COLOR,
                       self.const.CMN_PAGE_TEXT_TYPE, orientation='CENTER')
        self.page_num += 1
        self.make_img(self.const.CMN_TEMPLATE_REC_IMG, self.const.INTRO_REC_1_X, self.const.INTRO_REC_1_Y, self.const.INTRO_REC_1_W, self.const.INTRO_REC_1_H)
        self.make_backgnd(self.const.INTRO_REC_2_X, self.const.INTRO_REC_2_Y, self.const.INTRO_REC_2_W, self.const.INTRO_REC_2_H, self.const.INTRO_REC_2_COLOR,
                          self.const.INTRO_REC_2_ALPHA)
        self.make_backgnd(self.const.COVER_REC_3_X, self.const.COVER_REC_3_Y, self.const.COVER_REC_3_W, self.const.COVER_REC_3_H, self.const.COVER_REC_3_COLOR)
        self.make_text(self.const.CMN_YB_TEXT, self.const.CMN_YB_TEXT_X, self.const.CMN_YB_TEXT_Y, self.const.CMN_YB_TEXT_SIZE, self.const.CMN_YB_TEXT_COLOR,
                       self.const.CMN_YB_TEXT_TYPE, font_alpha=self.const.CMN_YB_TEXT_ALPHA)

    def cover_page(self, subject):
        self.make_img(self.const.COVER_REC_1_IMG, self.const.COVER_REC_1_X, self.const.COVER_REC_1_Y, self.const.COVER_REC_1_W, self.const.COVER_REC_1_H)
        self.make_backgnd(self.const.COVER_REC_2_X, self.const.COVER_REC_2_Y, self.const.COVER_REC_2_W, self.const.COVER_REC_2_H, self.const.COVER_REC_2_COLOR,
                          self.const.COVER_REC_2_ALPHA)
        self.make_text(self.const.COVER_BRAIN_TEXT, self.const.COVER_BRAIN_TEXT_X, self.const.COVER_BRAIN_TEXT_Y, self.const.COVER_BRAIN_TEXT_SIZE,
                       self.const.COVER_BRAIN_TEXT_COLOR, self.const.COVER_BRAIN_TEXT_TYPE, orientation='LEFT')
        self.make_text(self.const.COVER_REPORT_TEXT, self.const.COVER_REPORT_TEXT_X, self.const.COVER_REPORT_TEXT_Y, self.const.COVER_REPORT_TEXT_SIZE,
                       self.const.COVER_REPORT_TEXT_COLOR, self.const.COVER_REPORT_TEXT_TYPE, orientation='LEFT')
        self.make_img(self.const.COVER_BRAIN_IMG, self.const.COVER_BRAIN_IMG_X, self.const.COVER_BRAIN_IMG_Y, self.const.COVER_BRAIN_IMG_W, self.const.COVER_BRAIN_IMG_H)

        self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_NAME_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)
        self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_DATE_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)
        self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_AGE_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)
        self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_GENDER_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)
        self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_HAND_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)

        self.make_text(self.const.COVER_NAME_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_NAME_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE, self.const.COVER_INFO_TEXT_COLOR,
                       self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')
        self.make_text(self.const.COVER_DATE_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_DATE_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE, self.const.COVER_INFO_TEXT_COLOR,
                       self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')
        self.make_text(self.const.COVER_AGE_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_AGE_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE, self.const.COVER_INFO_TEXT_COLOR,
                       self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')
        self.make_text(self.const.COVER_GENDER_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_GENDER_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE,
                       self.const.COVER_INFO_TEXT_COLOR, self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')
        self.make_text(self.const.COVER_HAND_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_HAND_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE, self.const.COVER_INFO_TEXT_COLOR,
                       self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')

        self.make_text(subject['name'], self.const.COVER_CONTENT_TEXT_X, self.const.COVER_NAME_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE, self.const.COVER_CONTENT_TEXT_COLOR,
                       self.const.COVER_CONTENT_TEXT_TYPE, orientation='LEFT')
        self.make_text(str(subject['date']), self.const.COVER_CONTENT_TEXT_X, self.const.COVER_DATE_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE, self.const.COVER_CONTENT_TEXT_COLOR,
                       self.const.COVER_CONTENT_TEXT_TYPE,
                       orientation='LEFT')
        self.make_text(str(subject['age']), self.const.COVER_CONTENT_TEXT_X, self.const.COVER_AGE_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE, self.const.COVER_CONTENT_TEXT_COLOR,
                       self.const.COVER_CONTENT_TEXT_TYPE, orientation='LEFT')
        self.make_text(subject['gender'], self.const.COVER_CONTENT_TEXT_X, self.const.COVER_GENDER_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE, self.const.COVER_CONTENT_TEXT_COLOR,
                       self.const.COVER_CONTENT_TEXT_TYPE, orientation='LEFT')
        self.make_text(subject['handedness'], self.const.COVER_CONTENT_TEXT_X, self.const.COVER_HAND_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE,
                       self.const.COVER_CONTENT_TEXT_COLOR, self.const.COVER_CONTENT_TEXT_TYPE,
                       orientation='LEFT')

        self.make_text(self.const.COVER_VER_TEXT, self.const.COVER_VER_TEXT_X, self.const.COVER_VER_TEXT_Y, self.const.COVER_VER_TEXT_SIZE, self.const.COVER_VER_TEXT_COLOR,
                       self.const.COVER_VER_TEXT_TYPE, self.const.COVER_VER_TEXT_ALPHA)

        # make_img(c, COVER_YB_IMG, COVER_YB_IMG_X, COVER_YB_IMG_Y, COVER_YB_IMG_W, COVER_YB_IMG_H)

        self.make_text(self.const.COVER_YB_INFO_TEXT, self.const.COVER_YB_INFO_X, self.const.COVER_YB_INFO_Y, self.const.COVER_YB_INFO_SIZE, self.const.COVER_YB_INFO_COLOR,
                       self.const.COVER_YB_INFO_TYPE, self.const.COVER_YB_INFO_ALPHA)
        self.make_backgnd(self.const.COVER_REC_3_X, self.const.COVER_REC_3_Y, self.const.COVER_REC_3_W, self.const.COVER_REC_3_H, self.const.COVER_REC_3_COLOR)
        return

    def summary_page(self, subject):
        self.c.showPage()
        self.set_template()

        # HRV Report Summary
        self.make_text(self.const.SUMMARY_TITLE_TEXT, self.const.SUMMARY_TITLE_TEXT_X, self.const.SUMMARY_TITLE_TEXT_Y, self.const.SUMMARY_TITLE_TEXT_SIZE,
                       self.const.SUMMARY_TITLE_TEXT_COLOR, self.const.SUMMARY_TITLE_TEXT_TYPE)

        # 환자 정보
        self.make_rectangle_double(self.const.SUMMARY_PATIENT_INFO_REC_X, self.const.SUMMARY_PATIENT_INFO_REC_Y)

        self.make_text(self.const.SUMMARY_PATIENT_INFO_TEXT, self.const.SUMMARY_PATIENT_INFO_TEXT_X, self.const.SUMMARY_PATIENT_INFO_TEXT_Y,
                       self.const.SUMMARY_PATIENT_INFO_TEXT_SIZE,
                       self.const.SUMMARY_PATIENT_INFO_TEXT_COLOR, self.const.SUMMARY_PATIENT_INFO_TEXT_TYPE)

        # 환자 정보 table
        data_patient_1 = [['이름', subject['name']],
                          ['아이디', subject['id']],
                          ['나이', subject['age']]]
        data_patient_2 = [['성별', subject['gender']],
                          ['주로 사용하는 손', subject['handedness']]]

        self.make_table(data_patient_1, self.const.SUMMARY_PATIENT_INFO_TABLE_X, self.const.SUMMARY_PATIENT_INFO_TABLE_Y, self.const.SUMMARY_PATIENT_INFO_TABLE_W,
                        self.const.SUMMARY_PATIENT_INFO_TABLE_H,
                        self.const.SUMMARY_PATIENT_INFO_TABLE_STYLE)
        self.make_table(data_patient_2, self.const.SUMMARY_PATIENT_INFO_TABLE_X + self.const.SUMMARY_PATIENT_INFO_TABLE_W[0] + self.const.SUMMARY_PATIENT_INFO_TABLE_W[1] + 10,
                        self.const.SUMMARY_PATIENT_INFO_TABLE_Y, self.const.SUMMARY_PATIENT_INFO_TABLE_W,
                        self.const.SUMMARY_PATIENT_INFO_TABLE_H_2,
                        self.const.SUMMARY_PATIENT_INFO_TABLE_STYLE)

        # 신체 건강 상태
        self.make_rectangle_double(self.const.SUMMARY_HEALTH_REC_X, self.const.SUMMARY_HEALTH_REC_Y)

        self.make_text(self.const.SUMMARY_HEALTH_TEXT, self.const.SUMMARY_HEALTH_TEXT_X, self.const.SUMMARY_HEALTH_TEXT_Y,
                       self.const.SUMMARY_HEALTH_TEXT_SIZE,
                       self.const.SUMMARY_HEALTH_TEXT_COLOR, self.const.SUMMARY_HEALTH_TEXT_TYPE)

        self.make_img(self.const.SUMMARY_HEALTH_IMAGE % self.request_id, self.const.SUMMARY_HEALTH_IMAGE_X, self.const.SUMMARY_HEALTH_IMAGE_Y, self.const.SUMMARY_HEALTH_IMAGE_W,
                      self.const.SUMMARY_HEALTH_IMAGE_H)

        # 신체 나이
        self.make_rectangle_double(self.const.SUMMARY_AGE_REC_X, self.const.SUMMARY_AGE_REC_Y)

        self.make_text(self.const.SUMMARY_AGE_TEXT, self.const.SUMMARY_AGE_TEXT_X, self.const.SUMMARY_AGE_TEXT_Y,
                       self.const.SUMMARY_AGE_TEXT_SIZE,
                       self.const.SUMMARY_AGE_TEXT_COLOR, self.const.SUMMARY_AGE_TEXT_TYPE)

        self.make_img(self.const.SUMMARY_AGE_IMAGE % self.request_id, self.const.SUMMARY_AGE_IMAGE_X, self.const.SUMMARY_AGE_IMAGE_Y, self.const.SUMMARY_AGE_IMAGE_W,
                      self.const.SUMMARY_AGE_IMAGE_H)

        # 심박변이도 분석 결과
        self.make_rectangle_double(self.const.SUMMARY_HRV_REC_X, self.const.SUMMARY_HRV_REC_Y)

        self.make_text(self.const.SUMMARY_HRV_TEXT, self.const.SUMMARY_HRV_TEXT_X, self.const.SUMMARY_HRV_TEXT_Y,
                       self.const.SUMMARY_HRV_TEXT_SIZE,
                       self.const.SUMMARY_HRV_TEXT_COLOR, self.const.SUMMARY_HRV_TEXT_TYPE)

        for j in range(2):
            for i in range(3):
                score = self.z_score_graph[self.const.SUMMARY_FEATURE_KEY_LIST[j][i]]
                score = (score * 1.645 + 3) / 6
                text_severe = np.where(np.array(score) < 0.1, '매우 낮음',
                                       np.where(np.array(score) < 0.3, '조금 낮음', np.where(np.array(score) < 0.7, '보통', np.where(np.array(score) < 0.9, '조금 높음', '매우 높음'))))

                data_summary_feature = [['%s' % self.const.SUMMARY_FEATURE_TEXT_LIST[j][i], text_severe]]
                data_summary_image = self.const.SUMMARY_FEATURE_IMAGE_LIST[j][i] % self.request_id

                self.make_table(data_summary_feature,
                                self.const.SUMMARY_FEATURE_TABLE_X + self.const.SUMMARY_FEATURE_TABLE_X_OFFSET * i,
                                self.const.SUMMARY_FEATURE_TABLE_Y + self.const.SUMMARY_FEATURE_TABLE_Y_OFFSET * j,
                                self.const.SUMMARY_FEATURE_TABLE_W,
                                self.const.SUMMARY_FEATURE_TABLE_H,
                                self.const.SUMMARY_FEATURE_TABLE_STYLE)

                self.make_img(data_summary_image,
                              self.const.SUMMARY_FEATURE_IMAGE_X + self.const.SUMMARY_FEATURE_IMAGE_X_OFFSET * i,
                              self.const.SUMMARY_FEATURE_IMAGE_Y + self.const.SUMMARY_FEATURE_IMAGE_Y_OFFSET * j,
                              self.const.SUMMARY_FEATURE_IMAGE_W,
                              self.const.SUMMARY_FEATURE_IMAGE_H)

    def hrv_analysis_page(self, subject):
        self.c.showPage()
        self.set_template()

        # HRV Analysis Result
        self.make_text(self.const.ANALYSIS_TITLE_RESULT_TEXT, self.const.ANALYSIS_TITLE_RESULT_TEXT_X, self.const.ANALYSIS_TITLE_RESULT_TEXT_Y,
                       self.const.ANALYSIS_TITLE_RESULT_TEXT_SIZE,
                       self.const.ANALYSIS_TITLE_RESULT_TEXT_COLOR, self.const.ANALYSIS_TITLE_RESULT_TEXT_TYPE)

        # ECG & RR Time Series Data
        self.make_rectangle_double(self.const.ANALYSIS_ECG_RR_REC_X, self.const.ANALYSIS_ECG_RR_REC_Y)

        self.make_text(self.const.ANALYSIS_ECG_RR_TEXT, self.const.ANALYSIS_ECG_RR_TEXT_X, self.const.ANALYSIS_ECG_RR_TEXT_Y,
                       self.const.ANALYSIS_ECG_RR_TEXT_SIZE,
                       self.const.ANALYSIS_ECG_RR_TEXT_COLOR, self.const.ANALYSIS_ECG_RR_TEXT_TYPE)

        self.make_text(self.const.ANALYSIS_ECG_TEXT, self.const.ANALYSIS_ECG_TEXT_X, self.const.ANALYSIS_ECG_TEXT_Y,
                       self.const.ANALYSIS_ECG_TEXT_SIZE,
                       self.const.ANALYSIS_ECG_TEXT_COLOR, self.const.ANALYSIS_ECG_TEXT_TYPE)

        self.make_img(self.const.ANALYSIS_ECG_IMAGE % self.request_id, self.const.ANALYSIS_ECG_IMAGE_X, self.const.ANALYSIS_ECG_IMAGE_Y, self.const.ANALYSIS_ECG_IMAGE_W,
                      self.const.ANALYSIS_ECG_IMAGE_H)

        self.make_text(self.const.ANALYSIS_RR_TEXT, self.const.ANALYSIS_RR_TEXT_X, self.const.ANALYSIS_RR_TEXT_Y,
                       self.const.ANALYSIS_RR_TEXT_SIZE,
                       self.const.ANALYSIS_RR_TEXT_COLOR, self.const.ANALYSIS_RR_TEXT_TYPE)

        self.make_img(self.const.ANALYSIS_RR_IMAGE % self.request_id, self.const.ANALYSIS_RR_IMAGE_X, self.const.ANALYSIS_RR_IMAGE_Y, self.const.ANALYSIS_RR_IMAGE_W,
                      self.const.ANALYSIS_RR_IMAGE_H)

        # Time Domain Results
        self.make_rectangle_double(self.const.ANALYSIS_TIME_REC_X, self.const.ANALYSIS_TIME_REC_Y)

        self.make_text(self.const.ANALYSIS_TIME_TEXT, self.const.ANALYSIS_TIME_TEXT_X, self.const.ANALYSIS_TIME_TEXT_Y,
                       self.const.ANALYSIS_TIME_TEXT_SIZE,
                       self.const.ANALYSIS_TIME_TEXT_COLOR, self.const.ANALYSIS_TIME_TEXT_TYPE)

        data_time_domain = [[self.const.ANALYSIS_TIME_MEASURE_TEXT, self.const.ANALYSIS_TIME_UNIT_TEXT, self.const.ANALYSIS_TIME_VALUE_TEXT],
                            [self.const.ANALYSIS_TIME_MEAN_RR_TEXT, self.const.ANALYSIS_TIME_UNIT_MS_TEXT, '%.2f' % self.feature['mean_rr']],
                            [self.const.ANALYSIS_TIME_MEAN_HR_TEXT, self.const.ANALYSIS_TIME_UNIT_BPM_TEXT, '%.2f' % self.feature['mean_hr']],
                            [self.const.ANALYSIS_TIME_MIN_HR_TEXT, self.const.ANALYSIS_TIME_UNIT_BPM_TEXT, '%.2f' % self.feature['min_hr']],
                            [self.const.ANALYSIS_TIME_MAX_HR_TEXT, self.const.ANALYSIS_TIME_UNIT_BPM_TEXT, '%.2f' % self.feature['max_hr']],
                            [self.const.ANALYSIS_TIME_SDNN_TEXT, self.const.ANALYSIS_TIME_UNIT_MS_TEXT, '%.2f' % self.feature['sdnn']],
                            [self.const.ANALYSIS_TIME_RMSSD_TEXT, self.const.ANALYSIS_TIME_UNIT_MS_TEXT, '%.2f' % self.feature['rmssd']],
                            [self.const.ANALYSIS_TIME_RRCOV_TEXT, self.const.ANALYSIS_TIME_UNIT_PERCENT_TEXT, '%.2f' % self.feature['rrcov']],
                            [self.const.ANALYSIS_TIME_PNN50_TEXT, self.const.ANALYSIS_TIME_UNIT_PERCENT_TEXT, '%.2f' % (self.feature['pnn50'] * 100)],
                            [self.const.ANALYSIS_TIME_STRESS_IDX_TEXT, '', '%.2f' % (1E6 * self.feature['stress_idx'])]]

        self.make_table(data_time_domain, self.const.ANALYSIS_TIME_TABLE_X, self.const.ANALYSIS_TIME_TABLE_Y, self.const.ANALYSIS_TIME_TABLE_W,
                        self.const.ANALYSIS_TIME_TABLE_H,
                        self.const.ANALYSIS_TIME_TABLE_STYLE)

        self.make_img(self.const.ANALYSIS_RR_DIST_IMAGE % self.request_id, self.const.ANALYSIS_RR_DIST_IMAGE_X, self.const.ANALYSIS_RR_DIST_IMAGE_Y,
                      self.const.ANALYSIS_RR_DIST_IMAGE_W,
                      self.const.ANALYSIS_RR_DIST_IMAGE_H)

        self.make_text(self.const.ANALYSIS_RR_DIST_TEXT, self.const.ANALYSIS_RR_DIST_TEXT_X, self.const.ANALYSIS_RR_DIST_TEXT_Y,
                       self.const.ANALYSIS_RR_DIST_TEXT_SIZE,
                       self.const.ANALYSIS_RR_DIST_TEXT_COLOR, self.const.ANALYSIS_RR_DIST_TEXT_TYPE)

        # Frequency Domain Results
        self.make_rectangle_double(self.const.ANALYSIS_FREQUENCY_REC_X, self.const.ANALYSIS_FREQUENCY_REC_Y)

        self.make_text(self.const.ANALYSIS_FREQUENCY_TEXT, self.const.ANALYSIS_FREQUENCY_TEXT_X, self.const.ANALYSIS_FREQUENCY_TEXT_Y,
                       self.const.ANALYSIS_FREQUENCY_TEXT_SIZE,
                       self.const.ANALYSIS_FREQUENCY_TEXT_COLOR, self.const.ANALYSIS_FREQUENCY_TEXT_TYPE)

        data_freq_domain = [
            [self.const.ANALYSIS_FREQUENCY_MEASURE_TEXT, self.const.ANALYSIS_FREQUENCY_UNIT_TEXT, self.const.ANALYSIS_FREQUENCY_VLF_TEXT, self.const.ANALYSIS_FREQUENCY_LF_TEXT,
             self.const.ANALYSIS_FREQUENCY_HF_TEXT],
            [self.const.ANALYSIS_FREQUENCY_FREQ_BAND_TEXT, self.const.ANALYSIS_FREQUENCY_UNIT_HZ_TEXT, '0.00-0.04', '0.04-0.15', '0.15-0.4'],
            [self.const.ANALYSIS_FREQUENCY_ABS_TEXT, self.const.ANALYSIS_FREQUENCY_UNIT_MS2_TEXT, '%.2f' % self.feature['vlf'], '%.2f' % self.feature['lf'],
             '%.2f' % self.feature['hf']],
            [self.const.ANALYSIS_FREQUENCY_REL_TEXT, self.const.ANALYSIS_FREQUENCY_UNIT_PERCENT_TEXT, '%.2f' % (100 * self.feature['vlf'] / self.feature['total_power']),
             '%.2f' % (100 * self.feature['lf'] / self.feature['total_power']), '%.2f' % (100 * self.feature['hf'] / self.feature['total_power'])],
            [self.const.ANALYSIS_FREQUENCY_NOR_TEXT, self.const.ANALYSIS_FREQUENCY_UNIT_NO_TEXT, '', '%.2f' % self.feature['norm_lf'], '%.2f' % self.feature['norm_hf']],
            ['-----------------', '', '', '', ''],
            [self.const.ANALYSIS_FREQUENCY_TOT_TEXT, self.const.ANALYSIS_FREQUENCY_UNIT_MS2_TEXT, '%.2f' % self.feature['total_power'], '', ''],
            [self.const.ANALYSIS_FREQUENCY_RAT_TEXT, self.const.ANALYSIS_FREQUENCY_UNIT_NO_TEXT, '%.2f' % self.feature['ratio_f'], '', ''],
            [self.const.ANALYSIS_FREQUENCY_COH_TEXT, self.const.ANALYSIS_FREQUENCY_UNIT_NO_TEXT, '%.2f' % self.feature['heart_coh'], '', ''],
            [self.const.ANALYSIS_FREQUENCY_RES_TEXT, self.const.ANALYSIS_FREQUENCY_UNIT_HZ_TEXT, '%.2f' % self.feature['respiration'], '', '']]

        self.make_table(data_freq_domain, self.const.ANALYSIS_FREQUENCY_TABLE_X, self.const.ANALYSIS_FREQUENCY_TABLE_Y, self.const.ANALYSIS_FREQUENCY_TABLE_W,
                        self.const.ANALYSIS_FREQUENCY_TABLE_H, self.const.ANALYSIS_FREQUENCY_TABLE_STYLE)

        self.make_img(self.const.ANALYSIS_RR_SPEC_IMAGE % self.request_id, self.const.ANALYSIS_RR_SPEC_IMAGE_X, self.const.ANALYSIS_RR_SPEC_IMAGE_Y,
                      self.const.ANALYSIS_RR_SPEC_IMAGE_W, self.const.ANALYSIS_RR_SPEC_IMAGE_H)

        self.make_text(self.const.ANALYSIS_RR_SPEC_TEXT, self.const.ANALYSIS_RR_SPEC_TEXT_X, self.const.ANALYSIS_RR_SPEC_TEXT_Y, self.const.ANALYSIS_RR_SPEC_TEXT_SIZE,
                       self.const.ANALYSIS_RR_SPEC_TEXT_COLOR, self.const.ANALYSIS_RR_SPEC_TEXT_TYPE)

        # Non-linear Results
        self.make_rectangle_double(self.const.ANALYSIS_NONLINEAR_REC_X, self.const.ANALYSIS_NONLINEAR_REC_Y)

        self.make_text(self.const.ANALYSIS_NONLINEAR_TEXT, self.const.ANALYSIS_NONLINEAR_TEXT_X, self.const.ANALYSIS_NONLINEAR_TEXT_Y,
                       self.const.ANALYSIS_NONLINEAR_TEXT_SIZE,
                       self.const.ANALYSIS_NONLINEAR_TEXT_COLOR, self.const.ANALYSIS_NONLINEAR_TEXT_TYPE)

        data_nonlinear_domain = [
            [self.const.ANALYSIS_NONLINEAR_MEASURE_TEXT, self.const.ANALYSIS_NONLINEAR_UNIT_TEXT, self.const.ANALYSIS_NONLINEAR_VALUE_TEXT],
            [self.const.ANALYSIS_NONLINEAR_POINCARE_TEXT, '', ''],
            [self.const.ANALYSIS_NONLINEAR_SD1_TEXT, self.const.ANALYSIS_NONLINEAR_UNIT_MS_TEXT, '%.2f' % self.feature['sd1']],
            [self.const.ANALYSIS_NONLINEAR_SD2_TEXT, self.const.ANALYSIS_NONLINEAR_UNIT_MS_TEXT, '%.2f' % self.feature['sd2']],
            [self.const.ANALYSIS_NONLINEAR_SD12_TEXT, '', '%.2f' % (self.feature['sd1'] / self.feature['sd2'])],
            [self.const.ANALYSIS_NONLINEAR_APEN_TEXT, '', '%.2f' % self.feature['ap_en']],
            [self.const.ANALYSIS_NONLINEAR_SAEN_TEXT, '', '%.2f' % self.feature['sa_en']],
            [self.const.ANALYSIS_NONLINEAR_DFA_TEXT, '', ''],
            [self.const.ANALYSIS_NONLINEAR_A1_TEXT, '', '%.2f' % self.feature['coeff_low'][0]],
            [self.const.ANALYSIS_NONLINEAR_A2_TEXT, '', '%.2f' % self.feature['coeff_high'][0]]
        ]
        self.make_table(data_nonlinear_domain, self.const.ANALYSIS_NONLINEAR_TABLE_X, self.const.ANALYSIS_NONLINEAR_TABLE_Y, self.const.ANALYSIS_NONLINEAR_TABLE_W,
                        self.const.ANALYSIS_NONLINEAR_TABLE_H, self.const.ANALYSIS_NONLINEAR_TABLE_STYLE)

        self.make_img(self.const.ANALYSIS_POINCARE_IMAGE % self.request_id, self.const.ANALYSIS_POINCARE_IMAGE_X, self.const.ANALYSIS_POINCARE_IMAGE_Y,
                      self.const.ANALYSIS_POINCARE_IMAGE_W,
                      self.const.ANALYSIS_POINCARE_IMAGE_H)

        self.make_text(self.const.ANALYSIS_POINCARE_TEXT, self.const.ANALYSIS_POINCARE_TEXT_X, self.const.ANALYSIS_POINCARE_TEXT_Y,
                       self.const.ANALYSIS_POINCARE_TEXT_SIZE,
                       self.const.ANALYSIS_POINCARE_TEXT_COLOR, self.const.ANALYSIS_POINCARE_TEXT_TYPE)

        self.make_img(self.const.ANALYSIS_DFA_IMAGE % self.request_id, self.const.ANALYSIS_DFA_IMAGE_X, self.const.ANALYSIS_DFA_IMAGE_Y, self.const.ANALYSIS_DFA_IMAGE_W,
                      self.const.ANALYSIS_DFA_IMAGE_H)

        self.make_text(self.const.ANALYSIS_DFA_TEXT, self.const.ANALYSIS_DFA_TEXT_X, self.const.ANALYSIS_DFA_TEXT_Y,
                       self.const.ANALYSIS_DFA_TEXT_SIZE,
                       self.const.ANALYSIS_DFA_TEXT_COLOR, self.const.ANALYSIS_DFA_TEXT_TYPE)

    def make_single_report_pdf(self, cover_page=True, summary_page=True, hrv_analysis_page=True):

        subject = self.get_subject_from_info()
        if cover_page:
            self.cover_page(subject)

        if summary_page:
            self.summary_page(subject)

        if hrv_analysis_page:
            self.hrv_analysis_page(subject)

        self.c.save()
