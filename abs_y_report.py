from abc import ABCMeta
import reportlab.lib.colors as colors
import numpy as np
from reportlab.lib.pagesizes import A4
from reportlab.pdfgen import canvas
from reportlab.platypus import Frame, Paragraph
from reportlab.platypus.tables import Table
from reportlab.lib.utils import ImageReader
from reportlab.lib.styles import ParagraphStyle
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.pdfbase import pdfmetrics
import logging
from scipy.stats import gamma, norm

from pdfrw import PdfReader
from pdfrw.buildxobj import pagexobj
from pdfrw.toreportlab import makerl

from y_report_def_korea import KoreanConstants
from y_report_def_japan import JapaneseConstants


class YReport(metaclass=ABCMeta):

    def __init__(self, request_id, info_crt, info_cmp=None, original_file=None, language='Korean'):
        self.request_id = request_id
        self.info_crt = info_crt
        self.info_cmp = info_cmp
        self.language = language
        if language == 'Korean':
            self.const = KoreanConstants
        elif language == 'Japanese':
            self.const = JapaneseConstants
        self.register_font()
        self.page_num = 1

        if self.info_cmp is None:
            self.c = canvas.Canvas(request_id + '/y_report.pdf', pagesize=A4, bottomup=True)
        else:
            self.c = canvas.Canvas(request_id + '/y_report_compare.pdf', pagesize=A4, bottomup=True)

        self.c.setPageSize(A4)

    def concat_file(self, original_file):
        page = PdfReader(original_file, decompress=False).pages
        for i in range(page.__len__()):
            p = pagexobj(page[i])
            self.c.doForm(makerl(self.c, p))
            self.page_num += 1  # Set page size (for landscape)
            if i != page.__len__() - 1:
                self.c.showPage()

    def register_font(self):
        pdfmetrics.registerFont(TTFont(self.const.FONT_ARIAL, 'font/arial.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_ARIAL_MT, 'font/arialmt.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_ARIAL_BLACK, 'font/arial-black.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_TIMES_NEW_ROMAN, 'font/times-new-roman.ttf'))
        pdfmetrics.registerFont(TTFont(self.const.FONT_TIMES_NEW_ROMAN_ITALIC, 'font/times-new-roman-Italic.ttf'))
        if self.language == 'Japanese':
            pdfmetrics.registerFont(TTFont(self.const.FONT_KOSUGI_MARU_REGULAR, 'font/KosugiMaru-Regular.ttf'))
        elif self.language == 'Korean':
            pdfmetrics.registerFont(TTFont(self.const.FONT_NANUM, 'font/NanumSquareRegular.ttf'))
            pdfmetrics.registerFont(TTFont(self.const.FONT_NANUM_BOLD, 'font/NanumSquareBold.ttf'))
            pdfmetrics.registerFont(TTFont(self.const.FONT_NANUM_EX_BOLD, 'font/NanumSquareExtraBold.ttf'))

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

    def parse_ratio_ref(self, feature_refs):

        parsed_rat_ref = {'DAR': [],
                          'TAR': [],
                          'TBR': []}
        for ref in feature_refs:
            if ref['feature'] == 'DBR':
                parsed_rat_ref['DAR'].append(ref)
            elif ref['feature'] == 'TAR':
                parsed_rat_ref['TAR'].append(ref)
            elif ref['feature'] == 'TBR':
                parsed_rat_ref['TBR'].append(ref)

        return parsed_rat_ref

    def parse_band_ref(self, feature_refs):
        parsed_band_refs = {'Delta': [],
                            'Theta': [],
                            'Alpha': [],
                            'Beta': [],
                            'High Beta': [],
                            'Gamma': []}
        for ref in feature_refs:
            if ref['band'] == 'Delta':
                parsed_band_refs['Delta'].append(ref)
            elif ref['band'] == 'Theta':
                parsed_band_refs['Theta'].append(ref)
            elif ref['band'] == 'Alpha':
                parsed_band_refs['Alpha'].append(ref)
            elif ref['band'] == 'Beta':
                parsed_band_refs['Beta'].append(ref)
            elif ref['band'] == 'High Beta':
                parsed_band_refs['High Beta'].append(ref)
            elif ref['band'] == 'Gamma':
                parsed_band_refs['Gamma'].append(ref)

        return parsed_band_refs

    def get_survey_from_json(self, survey, is_main):
        survey_object = {}
        survey_object['name'] = survey['surveyName']
        if survey['anlzResult'] is not None:
            survey_object['level'] = survey['anlzResult']['level']
            survey_object['score'] = survey['anlzResult']['score']
            survey_object['comment'] = survey['anlzResult']['comment']
            survey_object['additions'] = survey['anlzResult']['additions']
        if survey['anlzSpec'] is not None:
            survey_object['min_score'] = survey['anlzSpec']['minScore']
            survey_object['max_score'] = survey['anlzSpec']['maxScore']
            survey_object['min_level'] = survey['anlzSpec']['minLevel']
            survey_object['max_level'] = survey['anlzSpec']['maxLevel']
            survey_object['survey_spec'] = survey['anlzSpec']['ranges']
            survey_object['low_good'] = survey['anlzSpec']['lowGood']
        survey_object['is_main'] = is_main
        return survey_object

    def parse_survey(self, surveys):
        parsed_surveys = []

        for survey in surveys:
            main_anlz_result = survey['sessionAnlzResult']['mainAnlzResult']
            sub_anlz_results = survey['sessionAnlzResult']['subAnlzResults']

            parsed_surveys.append(self.get_survey_from_json(main_anlz_result, True))
            if sub_anlz_results is not None:
                for sub_survey in sub_anlz_results:
                    parsed_surveys.append(self.get_survey_from_json(sub_survey, False))

        return parsed_surveys

    def parse_refer_entry(self, ref_e):
        str_reference = ''

        if 'author' in ref_e.keys():
            author = ref_e['author']
            str_reference += '%s.' % author
        if 'year' in ref_e.keys():
            year = ref_e['year']
            str_reference += ' (%s).' % year
        if 'title' in ref_e.keys():
            title = ref_e['title']
            str_reference += ' %s.' % title
        if 'journal' in ref_e.keys():
            journal = ref_e['journal']
            str_reference += ' <font fontname="{type}">%s.</font>'.format(type=self.const.FONT_TIMES_NEW_ROMAN_ITALIC) % journal
        if 'volume' in ref_e.keys():
            volume = ref_e['volume']
            str_reference += ' %s' % volume
        if 'number' in ref_e.keys():
            number = ref_e['number']
            str_reference += '(%s)' % number
        if 'page' in ref_e.keys():
            page = ref_e['pages']
            str_reference += ' %s.' % page

        return str_reference

    def is_same_refer(self, refer1, refer2):
        for key in refer1.keys():
            if not key == 'img_idx':
                if not refer1.get(key) == refer2.get(key):
                    return False
        return True

    def refer_indexing(self, abs, rel, asym, coh, rat):
        ref_list = []
        ref_idx = 1
        for ref in abs:
            if not ref['Article Title'] in ref_list:
                ref['ref_idx'] = ref_idx
                ref_list.append(ref['Article Title'])
                ref_idx += 1
            else:
                ref['ref_idx'] = ref_list.index(ref['Article Title']) + 1
        for ref in rel:
            if not ref['Article Title'] in ref_list:
                ref['ref_idx'] = ref_idx
                ref_list.append(ref['Article Title'])
                ref_idx += 1
            else:
                ref['ref_idx'] = ref_list.index(ref['Article Title']) + 1
        for ref in asym:
            if not ref['Article Title'] in ref_list:
                ref['ref_idx'] = ref_idx
                ref_list.append(ref['Article Title'])
                ref_idx += 1
            else:
                ref['ref_idx'] = ref_list.index(ref['Article Title']) + 1
        for ref in coh:
            if not ref['Article Title'] in ref_list:
                ref['ref_idx'] = ref_idx
                ref_list.append(ref['Article Title'])
                ref_idx += 1
            else:
                ref['ref_idx'] = ref_list.index(ref['Article Title']) + 1
        for ref in rat:
            if not ref['Article Title'] in ref_list:
                ref['ref_idx'] = ref_idx
                ref_list.append(ref['Article Title'])
                ref_idx += 1
            else:
                ref['ref_idx'] = ref_list.index(ref['Article Title']) + 1

    def gather_refer(self, abs_list, rel_list, asym_list, coh_list, rat_list):
        idx_list = []
        refer_list = [
            'Ray, W. J., & Cole, H. W. (1985). EEG alpha activity reflects attentional demands, and beta activity reflects emotional and cognitive processes. Science, 228(4700), 750–752',
            'Laufs, H., Krakow, K., Sterzer, P., et al., (2003). Electroencephalographic signatures of attentional and cognitive default modes in spontaneous brain activity fluctuations at rest. Proc. Natl. Acad. Sci. USA, 100, No. 19, 11053–11058.',
            'Ssang-Hee Seo and Jung-Tae Lee (2010). Stress and EEG, Convergence and Hybrid InformationnTechnologies, Marius Crisan (Ed.), ISBN: 978-953-307-068-1']

        for abs in abs_list:
            if not abs['cite_idx'] in idx_list:
                idx_list.append(abs['cite_idx'])
                refer_list.append(abs['citation'])

        for rel in rel_list:
            if not rel['cite_idx'] in idx_list:
                idx_list.append(rel['cite_idx'])
                refer_list.append(rel['citation'])

        for asym in asym_list:
            if not asym['cite_idx'] in idx_list:
                idx_list.append(asym['cite_idx'])
                refer_list.append(asym['citation'])

        for coh in coh_list:
            if not coh['cite_idx'] in idx_list:
                idx_list.append(coh['cite_idx'])
                refer_list.append(coh['citation'])

        for rat in rat_list:
            if not rat['cite_idx'] in idx_list:
                idx_list.append(rat['cite_idx'])
                refer_list.append(rat['citation'])

        return refer_list

    def get_age(self, birthday: str):
        import datetime
        now = datetime.datetime.now()

        if isinstance(birthday, int):
            birth_year, birth_month, birth_day = birthday / 10000, birthday % 10000 / 100, birthday % 10000 % 100
        elif isinstance(birthday, str):
            birth_year, birth_month, birth_day = birthday.split('-')
            birth_year, birth_month, birth_day = int(birth_year), int(birth_month), int(birth_day)
        else:
            raise RuntimeError('Not supported type for birthday:' + str(type(birthday)))

        if self.language == 'Korean':
            age = now.year - birth_year + 1
        else:
            age = now.year - birth_year
            now_md = 100 * now.month + now.day
            bd_md = birth_month + birth_day
            if now_md < bd_md:
                age -= 1
        return int(age)

    def get_subject_from_info(self):
        subject = self.info_crt['subject']
        if subject['sex'] in [2, 'FEMALE', 'female', 'Female']:
            gender = self.const.TEXT_FEMALE
        else:
            gender = self.const.TEXT_MALE
        if subject['handedness'] in [1, 'right', 'RIGHT', 'Right']:
            handedness = self.const.TEXT_RIGHT_HAND
        elif subject['handedness'] in [0, 'left', 'LEFT', 'Left']:
            handedness = self.const.TEXT_LEFT_HAND
        else:
            handedness = self.const.TEXT_BOTH_HAND
        kcd_code = ''
        for indic in subject['indications']:
            kcd_code += indic['code'] + ', '

        created = subject['created'][:10]

        age = self.get_age(subject['birthday'])
        subject = {'name': subject['name'], 'id': subject['code'], 'date': subject['birthday'], 'age': age, 'gender': gender,
                   'handedness': handedness, 'kcd_code': kcd_code[:-2], 'created': created}
        return subject

    def get_cdf_val(self, feature_arr, feature, band, json_data_list):

        cdf_val_arr = np.zeros(feature_arr[feature][band].shape)
        for ch in range(feature_arr[feature][band].shape[0]):
            for json_data in json_data_list:
                if json_data['feature'] == feature and json_data['band'] == band and json_data['channel'] == list(self.info_crt['epochs'].ch_names)[ch]:
                    if json_data['dist'] == 'gamma':
                        cur_dist = gamma(a=float(json_data['param_1']), scale=float(json_data['param_2']))
                    else:
                        cur_dist = norm(float(json_data['param_1']), float(json_data['param_2']))

                    if json_data['mdd_high'] is True and not json_data['band'] == 'TBR':
                        tmp = (cur_dist.ppf(0.9999) - feature_arr[feature][band][ch]) / (cur_dist.ppf(0.9999) - cur_dist.ppf(0.0001))
                        # cdf_val_arr[ch] = np.min([np.max([0, tmp]), 1])
                        cdf_val_arr[ch] = cur_dist.cdf(feature_arr[feature][band][ch])
                    else:
                        tmp = 1 - (cur_dist.ppf(0.9999) - feature_arr[feature][band][ch]) / (cur_dist.ppf(0.9999) - cur_dist.ppf(0.0001))
                        # cdf_val_arr[ch] = np.min([np.max([0, tmp]), 1])
                        cdf_val_arr[ch] = 1 - cur_dist.cdf(feature_arr[feature][band][ch])
                elif feature == 'pow_rat' and json_data['feature'] == 'rat_power' and json_data['band'] == band and json_data['channel'] == list(self.info_crt['epochs'].ch_names)[
                    ch]:
                    cur_dist = gamma(a=float(json_data['param_1']), scale=float(json_data['param_2']))
                    cdf_val_arr[ch] = 1 - cur_dist.cdf(feature_arr[feature][band][ch])

                logging.debug('%s_%s_%s_%f_%f' % (feature, band, json_data['channel'], feature_arr[feature][band][ch], cdf_val_arr[ch]))

        return cdf_val_arr

    def get_text_coord(self, x, y, font_size):
        return self.pix_2_pdf(x), self.pix_2_pdf(self.const.Y_LIM - (y - font_size / 2.)), self.pix_2_pdf(font_size)

    def get_norm_coord(self, x, y, w, h):
        return self.pix_2_pdf(x), self.pix_2_pdf(self.const.Y_LIM - y - h), self.pix_2_pdf(w), self.pix_2_pdf(h)

    def make_rectangle_double(self, x, y):
        self.make_img(self.const.CMN_RECT_DOUBLE_IMG, x, y, self.const.CMN_RECT_DOUBLE_W, self.const.CMN_RECT_DOUBLE_H)

    def make_rectangle_single(self, x, y):
        self.make_backgnd(x, y, self.const.CMN_RECT_SINGLE_W, self.const.CMN_RECT_SINGLE_H, self.const.Y_BLUE)

    def make_line(self, x_start, y_start, w, h, line_thick=1., line_color=None, line_dot=False, line_alpha=1.0):
        if line_color is None:
            line_color = self.const.Y_BLACK_TEXT
        x_start, y_start, w, h = self.get_norm_coord(x_start, y_start, w, h)
        line_thick = self.pix_2_pdf(line_thick)
        self.c.setLineWidth(line_thick)
        self.c.setStrokeColor(self.get_clr(line_color, line_alpha))
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
        r_img.fp.close()

    def make_text(self, text, x_start, y_start, font_size, font_color, font_type, font_alpha=1.0, orientation='LEFT', w=None, indent=None):
        if w is None:
            self.make_text_v1(text, x_start, y_start, font_size, font_color, font_type, font_alpha=font_alpha, orientation=orientation, indent=indent)
        else:
            return self.make_text_v2(text, x_start, y_start, font_size, font_color, font_type, font_alpha=font_alpha, w=w, indent=indent)

    def make_text_v1(self, text, x_start, y_start, font_size, font_color, font_type, font_alpha=1.0, orientation='LEFT', indent=None):
        x_start, y_start, font_size = self.get_text_coord(x_start, y_start, font_size)
        clr = self.get_clr('#FFFFFF', 1.0)
        self.c.setFillColor(clr)
        clr = self.get_clr(font_color, font_alpha)
        if orientation == 'LEFT':
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
        elif orientation == 'CENTER':
            self.c.setFont(font_type, font_size)
            self.c.setFillColor(font_color)
            self.c.drawCentredString(x_start, y_start, text)

    def make_text_v2(self, text, x_start, y_start, font_size, font_color, font_type, w, font_alpha=1.0, indent=None):
        old_x_start, old_y_start, old_font_size, old_w = x_start, y_start, font_size, w
        x_start, y_start, font_size = self.get_text_coord(x_start, y_start, font_size)
        clr = self.get_clr('#FFFFFF', 1.0)
        self.c.setFillColor(clr)
        clr = self.get_clr(font_color, font_alpha)
        w = self.pix_2_pdf(w)
        frame = Frame(x_start, 0, w, y_start, showBoundary=0)
        frame = Frame(x_start, 0, w, y_start, showBoundary=0)
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
        _, p_height = p.wrap(w, 10000)
        p_height /= self.const.UNIT_PIXEL
        new_y = self.new_page_assertion(old_y_start, p_height)

        if new_y > old_y_start:
            frame.addFromList([p], self.c)
        else:
            return self.make_text_v2(text, old_x_start, new_y, old_font_size, font_color, font_type, old_w, font_alpha, indent)

        return new_y

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

    def set_template(self, is_second=False):
        self.make_text('- %d -' % self.page_num, self.const.CMN_PAGE_TEXT_X, self.const.CMN_PAGE_TEXT_Y, self.const.CMN_PAGE_TEXT_SIZE, self.const.CMN_PAGE_TEXT_COLOR,
                       self.const.CMN_PAGE_TEXT_TYPE, orientation='CENTER')
        self.page_num += 1
        self.make_img(self.const.CMN_TEMPLATE_REC_IMG, self.const.INTRO_REC_1_X, self.const.INTRO_REC_1_Y, self.const.INTRO_REC_1_W, self.const.INTRO_REC_1_H)
        if not is_second:
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

        # self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_NAME_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)
        # self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_DATE_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)
        # self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_AGE_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)
        # self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_GENDER_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)
        # self.make_backgnd(self.const.COVER_BAR_X, self.const.COVER_BAR_HAND_Y, self.const.COVER_BAR_W, self.const.COVER_BAR_H, self.const.COVER_BAR_COLOR)
        #
        # self.make_text(self.const.COVER_NAME_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_NAME_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE, self.const.COVER_INFO_TEXT_COLOR,
        #                self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')
        # self.make_text(self.const.COVER_DATE_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_DATE_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE, self.const.COVER_INFO_TEXT_COLOR,
        #                self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')
        # self.make_text(self.const.COVER_AGE_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_AGE_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE, self.const.COVER_INFO_TEXT_COLOR,
        #                self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')
        # self.make_text(self.const.COVER_GENDER_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_GENDER_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE,
        #                self.const.COVER_INFO_TEXT_COLOR, self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')
        # self.make_text(self.const.COVER_HAND_TEXT, self.const.COVER_INFO_TEXT_X, self.const.COVER_HAND_TEXT_Y, self.const.COVER_INFO_TEXT_SIZE, self.const.COVER_INFO_TEXT_COLOR,
        #                self.const.COVER_INFO_TEXT_TYPE, orientation='LEFT')
        #
        # self.make_text(subject['name'], self.const.COVER_CONTENT_TEXT_X, self.const.COVER_NAME_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE, self.const.COVER_CONTENT_TEXT_COLOR,
        #                self.const.COVER_CONTENT_TEXT_TYPE, orientation='LEFT')
        # self.make_text(str(subject['date']), self.const.COVER_CONTENT_TEXT_X, self.const.COVER_DATE_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE, self.const.COVER_CONTENT_TEXT_COLOR,
        #                self.const.COVER_CONTENT_TEXT_TYPE, orientation='LEFT')
        # self.make_text(str(subject['age']), self.const.COVER_CONTENT_TEXT_X, self.const.COVER_AGE_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE, self.const.COVER_CONTENT_TEXT_COLOR,
        #                self.const.COVER_CONTENT_TEXT_TYPE, orientation='LEFT')
        # self.make_text(subject['gender'], self.const.COVER_CONTENT_TEXT_X, self.const.COVER_GENDER_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE, self.const.COVER_CONTENT_TEXT_COLOR,
        #                self.const.COVER_CONTENT_TEXT_TYPE, orientation='LEFT')
        # self.make_text(subject['handedness'], self.const.COVER_CONTENT_TEXT_X, self.const.COVER_HAND_TEXT_Y, self.const.COVER_CONTENT_TEXT_SIZE,
        #                self.const.COVER_CONTENT_TEXT_COLOR, self.const.COVER_CONTENT_TEXT_TYPE,
        #                orientation='LEFT')

        self.make_text(self.const.COVER_VER_TEXT, self.const.COVER_VER_TEXT_X, self.const.COVER_VER_TEXT_Y, self.const.COVER_VER_TEXT_SIZE, self.const.COVER_VER_TEXT_COLOR,
                       self.const.COVER_VER_TEXT_TYPE, self.const.COVER_VER_TEXT_ALPHA)

        self.make_text(self.const.COVER_YB_INFO_TEXT, self.const.COVER_YB_INFO_X, self.const.COVER_YB_INFO_Y, self.const.COVER_YB_INFO_SIZE, self.const.COVER_YB_INFO_COLOR,
                       self.const.COVER_YB_INFO_TYPE, self.const.COVER_YB_INFO_ALPHA)
        self.make_backgnd(self.const.COVER_REC_3_X, self.const.COVER_REC_3_Y, self.const.COVER_REC_3_W, self.const.COVER_REC_3_H, self.const.COVER_REC_3_COLOR)
        return

    def appendix_page(self):
        self.c.showPage()
        self.set_template()
        self.make_text(self.const.INTRO_TITLE_TEXT, self.const.INTRO_TITLE_TEXT_X, self.const.INTRO_TITLE_TEXT_Y, self.const.INTRO_TITLE_TEXT_SIZE,
                       self.const.INTRO_TITLE_TEXT_COLOR, self.const.INTRO_TITLE_TEXT_TYPE)

        self.make_rectangle_double(self.const.INTRO_BRAIN_REC_X, self.const.INTRO_BRAIN_REC_Y)
        self.make_text(self.const.INTRO_BRAIN_TEXT, self.const.INTRO_BRAIN_TEXT_X, self.const.INTRO_BRAIN_TEXT_Y, self.const.INTRO_BRAIN_TEXT_SIZE,
                       self.const.INTRO_BRAIN_TEXT_COLOR, self.const.INTRO_BRAIN_TEXT_TYPE)
        self.make_img(self.const.INTRO_BRAIN_IMG, self.const.INTRO_BRAIN_IMG_X, self.const.INTRO_BRAIN_IMG_Y, self.const.INTRO_BRAIN_IMG_W, self.const.INTRO_BRAIN_IMG_H)

        self.make_rectangle_double(self.const.INTRO_VIEW_REC_X, self.const.INTRO_VIEW_REC_Y)
        self.make_text(self.const.INTRO_VIEW_TEXT, self.const.INTRO_VIEW_TEXT_X, self.const.INTRO_VIEW_TEXT_Y, self.const.INTRO_VIEW_TEXT_SIZE, self.const.INTRO_VIEW_TEXT_COLOR,
                       self.const.INTRO_VIEW_TEXT_TYPE)
        self.make_img(self.const.INTRO_VIEW_IMG, self.const.INTRO_VIEW_IMG_X, self.const.INTRO_VIEW_IMG_Y, self.const.INTRO_VIEW_IMG_W, self.const.INTRO_VIEW_IMG_H)

        self.c.showPage()
        self.set_template()
        self.make_text(self.const.INTRO_TITLE_TEXT, self.const.INTRO_TITLE_TEXT_X, self.const.INTRO_TITLE_TEXT_Y, self.const.INTRO_TITLE_TEXT_SIZE,
                       self.const.INTRO_TITLE_TEXT_COLOR, self.const.INTRO_TITLE_TEXT_TYPE)

        self.make_rectangle_double(self.const.INTRO_FREQUENCY_REC_X, self.const.INTRO_FREQUENCY_REC_Y)
        self.make_text(self.const.INTRO_FREQUENCY_TEXT, self.const.INTRO_FREQUENCY_TEXT_X, self.const.INTRO_FREQUENCY_TEXT_Y, self.const.INTRO_FREQUENCY_TEXT_SIZE,
                       self.const.INTRO_FREQUENCY_TEXT_COLOR, self.const.INTRO_FREQUENCY_TEXT_TYPE)
        self.make_img(self.const.INTRO_FREQUENCY_IMG, self.const.INTRO_FREQUENCY_IMG_X, self.const.INTRO_FREQUENCY_IMG_Y, self.const.INTRO_FREQUENCY_IMG_W,
                      self.const.INTRO_FREQUENCY_IMG_H)

        self.make_rectangle_double(self.const.INTRO_GRAPH_REC_X, self.const.INTRO_GRAPH_REC_Y)
        self.make_text(self.const.INTRO_GRAPH_TEXT, self.const.INTRO_GRAPH_TEXT_X, self.const.INTRO_GRAPH_TEXT_Y, self.const.INTRO_GRAPH_TEXT_SIZE,
                       self.const.INTRO_GRAPH_TEXT_COLOR, self.const.INTRO_GRAPH_TEXT_TYPE)
        self.make_img(self.const.INTRO_GRAPH_IMG, self.const.INTRO_GRAPH_IMG_X, self.const.INTRO_GRAPH_IMG_Y, self.const.INTRO_GRAPH_IMG_W, self.const.INTRO_GRAPH_IMG_H)

        self.make_rectangle_double(self.const.INTRO_MONTAGE_REC_X, self.const.INTRO_MONTAGE_REC_Y)
        self.make_text(self.const.INTRO_MONTAGE_TEXT, self.const.INTRO_MONTAGE_TEXT_X, self.const.INTRO_MONTAGE_TEXT_Y, self.const.INTRO_MONTAGE_TEXT_SIZE,
                       self.const.INTRO_MONTAGE_TEXT_COLOR, self.const.INTRO_MONTAGE_TEXT_TYPE)
        self.make_img(self.const.INTRO_MONTAGE_IMG, self.const.INTRO_MONTAGE_IMG_X, self.const.INTRO_MONTAGE_IMG_Y, self.const.INTRO_MONTAGE_IMG_W, self.const.INTRO_MONTAGE_IMG_H)

        return

    def get_feature_design_value(self, feature_type, crt_prefix='crt'):
        band_list = self.const.BAND_TEXT_LIST
        ratio_list = self.const.RATIO_TEXT_LIST
        if feature_type == self.const.FEATURE_ABS_POW_TEXT:
            feature_subtitle_text = self.const.FEATURE_ABS_POW_SUBTITLE_TEXT
            feature_desc_text = self.const.FEATURE_ABS_POW_DESC_TEXT
            feature_img = []
            for band in band_list:
                feature_img.append(self.const.FEATURE_ABS_POW_IMG % (self.request_id, crt_prefix, band))
            feature_rec_x = self.const.FEATURE_REC_X
            feature_rec_y = self.const.FEATURE_ABS_POW_REC_Y
            feature_feature_text_y = self.const.FEATURE_FEATURE_ABS_POW_TEXT_Y
        elif feature_type == self.const.FEATURE_REL_POW_TEXT:
            feature_subtitle_text = self.const.FEATURE_REL_POW_SUBTITLE_TEXT
            feature_desc_text = self.const.FEATURE_REL_POW_DESC_TEXT
            feature_img = []
            for band in band_list:
                feature_img.append(self.const.FEATURE_REL_POW_IMG % (self.request_id, crt_prefix, band))
            feature_rec_x = self.const.FEATURE_REC_X
            feature_rec_y = self.const.FEATURE_REL_POW_REC_Y
            feature_feature_text_y = self.const.FEATURE_FEATURE_REL_POW_TEXT_Y
        elif feature_type == self.const.FEATURE_ASYM_TEXT:
            feature_subtitle_text = self.const.FEATURE_ASYM_SUBTITLE_TEXT
            feature_desc_text = self.const.FEATURE_ASYM_DESC_TEXT
            feature_img = []
            for band in band_list:
                feature_img.append(self.const.FEATURE_ASYM_IMG % (self.request_id, crt_prefix, band))
            feature_rec_x = self.const.FEATURE_REC_X
            feature_rec_y = self.const.FEATURE_ASYM_REC_Y
            feature_feature_text_y = self.const.FEATURE_FEATURE_ASYM_TEXT_Y
        elif feature_type == self.const.FEATURE_COH_TEXT:
            feature_subtitle_text = self.const.FEATURE_COH_SUBTITLE_TEXT
            feature_desc_text = self.const.FEATURE_COH_DESC_TEXT
            feature_img = []
            for band in band_list:
                feature_img.append(self.const.FEATURE_COH_IMG % (self.request_id, crt_prefix, band))
            feature_rec_x = self.const.FEATURE_REC_X
            feature_rec_y = self.const.FEATURE_COH_REC_Y
            feature_feature_text_y = self.const.FEATURE_FEATURE_COH_TEXT_Y
        elif feature_type == self.const.FEATURE_POW_RAT_TEXT:
            feature_subtitle_text = self.const.FEATURE_POW_RAT_SUBTITLE_TEXT
            feature_desc_text = self.const.FEATURE_POW_RAT_DESC_TEXT
            feature_img = []
            for ratio in ratio_list:
                feature_img.append(self.const.FEATURE_POW_RAT_IMG % (self.request_id, crt_prefix, ratio))
            feature_rec_x = self.const.FEATURE_REC_X
            feature_rec_y = self.const.FEATURE_POW_RAT_REC_Y
            feature_feature_text_y = self.const.FEATURE_FEATURE_POW_RAT_TEXT_Y
        else:
            return

        return feature_subtitle_text, feature_desc_text, feature_img, feature_rec_x, feature_rec_y, feature_feature_text_y

    def new_page_assertion(self, y, offset):
        if y + offset > self.const.SURVEY_DESC_TEXT_Y_1:
            self.c.showPage()
            self.set_template(is_second=True)

            return self.const.SECOND_PAGE_Y

        return y + offset

    def reference_page(self, refer_list):
        self.c.showPage()
        self.set_template()
        self.make_text(self.const.REFER_TITLE_TEXT, self.const.REFER_TITLE_TEXT_X, self.const.REFER_TITLE_TEXT_Y, self.const.REFER_TITLE_TEXT_SIZE,
                       self.const.REFER_TITLE_TEXT_COLOR, self.const.REFER_TITLE_TEXT_TYPE)

        refer_num = 1
        crt_h = self.const.REFER_NUMBER_TEXT_Y
        ori_crt_h = crt_h
        for refer in refer_list:
            crt_h = self.make_text(refer, self.const.REFER_REF_TEXT_X, crt_h, self.const.REFER_REF_TEXT_SIZE, self.const.REFER_REF_TEXT_COLOR,
                                   self.const.REFER_REF_TEXT_TYPE,
                                   w=self.const.REFER_REF_TEXT_W + 90)
            if crt_h < ori_crt_h:
                ori_crt_h = self.const.SECOND_PAGE_Y
            self.make_text('%02d' % refer_num, self.const.REFER_NUMBER_TEXT_X, ori_crt_h, self.const.REFER_NUMBER_TEXT_SIZE,
                           self.const.REFER_NUMBER_TEXT_COLOR, self.const.REFER_NUMBER_TEXT_TYPE)
            crt_h += 10
            refer_num += 1
            ori_crt_h = crt_h
        return

    def is_in_refer_list(self, refer_list, new_refer):
        for refer in refer_list:
            if self.is_same_refer(refer, new_refer):
                return True
        return False
