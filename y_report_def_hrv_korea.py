import reportlab.lib.colors as colors
from analysis.y_report_def import Constants


class KoreanConstants(Constants):
    FONT_NANUM = 'Nanum'
    FONT_NANUM_BOLD = 'Nanum-Bold'
    FONT_NANUM_EX_BOLD = 'Nanum-ExtraBold'
    FONT_ARIAL = 'Arial'
    FONT_ARIAL_MT = 'ArialMT'
    FONT_ARIAL_BLACK = 'Arial-Black'
    FONT_TIMES_NEW_ROMAN = 'Times-New-Roman'
    FONT_TIMES_NEW_ROMAN_ITALIC = 'Times-New-Roman-Italic'

    """"""""""""""""""""""""""""""""
    """COMMON PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    CMN_YB_TEXT_TYPE = FONT_NANUM
    CMN_PAGE_TEXT_TYPE = FONT_NANUM

    """"""""""""""""""""""""""""""""
    """COVER PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    COVER_VER_TEXT_TYPE = FONT_NANUM
    COVER_BRAIN_TEXT_TYPE = FONT_ARIAL_MT
    COVER_INFO_TEXT_TYPE = FONT_NANUM_BOLD

    COVER_NAME_TEXT = '이름'
    COVER_DATE_TEXT = '생년월일'
    COVER_AGE_TEXT = '나이'
    COVER_GENDER_TEXT = '성별'
    TEXT_FEMALE = '여'
    TEXT_MALE = '남'
    TEXT_RIGHT_HAND = '오른손'
    TEXT_BOTH_HAND = '양손'
    TEXT_LEFT_HAND = '왼손'
    COVER_HAND_TEXT = '주로 사용하는 손'
    COVER_CONTENT_TEXT_TYPE = FONT_NANUM

    COVER_YB_INFO_TEXT = '(주)와이브레인 www.ybrain.com'
    COVER_YB_INFO_TYPE = FONT_NANUM

    """"""""""""""""""""""""""""""""
    """SUMMARY PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    # HRV REPORT SUMMARY
    SUMMARY_TITLE_TEXT = 'HRV Report Summary'
    SUMMARY_TITLE_TEXT_COLOR = Constants.Y_BLACK_TEXT
    SUMMARY_TITLE_TEXT_TYPE = FONT_NANUM_BOLD
    SUMMARY_TITLE_TEXT_X = 220
    SUMMARY_TITLE_TEXT_Y = 148
    SUMMARY_TITLE_TEXT_SIZE = 140

    # 환자 정보
    SUMMARY_PATIENT_INFO_TEXT = '환자 정보'
    SUMMARY_PATIENT_INFO_TEXT_COLOR = Constants.Y_BLACK_TEXT
    SUMMARY_PATIENT_INFO_TEXT_TYPE = FONT_NANUM_BOLD
    SUMMARY_PATIENT_INFO_TEXT_X = 380
    SUMMARY_PATIENT_INFO_TEXT_Y = 470
    SUMMARY_PATIENT_INFO_TEXT_SIZE = 60
    SUMMARY_PATIENT_INFO_REC_X = 325
    SUMMARY_PATIENT_INFO_REC_Y = 480

    # 환자 정보 table
    SUMMARY_PATIENT_INFO_TABLE_X = 316 * Constants.UNIT_PIXEL
    SUMMARY_PATIENT_INFO_TABLE_Y = (Constants.Y_LIM - 850) * Constants.UNIT_PIXEL
    SUMMARY_PATIENT_INFO_TABLE_W = [420 * Constants.UNIT_PIXEL, 420 * Constants.UNIT_PIXEL]
    SUMMARY_PATIENT_INFO_TABLE_H = [85 * Constants.UNIT_PIXEL, 85 * Constants.UNIT_PIXEL, 85 * Constants.UNIT_PIXEL]
    SUMMARY_PATIENT_INFO_TABLE_H_2 = [85 * Constants.UNIT_PIXEL, 85 * Constants.UNIT_PIXEL]

    SUMMARY_PATIENT_INFO_TABLE_STYLE = [('LINEABOVE', (0, 0), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                                        ('LINEBELOW', (0, -1), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                                        ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
                                        ('FONTNAME', (0, 0), (0, -1), FONT_NANUM_BOLD),
                                        ('FONTNAME', (1, 0), (1, -1), FONT_NANUM),
                                        ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
                                        ('TEXTCOLOR', (1, 0), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
                                        ('VALIGN', (0, 0), (-1, -1), 'MIDDLE')
                                        ]

    # 신체 건강 상태
    SUMMARY_HEALTH_TEXT = '신체 건강 상태'
    SUMMARY_HEALTH_TEXT_COLOR = Constants.Y_BLACK_TEXT
    SUMMARY_HEALTH_TEXT_TYPE = FONT_NANUM_BOLD
    SUMMARY_HEALTH_TEXT_X = 380
    SUMMARY_HEALTH_TEXT_Y = 950
    SUMMARY_HEALTH_TEXT_SIZE = 60
    SUMMARY_HEALTH_REC_X = 325
    SUMMARY_HEALTH_REC_Y = 960

    SUMMARY_HEALTH_IMAGE = './%s/pentagon_chart.png'
    SUMMARY_HEALTH_IMAGE_X = 300
    SUMMARY_HEALTH_IMAGE_Y = 1100
    SUMMARY_HEALTH_IMAGE_W = 900
    SUMMARY_HEALTH_IMAGE_H = 900

    # 신체 나이
    SUMMARY_AGE_TEXT = '신체 나이'
    SUMMARY_AGE_TEXT_COLOR = Constants.Y_BLACK_TEXT
    SUMMARY_AGE_TEXT_TYPE = FONT_NANUM_BOLD
    SUMMARY_AGE_TEXT_X = 1680
    SUMMARY_AGE_TEXT_Y = 950
    SUMMARY_AGE_TEXT_SIZE = 60
    SUMMARY_AGE_REC_X = 1625
    SUMMARY_AGE_REC_Y = 960

    SUMMARY_AGE_IMAGE = './%s/age_figure.png'
    SUMMARY_AGE_IMAGE_X = 1400
    SUMMARY_AGE_IMAGE_Y = 1100
    SUMMARY_AGE_IMAGE_W = 900
    SUMMARY_AGE_IMAGE_H = 900

    # 심박변이도 분석 결과
    SUMMARY_HRV_TEXT = '심박변이도 분석 결과'
    SUMMARY_HRV_TEXT_COLOR = Constants.Y_BLACK_TEXT
    SUMMARY_HRV_TEXT_TYPE = FONT_NANUM_BOLD
    SUMMARY_HRV_TEXT_X = 380
    SUMMARY_HRV_TEXT_Y = 2000
    SUMMARY_HRV_TEXT_SIZE = 60
    SUMMARY_HRV_REC_X = 325
    SUMMARY_HRV_REC_Y = 2010

    SUMMARY_FEATURE_TEXT_LIST = [['자율신경 활성도', '부교감신경 활성도', '교감신경 활성도'], ['Heart Rate', 'SDNN', 'RMSSD']]
    SUMMARY_FEATURE_KEY_LIST = [['autonomic', 'parasympathetic', 'sympathetic'], ['hr', 'sdnn', 'rmssd']]
    SUMMARY_FEATURE_IMAGE_LIST = [['./%s/autonomic.png', './%s/parasympathetic.png', './%s/sympathetic.png'], ['./%s/Heart Rate.png', './%s/SDNN.png', './%s/RMSSD.png']]

    SUMMARY_FEATURE_TABLE_X = 316 * Constants.UNIT_PIXEL
    SUMMARY_FEATURE_TABLE_X_OFFSET = 600 * Constants.UNIT_PIXEL
    SUMMARY_FEATURE_TABLE_Y = (Constants.Y_LIM - 2300) * Constants.UNIT_PIXEL
    SUMMARY_FEATURE_TABLE_Y_OFFSET = -530 * Constants.UNIT_PIXEL
    SUMMARY_FEATURE_TABLE_W = [400 * Constants.UNIT_PIXEL, 160 * Constants.UNIT_PIXEL]
    SUMMARY_FEATURE_TABLE_H = [85 * Constants.UNIT_PIXEL]

    SUMMARY_FEATURE_TABLE_STYLE = [
        # ('LINEABOVE', (0, 0), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        # ('LINEBELOW', (0, -1), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.1)),
        ('BACKGROUND', (1, 0), (1, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
        ('FONTNAME', (0, 0), (0, -1), FONT_NANUM_BOLD),
        ('FONTNAME', (1, 0), (1, -1), FONT_NANUM),
        ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
        ('TEXTCOLOR', (1, 0), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
        ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
        ('ALIGNMENT', (0, 0), (-1, -1), 'CENTER'),
    ]

    SUMMARY_FEATURE_IMAGE_X = 300
    SUMMARY_FEATURE_IMAGE_X_OFFSET = 600
    SUMMARY_FEATURE_IMAGE_Y = 2300
    SUMMARY_FEATURE_IMAGE_Y_OFFSET = 530
    SUMMARY_FEATURE_IMAGE_W = 592
    SUMMARY_FEATURE_IMAGE_H = 592 * 2.5 / 4

    """"""""""""""""""""""""""""""""
    """HRV ANALYSIS PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    # HRV Analysis Result
    ANALYSIS_TITLE_RESULT_TEXT = 'HRV Analysis Result'
    ANALYSIS_TITLE_RESULT_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_TITLE_RESULT_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_TITLE_RESULT_TEXT_X = 220
    ANALYSIS_TITLE_RESULT_TEXT_Y = 148
    ANALYSIS_TITLE_RESULT_TEXT_SIZE = 140

    # ECG & RR Time Series Data
    ANALYSIS_ECG_RR_TEXT = 'ECG & RR Time Series Data'
    ANALYSIS_ECG_RR_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_ECG_RR_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_ECG_RR_TEXT_X = 380
    ANALYSIS_ECG_RR_TEXT_Y = 470
    ANALYSIS_ECG_RR_TEXT_SIZE = 60
    ANALYSIS_ECG_RR_REC_X = 325
    ANALYSIS_ECG_RR_REC_Y = 480

    ANALYSIS_ECG_TEXT = 'ECG Time Series'
    ANALYSIS_ECG_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_ECG_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_ECG_TEXT_X = 340
    ANALYSIS_ECG_TEXT_Y = 590
    ANALYSIS_ECG_TEXT_SIZE = 30

    ANALYSIS_ECG_IMAGE = './%s/ecg.png'
    ANALYSIS_ECG_IMAGE_X = 280
    ANALYSIS_ECG_IMAGE_Y = 640
    ANALYSIS_ECG_IMAGE_W = 1830
    ANALYSIS_ECG_IMAGE_H = 287

    ANALYSIS_RR_TEXT = 'RR Series'
    ANALYSIS_RR_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_RR_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_RR_TEXT_X = 340
    ANALYSIS_RR_TEXT_Y = 900
    ANALYSIS_RR_TEXT_SIZE = 30

    ANALYSIS_RR_IMAGE = './%s/rr.png'
    ANALYSIS_RR_IMAGE_X = 200
    ANALYSIS_RR_IMAGE_Y = 950
    ANALYSIS_RR_IMAGE_W = 1910
    ANALYSIS_RR_IMAGE_H = 300

    # Time Domain Result
    ANALYSIS_TIME_TEXT = 'Time Domain Result'
    ANALYSIS_TIME_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_TIME_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_TIME_TEXT_X = 380
    ANALYSIS_TIME_TEXT_Y = 1330
    ANALYSIS_TIME_TEXT_SIZE = 60
    ANALYSIS_TIME_REC_X = 325
    ANALYSIS_TIME_REC_Y = 1340

    ANALYSIS_TIME_MEASURE_TEXT = 'Measure'
    ANALYSIS_TIME_UNIT_TEXT = 'Unit'
    ANALYSIS_TIME_VALUE_TEXT = 'Value'
    ANALYSIS_TIME_MEAN_RR_TEXT = 'Mean RR'
    ANALYSIS_TIME_MEAN_HR_TEXT = 'Mean HR'
    ANALYSIS_TIME_MIN_HR_TEXT = 'Min HR'
    ANALYSIS_TIME_MAX_HR_TEXT = 'Max HR'
    ANALYSIS_TIME_SDNN_TEXT = 'SDNN'
    ANALYSIS_TIME_RMSSD_TEXT = 'RMSSD'
    ANALYSIS_TIME_RRCOV_TEXT = 'RRCoV'
    ANALYSIS_TIME_PNN50_TEXT = 'pNN50'
    ANALYSIS_TIME_STRESS_IDX_TEXT = 'Stress index (SI)'
    ANALYSIS_TIME_UNIT_MS_TEXT = '(ms)'
    ANALYSIS_TIME_UNIT_BPM_TEXT = '(bpm)'
    ANALYSIS_TIME_UNIT_PERCENT_TEXT = '(%)'

    ANALYSIS_TIME_TABLE_X = 350 * Constants.UNIT_PIXEL
    ANALYSIS_TIME_TABLE_Y = (Constants.Y_LIM - 1880) * Constants.UNIT_PIXEL
    ANALYSIS_TIME_TABLE_W = [500 * Constants.UNIT_PIXEL, 200 * Constants.UNIT_PIXEL, 200 * Constants.UNIT_PIXEL]
    ANALYSIS_TIME_TABLE_H = [40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL,
                             40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL]

    ANALYSIS_TIME_TABLE_STYLE = [
        ('LINEABOVE', (0, 0), (-1, 0), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('LINEBELOW', (0, 0), (-1, 0), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('LINEBELOW', (0, -1), (-1, -1), 0.5 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('TOPPADDING', (0, 0), (-1, -1), 5),
        ('BOTTOMPADDING', (0, 0), (-1, -1), 0),
        # ('LINEBELOW', (0, 0), (-1, -1), 0.5 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('LINEAFTER', (0, 0), (1, -1), 3 * Constants.UNIT_PIXEL, Constants.Y_WHITE_TEXT),
        ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.1)),
        ('BACKGROUND', (1, 0), (-1, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
        ('FONTNAME', (0, 0), (0, -1), FONT_NANUM_BOLD),
        ('FONTNAME', (1, 0), (2, 0), FONT_NANUM_BOLD),
        ('FONTNAME', (1, 1), (-1, -1), FONT_NANUM),
        ('FONTSIZE', (0, 0), (-1, -1), 6),
        ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
        ('TEXTCOLOR', (1, 0), (2, 0), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
        ('TEXTCOLOR', (1, 1), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
        ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
        ('ALIGNMENT', (0, 0), (-1, -1), 'CENTER'),
    ]

    ANALYSIS_RR_DIST_IMAGE = './%s/rr_hist.png'
    ANALYSIS_RR_DIST_IMAGE_X = 1290
    ANALYSIS_RR_DIST_IMAGE_Y = 1450
    ANALYSIS_RR_DIST_IMAGE_W = 810
    ANALYSIS_RR_DIST_IMAGE_H = 540

    ANALYSIS_RR_DIST_TEXT = 'RR Distribution'
    ANALYSIS_RR_DIST_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_RR_DIST_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_RR_DIST_TEXT_X = 1380
    ANALYSIS_RR_DIST_TEXT_Y = 1400
    ANALYSIS_RR_DIST_TEXT_SIZE = 30

    # Frequency Domain Result
    ANALYSIS_FREQUENCY_TEXT = 'Frequency Domain Result'
    ANALYSIS_FREQUENCY_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_FREQUENCY_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_FREQUENCY_TEXT_X = 380
    ANALYSIS_FREQUENCY_TEXT_Y = 1970
    ANALYSIS_FREQUENCY_TEXT_SIZE = 60
    ANALYSIS_FREQUENCY_REC_X = 325
    ANALYSIS_FREQUENCY_REC_Y = 1980

    ANALYSIS_FREQUENCY_MEASURE_TEXT = 'Measure'
    ANALYSIS_FREQUENCY_UNIT_TEXT = 'Unit'
    ANALYSIS_FREQUENCY_VLF_TEXT = 'VLF'
    ANALYSIS_FREQUENCY_LF_TEXT = 'LF'
    ANALYSIS_FREQUENCY_HF_TEXT = 'HF'
    ANALYSIS_FREQUENCY_FREQ_BAND_TEXT = 'Frequency Band'
    ANALYSIS_FREQUENCY_ABS_TEXT = 'Abs. Power'
    ANALYSIS_FREQUENCY_REL_TEXT = 'Rel. Power'
    ANALYSIS_FREQUENCY_NOR_TEXT = 'Nor. Power'
    ANALYSIS_FREQUENCY_TOT_TEXT = 'Total Power'
    ANALYSIS_FREQUENCY_RAT_TEXT = 'LF/HF ratio'
    ANALYSIS_FREQUENCY_COH_TEXT = 'Heart Coherence'
    ANALYSIS_FREQUENCY_RES_TEXT = 'ECG-derived Respiration'
    ANALYSIS_FREQUENCY_UNIT_HZ_TEXT = '(Hz)'
    ANALYSIS_FREQUENCY_UNIT_MS2_TEXT = '(ms\u00b2)'
    ANALYSIS_FREQUENCY_UNIT_PERCENT_TEXT = '(%)'
    ANALYSIS_FREQUENCY_UNIT_NO_TEXT = '(n.u.)'

    ANALYSIS_FREQUENCY_TABLE_X = 350 * Constants.UNIT_PIXEL
    ANALYSIS_FREQUENCY_TABLE_Y = (Constants.Y_LIM - 2520) * Constants.UNIT_PIXEL
    ANALYSIS_FREQUENCY_TABLE_W = [300 * Constants.UNIT_PIXEL, 120 * Constants.UNIT_PIXEL, 160 * Constants.UNIT_PIXEL, 160 * Constants.UNIT_PIXEL, 160 * Constants.UNIT_PIXEL]
    ANALYSIS_FREQUENCY_TABLE_H = [40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL,
                                  40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL]

    ANALYSIS_FREQUENCY_TABLE_STYLE = [
        ('LINEABOVE', (0, 0), (-1, 0), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('LINEBELOW', (0, 0), (-1, 0), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('LINEBELOW', (0, -1), (-1, -1), 0.5 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('TOPPADDING', (0, 0), (-1, -1), 5),
        ('BOTTOMPADDING', (0, 0), (-1, -1), 0),
        ('LINEAFTER', (0, 0), (-2, -1), 3 * Constants.UNIT_PIXEL, Constants.Y_WHITE_TEXT),
        ('LINEBELOW', (0, 4), (-1, 5), 3 * Constants.UNIT_PIXEL, Constants.Y_WHITE_TEXT),
        ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.1)),
        ('BACKGROUND', (1, 0), (-1, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
        ('FONTNAME', (0, 0), (0, -1), FONT_NANUM_BOLD),
        ('FONTNAME', (1, 0), (2, 0), FONT_NANUM_BOLD),
        ('FONTNAME', (1, 1), (-1, -1), FONT_NANUM),
        ('FONTSIZE', (0, 0), (-1, -1), 6),
        ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
        ('TEXTCOLOR', (1, 0), (2, 0), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
        ('TEXTCOLOR', (1, 1), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
        ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
        ('ALIGNMENT', (0, 0), (-1, -1), 'CENTER'),
    ]

    ANALYSIS_RR_SPEC_IMAGE = './%s/psd.png'
    ANALYSIS_RR_SPEC_IMAGE_X = 1290
    ANALYSIS_RR_SPEC_IMAGE_Y = 2090
    ANALYSIS_RR_SPEC_IMAGE_W = 810
    ANALYSIS_RR_SPEC_IMAGE_H = 540

    ANALYSIS_RR_SPEC_TEXT = 'RR Spectrum'
    ANALYSIS_RR_SPEC_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_RR_SPEC_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_RR_SPEC_TEXT_X = 1380
    ANALYSIS_RR_SPEC_TEXT_Y = 2040
    ANALYSIS_RR_SPEC_TEXT_SIZE = 30

    # Non-linear Result
    ANALYSIS_NONLINEAR_TEXT = 'Non-linear Result'
    ANALYSIS_NONLINEAR_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_NONLINEAR_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_NONLINEAR_TEXT_X = 380
    ANALYSIS_NONLINEAR_TEXT_Y = 2670
    ANALYSIS_NONLINEAR_TEXT_SIZE = 60
    ANALYSIS_NONLINEAR_REC_X = 325
    ANALYSIS_NONLINEAR_REC_Y = 2680

    ANALYSIS_NONLINEAR_MEASURE_TEXT = 'Measure'
    ANALYSIS_NONLINEAR_UNIT_TEXT = 'Unit'
    ANALYSIS_NONLINEAR_VALUE_TEXT = 'Value'
    ANALYSIS_NONLINEAR_POINCARE_TEXT = 'Poincare Plot'
    ANALYSIS_NONLINEAR_SD1_TEXT = 'SD1'
    ANALYSIS_NONLINEAR_SD2_TEXT = 'SD2'
    ANALYSIS_NONLINEAR_SD12_TEXT = 'SD1/SD2'
    ANALYSIS_NONLINEAR_APEN_TEXT = 'Approximate Entropy'
    ANALYSIS_NONLINEAR_SAEN_TEXT = 'Sample Entropy'
    ANALYSIS_NONLINEAR_DFA_TEXT = 'Detrended Fluctuation Analysis'
    ANALYSIS_NONLINEAR_A1_TEXT = 'Short-term fluctuation, \u03B11'
    ANALYSIS_NONLINEAR_A2_TEXT = 'Short-term fluctuation, \u03B12'
    ANALYSIS_NONLINEAR_UNIT_MS_TEXT = '(ms)'

    ANALYSIS_NONLINEAR_TABLE_X = 350 * Constants.UNIT_PIXEL
    ANALYSIS_NONLINEAR_TABLE_Y = (Constants.Y_LIM - 3220) * Constants.UNIT_PIXEL
    ANALYSIS_NONLINEAR_TABLE_W = [400 * Constants.UNIT_PIXEL, 120 * Constants.UNIT_PIXEL, 120 * Constants.UNIT_PIXEL]
    ANALYSIS_NONLINEAR_TABLE_H = [40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL,
                                  40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL, 40 * Constants.UNIT_PIXEL]

    ANALYSIS_NONLINEAR_TABLE_STYLE = [
        ('LINEABOVE', (0, 0), (-1, 0), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('LINEBELOW', (0, 0), (-1, 0), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('LINEBELOW', (0, -1), (-1, -1), 0.5 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
        ('TOPPADDING', (0, 0), (-1, -1), 5),
        ('BOTTOMPADDING', (0, 0), (-1, -1), 0),
        ('LINEAFTER', (0, 0), (-2, -1), 3 * Constants.UNIT_PIXEL, Constants.Y_WHITE_TEXT),
        ('LINEBELOW', (0, 4), (-1, 5), 3 * Constants.UNIT_PIXEL, Constants.Y_WHITE_TEXT),
        ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.1)),
        ('BACKGROUND', (1, 0), (-1, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
        ('FONTNAME', (0, 0), (0, -1), FONT_NANUM_BOLD),
        ('FONTNAME', (1, 0), (2, 0), FONT_NANUM_BOLD),
        ('FONTNAME', (1, 1), (-1, -1), FONT_NANUM),
        ('FONTSIZE', (0, 0), (-1, -1), 6),
        ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
        ('TEXTCOLOR', (1, 0), (2, 0), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
        ('TEXTCOLOR', (1, 1), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
        ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
        ('ALIGNMENT', (0, 0), (-1, -1), 'CENTER'),
    ]

    ANALYSIS_POINCARE_IMAGE = './%s/poincare_plot.png'
    ANALYSIS_POINCARE_IMAGE_X = 1070
    ANALYSIS_POINCARE_IMAGE_Y = 2790
    ANALYSIS_POINCARE_IMAGE_W = 510
    ANALYSIS_POINCARE_IMAGE_H = 510

    ANALYSIS_POINCARE_TEXT = 'Poincare Plot'
    ANALYSIS_POINCARE_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_POINCARE_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_POINCARE_TEXT_X = 1160
    ANALYSIS_POINCARE_TEXT_Y = 2740
    ANALYSIS_POINCARE_TEXT_SIZE = 30

    ANALYSIS_DFA_IMAGE = './%s/dfa.png'
    ANALYSIS_DFA_IMAGE_X = 1590
    ANALYSIS_DFA_IMAGE_Y = 2790
    ANALYSIS_DFA_IMAGE_W = 510
    ANALYSIS_DFA_IMAGE_H = 510

    ANALYSIS_DFA_TEXT = 'Detrended Fluctuation Analysis (DFA)'
    ANALYSIS_DFA_TEXT_COLOR = Constants.Y_BLACK_TEXT
    ANALYSIS_DFA_TEXT_TYPE = FONT_NANUM_BOLD
    ANALYSIS_DFA_TEXT_X = 1590
    ANALYSIS_DFA_TEXT_Y = 2740
    ANALYSIS_DFA_TEXT_SIZE = 24
