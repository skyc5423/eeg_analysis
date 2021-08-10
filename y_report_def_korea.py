import reportlab.lib.colors as colors
from y_report_def import Constants
import numpy as np


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
    COVER_DATE_TEXT = '측정일'
    COVER_AGE_TEXT = '나이'
    COVER_GENDER_TEXT = '성별'
    COVER_BIRTHDAY_TEXT = '생년월일'
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
    """INTRO PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    INTRO_TITLE_TEXT_TYPE = FONT_ARIAL_MT

    INTRO_BRAIN_TEXT = '뇌의 구조와 기능'
    INTRO_BRAIN_TEXT_TYPE = FONT_NANUM_BOLD
    INTRO_VIEW_TEXT = '뇌를 바라보는 다양한 방법'
    INTRO_VIEW_TEXT_TYPE = FONT_NANUM_BOLD
    INTRO_FREQUENCY_TEXT = '뇌파의 주파수'
    INTRO_FREQUENCY_TEXT_TYPE = FONT_NANUM_BOLD
    INTRO_GRAPH_TEXT = '뇌파를 구성하는 요소들'
    INTRO_GRAPH_TEXT_TYPE = FONT_NANUM_BOLD
    INTRO_MONTAGE_TEXT = '전극의 위치'
    INTRO_MONTAGE_TEXT_TYPE = FONT_NANUM_BOLD

    """"""""""""""""""""""""""""""""
    """ Brain Area """
    """"""""""""""""""""""""""""""""

    TEXT_FRONTAL = '전두엽'
    TEXT_PARIETAL = '두정엽'
    TEXT_CENTRAL = '중심부'
    TEXT_OCCIPITAL = '후두부'
    TEXT_TEMPORAL = '측두엽'

    """"""""""""""""""""""""""""""""
    """SUMMARY PAGE ARGUMENT"""
    """"""""""""""""""""""""""""""""
    SUMMARY_TITLE_FONT = FONT_NANUM_EX_BOLD

    EEG_BASED_ANALYSIS_TEXT = '뇌파 기반의 뇌 기능 평가'
    EEG_BASED_ANALYSIS_FONT = FONT_NANUM_EX_BOLD
    EEG_BASED_ANALYSIS_DESC_TEXT = '* 매우낮음, 매우높음 상태는 표준과 비교하여 뇌파 지표가 과하게 높거나 빈약한 상태를 의미합니다.'

    STRESS_IDX_TEXT = '스트레스 지수'
    CONCENTRATION_IDX_TEXT = '집중도 지수'
    COGNITION_IDX_TEXT = '인지능력 지수'
    BRAIN_USE_IDX_TEXT = '뇌 인지부하'
    IDX_FONT = FONT_NANUM_EX_BOLD

    INFO_ANALYSIS_PATTERN_TEXT = '뇌 정보 처리 패턴'
    INFO_ANALYSIS_PATTERN_FONT = FONT_NANUM_EX_BOLD

    INFO_COMPLEXITY_TEXT = '뇌파의 복잡도'
    INFO_SPEED_TEXT = '정보 전달 속도'
    INFO_CONNECTIVITY_TEXT = '좌뇌 우뇌 연결성'

    """"""""""""""""""""""""""""""""
    """SUMMARY DESC PAGE ARGUMENT"""
    """"""""""""""""""""""""""""""""

    FEATURE_TEXT = '지표'
    DESCRIPTION_TEXT = '설명'
    RESULT_TEXT = '결과'

    PERCENTAGE_TEXT = '백분위 %d%%'
    PERCENTAGE_COMPARE_TEXT = 'Pre\n백분위 %d%%\n\nPost\n백분위 %d%%'

    TEXT_STRESS_IDX = '스트레스 지수'
    TEXT_STRESS_DESC = '스트레스와 관련된 종합 지표입니다. 뇌의 Beta, High Beta 파의 크기와 관련이 있습니다 [1, 2].<br/>%s님의 스트레스 지수는 백분위 %d%% 수준입니다.'
    TEXT_STRESS_DESC_TABLE = '스트레스와 관련된 종합 지표\n - 스트레스 증가 시 Frontal Beta power 또는 High Beta power 증가 [1, 2].'

    TEXT_CONCENTRATION_IDX = '집중도 지수'
    TEXT_CONCENTRATION_DESC = '집중도와 관련된 종합 지표입니다. 뇌의 Theta / Beta ratio (TBR)와 관련이 있습니다.<br/>유아기의 ADHD 환자들의 TBR이 다는 연구결과가 있습니다 [3].<br/>%s님의 집중 지수는 백분위 %d%% 수준입니다.'
    TEXT_CONCENTRATION_DESC_TABLE = '집중도와 관련된 종합 지표\n - 아동기 ADHD 환자에서 Theta / Beta ratio (TBR)이 높게 나타남 [3].\n - 성인에서도 주의력 제어가 낮을수록 TBR이 높게 나타남 [4].'

    TEXT_COGNITION_IDX = '인지능력 지수'
    TEXT_COGNITION_DESC = '인지능력과 관련된 종합 지표입니다. 뇌의 Delta 파의 크기 및 Delta / Alpha ratio (DAR)와 관련이 있습니다 [4, 5].<br/>%s님의 인지능력 지수는 백분위 %d%% 수준입니다'
    TEXT_COGNITION_DESC_TABLE = '인지능력과 관련된 종합 지표\n - Delta power 및 Theta power의 크기가 증가할수록 인지능력 감소 [5].'

    TEXT_MEMORY_OPERATE_IDX = '기억력 및 연산력 지수'
    TEXT_MEMORY_OPERATE_DESC = '기억력 및 연산 능력과 관련된 종합 지표입니다. 뇌 Alpha 파의 peak frequency 및 peak power의 크기와 관련이 있습니다.<br/>Alpha파의 peak frequency 및 peak power가 클수록 기억력이 좋고 정보 처리 속도가 빠르다는 연구결과가 있습니다 [6].<br/>하지만 해당 수치가 아주 낮거나 높은 사람이 비언어적 활에서 독창성을 보인다는 연구결과가 있으므로 학습 능력 등의 지표로 직접적으로 사용될 수는 없습니다.<br/>%s님의 기억력 및 연산 속도 지수는 백분위 %d%% 수준입니다'

    TEXT_BRAIN_USE_IDX = '뇌 인지부하'
    TEXT_BRAIN_USE_DESC = '뇌 인지부하는 학습이나 과제 해결 과정에서의 인지적 요구량을 나타내는 종합 지표입니다.<br/>Spectral Edge Frequency 95 (SEF-95)를 사용하였으며 이는 뇌파의 낮은 주파수부터 시작하였을 때, 뇌파의 전체 파워 중 95%%에 해당하는 지점에서의 주파수를 의미합니다.<br/>다중업무(multi tasking) 시에는 증가하는 경향을 나타내며 [7], 안정 시에 높을 경우 정신적 인지부하가 높음을 의미합니다.<br/>%s님의 뇌 인지부하 지수는 백분위 %d%% 수준입니다'
    # TEXT_BRAIN_USE_DESC_TABLE = '뇌 인지부하는 학습이나 과제 해결 과정에서의 인지적 요구량을 나타내는 종합 지표\n - Spectral Edge Frequency 95 (SEF-95)는 전체 파워 중 95%에 해당하는 지점에서의 \n   주파수\n - 다중업무(multi tasking) 시에는 SEF-95가 증가하는 경향을 나타내며 [6], 안정 시에 \n   높을 경우 정신적 인지부하가 높음을 의미.'
    TEXT_BRAIN_USE_DESC_TABLE = '뇌 인지부하는 평소 과한업무에 관련된 인지적 부하의 종합 지표\n - 다중업무(multi tasking) 시에는Spectral Edge Frequency 95 (SEF-95) 가 증가하는 \n   경향을 나타내며[6], 안정 시에 높을 경우 정신적 인지부하가 높음을 의미.\n - SEF-95는 전체 파워 중95%에 해당하는 지점에서의 주파수(아래 그림 참조)'

    TEXT_BRAIN_INFO_IDX = "뇌파의 정보량 지수"
    TEXT_BRAIN_INFO_DESC = "뇌파에 담겨 있는 정보량과 관련된 종합 지표입니다. 뇌파의 Sample Entropy를 이용하여 지표화 했습니다.<br/>Sample Entropy는 뇌파에 반복된 패턴이 많을수록 작아지며 새로운 패턴이 많이 나타날수록 커집니다. 이를 통해 뇌파 속에 얼마나 많은 서로 다른 정보가 들어있는 지를 측정할 수 있습니다.<br/>알츠하이머 환자들의 경우 해당 지표가 낮게 나타난다는 연구결과가 있습니다 [7].<br/>%s님의 뇌파의 정보량 지수는 백분위 %d%% 수준입니다."

    TEXT_BRAIN_COMPLEXITY_IDX = "뇌파의\n복잡도 지수"
    TEXT_BRAIN_COMPLEXITY_DESC = "뇌파의 복잡도와 관련된 종합 지표입니다. 이는 뇌파가 얼마나 복잡한 구조를 지니고 있는지와 예측하기 힘든 패턴을 지니고 있는지에 대한 지표를 종합하여 표현한 수치입니다.<br/>뇌파의 구조적인 복잡도는 Lample-Ziv Complexity (LZ Complexity)를 이용하여 뇌파의 예측가능 정도는 Detrended Fluctuation Analysis (DFA)를 이용하여 수치화 하였습니다.<br/>LZ Complexity의 경우 알츠하이머 환자를 구분하기 위한 지표로 사용될 수 있으며, DFA의 경우 우울증 환자를 구분하기 위한 지표로 사용될 수 있다는 연구결과가 있습니다 [8, 9].<br/>%s님의 뇌파의 복잡 지수는 백분위 %d%% 수준입니다."
    # TEXT_BRAIN_COMPLEXITY_DESC_TABLE = '뇌파의 복잡도와 관련된 종합 지표\n - 복잡도는 뇌파가 가지는 복잡성과 예측가능성을 나타내는 Lample-Ziv Complexity\n   (LZ Complexity), Detrended Fluctuation Analysis (DFA)를 이용하여 수치화\n - LZ Complexity의 경우 알츠하이머 환자를 구분하기 위한 지표로 사용될 수 있으며,\n   DFA의 경우 우울증 환자를 구분하기 위한 지표로 사용될 수 있음 [7, 8]'
    TEXT_BRAIN_COMPLEXITY_DESC_TABLE = '뇌신경망 구조에 대한 복잡한 정도를 나타내는 종합 지표.\n - 뇌파의 복잡성과 예측가능성을 나타내는 비선형 분석 방법(Lempel-Ziv complexity, \n   Detrended fluctuation analysis)을 적용하여 수치화.\n - 특히 낮은 복잡도 수치는 질환(알츠하이머병, 우울증)과의관련성을 나타내고 있음[7, 8].'

    TEXT_BRAIN_INFO_SPEED_IDX = "뇌파 정보의\n전달 속도"
    TEXT_BRAIN_INFO_SPEED_DESC = "여러 스케일에서 뇌파의 정보량을 측정한 뒤 뇌파의 정보량이 주로 얼마나 빠른 주파수 대역에 속해있는 지를 보여주는 지표입니다. 여러 스케일에서의 정보량을 보여주는 Multi Scale Entropy (MSE)와 연관이 있습니다.<br/>높은 스케일에서의 정보량은 낮은 주파수 영역대에서 전달되는 정보량을 의미하며 낮은 스케일에서의 정보량은 높은 주파수 영역대에서 전달되는 정보량을 의미합니다.<br/>알츠하이머 환자 및 조현병 환자는 낮은 주파수 (높은 스케일)에서의 정보량이 높다는 연구 결과가 있습니다 [8, 10].<br/>%s님의 뇌파의 정보 전달 속도는 백분위 %d%% 수준입니다."
    # TEXT_BRAIN_INFO_SPEED_DESC_TABLE = '높은 주파수 영역에서의 뇌파 정보량\n - 특정 주파수 영역에서의 정보량은 Multi Scale Entropy(MSE)를 통해 계산\n - 알츠하이머 환자는 높은 주파수 영역에서의 정보량이 낮게 나타남 [9]'
    TEXT_BRAIN_INFO_SPEED_DESC_TABLE = '뇌파 신호가 가지는 정보량에 대한 종합 지표\n - 특정 주파수 영역에서의 뇌파 정보량을 비선형 분석방법(Multiscale entropy)을 통해 \n   수치화.\n - 알츠하이머 환자에 있어 뇌파에서의 정보량이 낮게 나타남[9].'

    TEXT_BRAIN_CONNECTIVITY_IDX = "좌뇌 우뇌의\n연결성 지수"
    TEXT_BRAIN_CONNECTIVITY_DESC = "뇌의 좌반구와 우반구 사이의 연결성이 얼마나 큰지를 보여주는 지표입니다. 두 채널 사이의 상호 정보량을 Mutual Information (MI)를 이용하여 측정하였습니다. 좌반구와 우반구 사이에서의 MI 지표 값이 상대적으로 크다면 연결성이 크며, 좌반구 내부의 두 채널 또는 우반구 내부의 두 채널 사이의 MI 지표 값이 상대적으로 크다면 연결성이 작은 것입니다.<br/>좌뇌와 우뇌 사이에서의 상호 연결성은 감정적 처리와 관련이 있다고 알려져 있으며, 뇌졸증 후 우울증 환자는 좌뇌 우뇌 연결성이 줄어든다는 연구 결과가 있습니다 [11].<br/>%s님의 좌뇌 우뇌 연결성 지수는 백분위 %d%% 수준입니다."
    TEXT_BRAIN_CONNECTIVITY_DESC_TABLE = '뇌의 좌반구와 우반구 사이의 연결성이 얼마나 큰지를 보여주는 지표\n - 두 채널 사이의 상호 정보량을 나타내는 Mutual Information(MI)를 통해 좌뇌와 우뇌\n   사이의 상호 연결성을 도출\n - 상호 연결성은 감정적 처리와 관련성을 가지고 있으며, 뇌졸증 후 우울증 환자는 감소를\n   나타냄 [10].'

    # TEXT_CONNECTIVITY_FIGURE_DESC = "Mutual Information(MI)은 두 채널 사이의 뇌파가 공유하고 있는 정보의 양을 의미합니다.<br/>아래 두 그림은 좌뇌 우뇌 연결성 지수를 그림으로 표현한 것입니다.<br/>위의 그림은 각 채널 간 연결성 정도를 모두 나타낸 것으로 밝을수록 연결성이 큼을 의미합니다.<br/>아래의 그림은 전체 연결성 중 상위 30개의 연결성을 선으로 이은 것입니다."
    TEXT_CONNECTIVITY_FIGURE_DESC = '연결성: 뇌파의 두 채널 간에 공유하는 정보의 양을 수치화. Mutual Information(MI) 분석을 이용하여 뇌파 채널간의 연결성 정도를 파악. 위의 그림은 밝을수록 연결성이 높음을 의미하며, 아래 그림은 전체 연결성 중 상위 30개를 표시. 좌뇌와 우뇌의 연결성 빈도가 높을수록 연결성이 높게 나타남.'
    FUN_DESC_TABLE_STYLE = [('LINEABOVE', (0, 0), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                            ('LINEBELOW', (0, -1), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                            ('LIGNRIGHT', (0, 0), (1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_WHITE_TEXT),
                            ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
                            ('BACKGROUND', (1, 0), (-1, -1), colors.Color(int('ea', 16) / 255., int('ea', 16) / 255., int('ea', 16) / 255., alpha=0.05)),
                            ('FONTNAME', (0, 0), (0, -1), FONT_NANUM_BOLD),
                            ('FONTNAME', (1, 0), (-1, -1), FONT_NANUM),
                            ('FONTNAME', (1, 0), (1, 0), FONT_NANUM_BOLD),
                            ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
                            ('TEXTCOLOR', (1, 0), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
                            ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
                            ('ALIGNMENT', (0, 0), (0, -1), 'CENTER'),
                            ('ALIGNMENT', (2, 0), (-1, -1), 'CENTER'),
                            ('ALIGNMENT', (1, 0), (1, 0), 'CENTER')
                            ]

    FUN_DESC_TEXT = '주의 - 증상 대비 과도하게 감지된 이상 활동은 측정 환경이나 측정 시 환자의 과도한 움직임에 따른 영향일 수 있습니다. 경우에 따라 다시 측정해주십시오.'

    SUM_TITLE_TEXT_TYPE = FONT_ARIAL

    SUM_PAT_INFO_TEXT = '환자 정보'
    SUM_PAT_INFO_TEXT_TYPE = FONT_NANUM_BOLD

    SUM_SESS_INFO_TEXT_TYPE = FONT_NANUM_BOLD
    SUM_PAT_SYMP_TEXT_TYPE = FONT_NANUM_BOLD

    SUM_FEAT_TEXT_TYPE = FONT_NANUM_BOLD

    SUM_ANAL_RES_TEXT_TYPE = FONT_NANUM_BOLD

    SUM_ANAL_RES_DESC_TEXT_TYPE = FONT_NANUM_BOLD

    SUM_PAT_INFO_TABLE_STYLE = [('LINEABOVE', (0, 0), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                                ('LINEBELOW', (0, -1), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                                ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
                                ('FONTNAME', (0, 0), (0, -1), FONT_NANUM_BOLD),
                                ('FONTNAME', (1, 0), (1, -1), FONT_NANUM),
                                ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
                                ('TEXTCOLOR', (1, 0), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
                                ('VALIGN', (0, 0), (-1, -1), 'MIDDLE')
                                ]

    """"""""""""""""""""""""""""""""
    """ POWER PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    POWER_TITLE_FONT = FONT_ARIAL_MT

    POWER_PAGE_DESC_PRE = '%s님의 '
    POWER_PAGE_DESC_HIGH = '에서의 %s 파 수치가 상위 5%% 이내의 값입니다.'
    POWER_PAGE_DESC_LOW = '에서의 %s 파 수치가 하위 5%% 이내의 값입니다.'

    POWER_RATIO_PAGE_DESC_HIGH = '에서의 %s 수치가 상위 5%% 이내의 값입니다.'
    POWER_RATIO_PAGE_DESC_LOW = '에서의 %s 수치가 하위 5%% 이내의 값입니다.'

    POWER_BAND_FONT = FONT_ARIAL_MT
    POWER_DESC_FONT = FONT_NANUM

    """"""""""""""""""""""""""""""""
    """ALPHA PEAK PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""

    ALPHA_PEAK_DESC_TEXT = 'Alpha peak frequency 및 alpha peak에서의 power의 크기가 기억력 및 연산 능력과 연관이 있다는 연구 결과가 있습니다. 다만, 해당 수치가 아주 낮거나 높은 사람이 비언어적 활동에서 독창성을 보인다는 연구 결과도 있으므로 학습 능력 등의 지표로 직접적으로 사용될 수는 없습니다. [6]'
    ALPHA_PEAK_DESC_FONT = FONT_NANUM

    """"""""""""""""""""""""""""""""
    """FEATURE PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    FEATURE_TITLE_TEXT_TYPE = FONT_ARIAL

    FEATURE_SUBTITLE_TEXT_TYPE = FONT_NANUM

    FEATURE_DESC_TEXT_TYPE = FONT_NANUM
    FEATURE_FEATURE_TEXT_TYPE = FONT_NANUM

    FEATURE_BAND_TEXT_TYPE = FONT_NANUM_BOLD

    PSD_TITLE_TEXT_TYPE = FONT_ARIAL

    PSD_SUBTITLE_TEXT = '파워 스펙트럼 밀도(Power spectral density)'
    PSD_SUBTITLE_TEXT_TYPE = FONT_NANUM

    PSD_DESC_TEXT = '뇌파를 구성하는 주파수 요소의 절대 파워값을 나타내며, 넓은 대역의 주파수 파워값을 쉽게 파악할 수 있습니다.'
    PSD_DESC_TEXT_TYPE = FONT_NANUM

    PEAK_TITLE_TEXT_TYPE = FONT_ARIAL

    # PEAK_DESC_TEXT = 'Alpha peak은 alpha 대역의 power spectrum에서 가장 큰 전력 값과 그 값에서의 주파수를 나타냅니다. 정상인 성인은 보통 9.5-11.5 Hz의 주파수를 보입니다. Alpha peak은 뇌의 기억력 수행 정도, 정보 처리 속도, 시각적 반응 속도를 반영합니다.'
    PEAK_DESC_TEXT = 'Alpha Peak: Alpha 대역의 Power spectrum에서 가장 큰 전력값(Power)과 해당하는 주파수(Frequency)를 나타냄.\n Alpha Peak Frequency는 정상 성인의 경우 보통 9-11.5Hz 사이의 주파수를 가지며, 기억력, 정보처리속도 및 시각적 반응속도를 반영.\n Alpha Peak Power의 증가는 기억력 및 연산 능력과 연관이 있음 [6].'
    PEAK_DESC_TEXT_TYPE = FONT_NANUM

    FEATURE_REF_TEXT_TYPE = FONT_NANUM
    FEATURE_SUM_TEXT_TYPE = FONT_NANUM_BOLD

    """"""""""""""""""""""""""""""""
    """SURVEY PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""

    SURVEY_TITLE_TEXT_TYPE = FONT_ARIAL

    SURVEY_NAME_TEXT_TYPE = FONT_NANUM_BOLD

    SURVEY_LEVEL_LABEL_TEXT_TYPE = FONT_NANUM_BOLD

    SURVEY_COMMENT_TEXT_TYPE = FONT_NANUM_BOLD

    SURVEY_DESC_TEXT_1 = '본 설문지는 SCAN 웹 대시보드를 통해 환자가 작성한 결과를 토대로 점수가 반영 되었습니다.'
    SURVEY_DESC_TEXT_2 = '실제 설문지를 환자가 작성하였는지 다시 한 번 확인해 주시고, 본 결과지는 진단의 보조지표로만 사용하여 주십시오.'
    SURVEY_DESC_TEXT_TYPE = FONT_NANUM

    SURVEY_TABLE_STYLE = [('LINEABOVE', (0, 0), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                          ('LINEBELOW', (0, -1), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                          ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
                          ('FONTNAME', (0, 0), (0, -1), FONT_NANUM_BOLD),
                          ('FONTNAME', (1, 0), (1, -1), FONT_NANUM),
                          ('FONTSIZE', (0, 0), (-1, -1), 35 * Constants.UNIT_PIXEL),
                          ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
                          ('TEXTCOLOR', (1, 0), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
                          ('VALIGN', (0, 0), (-1, -1), 'MIDDLE')
                          ]

    """"""""""""""""""""""""""""""""
    """REFER PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    REFER_TITLE_TEXT_TYPE = FONT_ARIAL_MT

    REFER_NUMBER_TEXT_TYPE = FONT_TIMES_NEW_ROMAN

    REFER_REF_TEXT_TYPE = FONT_TIMES_NEW_ROMAN

    """"""""""""""""""""""""""""""""
    """ Compare Page Text """
    """"""""""""""""""""""""""""""""

    CMP_ANAL_TEXT_TYPE = FONT_NANUM_BOLD
    CMP_ANAL_TEXT = '전후 비교 분석'
    CMP_ANAL_FEATURE_TEXT_TYPE = FONT_ARIAL_BLACK
    CMP_REF_TEXT_TYPE = FONT_NANUM

    DELTA_POW_DESC_LIST = [
        # ('Delta 파 활동은 기억의 형성을 돕습니다', 11),
        # ('특히, Delta 파의 relative power는 언어적 활동, 집중 등의 기능과 연관이 있다고 알려져 있습니다', 12),
        # ('과도한, Delta 파는 인지능력과 관련된 질병과 관련이 있다고도 알려져 있습니다', 13),
        # ('이런 Delta 파는 수명 전반에 걸쳐 점차 감소하며 대부분의 감소는 40대 중반 이후에 나타납니다', 14)
        ('숙면 상태(generating deep sleep)와 관계', None),
        (' - 주파수 대역: 1-4(Hz)', None),
        (' - 기억의 형성을 돕거나 인지능력과 관련된 질병과 관련이 있음.', [11, 12, 13, 14])
    ]

    THETA_POW_DESC_LIST = [
        # ('Theta 파는 인지 및 기억 성능에 반영된다는 증거가 제시 되고 있습니다. 좋은 퍼포먼스는 Theta 파의 감소와 관련이 있으며, 다양한 인지 장애를 가진 대상체에서 Theta 파가 증가합니다', 15),
        # ('Theta 파의 파워는 인지 성능 및 뇌 성숙도와 음의 상관 관계가 있다고 알려져 있습니다', 15),
        # ('Theta 파의 증가는 새로운 정보를 받아들이는 능력이 줄어드는 것을 의미합니다', 15)
        ('졸음(drowsiness)과 관계', None),
        (' - 주파수 대역: 4-8(Hz)', None),
        (' - 명상, 수면, 환영, 영감에 관련을 가지며, 인지능력 및 뇌 성숙도 감소에 따라 증가함을 나타냄.', 15)
    ]

    ALPHA_POW_DESC_LIST = [
        # ('Alpha 파는 창의성을 요구하는 다양한 일들과 관련이 있으며 특히 frontal 및 right parietal 영역에서의 증가와 관련이 있다고 알려져 있습니다', 16),
        # ('Alpha 파는 나이에 따라 감소하며, 신경 퇴행성 장애에서는 더 많이 감소한다고 알려져 있습니다', 17)
        ('안정(relax) 및 차분한 상태(Calm state)와 관계', None),
        (' - 주파수 대역: 8-12(Hz)', None),
        (' - 창의성을 요구하는 다양한 일들과 관련이 있으며, 일반적으로 노화에 따라 감소하고 신경퇴행성 장애에서는 더욱 급격한 감소가 나타남.', [16, 17])
    ]

    BETA_POW_DESC_LIST = [
        # ('Beta 파는 바쁘고 불안한 사고 및 집중 정도와 관련이 있다고 알려져 있습니다', 18)
        ('주의(attention) 및 집중(concentration)과 관계', None),
        (' - 주파수 대역: 12-25(Hz)', None),
        (' - 인지처리 및 의식적 활동에 활성화되며, 집중의 정도와 관련이 있음.', 18)
    ]

    HIGH_BETA_POW_DESC_LIST = [
        # ('Beta 파와 비슷하게 High beta 파 역시 바쁘고 불안한 사고 및 집중 정도와 관련이 있다고 알려져 있습니다', 18)
        ('불안(anxiety), 스트레스(stress), 긴장(tension)과 관계', None),
        (' - 주파수 대역: 25-30(Hz)', None),
        (' - 불안 빛 스트레스 상태에서 더욱 활성화되며, 높은 흥분 상태를 반영함.', 18)
    ]

    GAMMA_POW_DESC_LIST = [
        # ('Gamma 파는 인식, 집중, 기억, 의식 및 다양한 뇌 기능에 참여하며 인식 형성에도 관여한다고 알려져 있습니다', [19, 20])
        ('학습(learning), 회상(reminiscence), 선택적 집중(selective concentration)과 관계', None),
        (' - 주파수 대역: 30-40(Hz)', None),
        (' - 높은 수준의 인지 처리(highest level cognitive processing), 판단(judgement) 등의 다양한 뇌 기능에 참여하며 인식 형성에도 관여.', [19, 20])
    ]

    DAR_POW_DESC_LIST = [
        # ('Delta Alpha Ratio(DAR)은 뇌졸중 후의 인지 능력 결손 및 관련 임상의 조기 선별 검사에서 사용될 수 있다고 알려져 있습니다', 21)
        ('DAR은 Delta파와 Alpha파의 power 비율 [Delta/Alpha ratio]을 의미하며, 인지능력 저하와 관련이 있음.', 21)
    ]

    TAR_POW_DESC_LIST = [
        # ('최근 연구에서 Theta Alpha Ratio(TAR)은 노인의 인지 능력에 대한 잠재적인 지표로 여겨집니다. amnestic mild cognitive impairment 환자들의 frontal 및 temporal 영역에서의 TAR이 증가하는 것으로 알려져 있습니다', 22)
        ('Theta/Alpha ratio(TAR)는 고령자의 인지능력 저하에 따라 Frontal 및 Temporal 영역에서 증가함', 22)
    ]

    TBR_POW_DESC_LIST = [
        # ('frontal 영역에서의 Theta Beta Ratio(TBR)은 집중력과 음의 상관 관계를 가진다고 알려져 있습니다', 23),
        # ('인지 능력이 요구되는 경우에도 TBR이 유의미한 지표로 쓰일 수 있다는 연구 결과가 있습니다', 24)
        ('Theta/Beta ratio(TBR)는 Frontal 영역에서 증가할수록 집중력이 감소함을 보임', 23),
        ('인지능력에도 관련이 있음', 24)
    ]

    POW_DESC_LIST = {
        'Delta': DELTA_POW_DESC_LIST,
        'Theta': THETA_POW_DESC_LIST,
        'Alpha': ALPHA_POW_DESC_LIST,
        'Beta': BETA_POW_DESC_LIST,
        'High Beta': HIGH_BETA_POW_DESC_LIST,
        'Gamma': GAMMA_POW_DESC_LIST,
        'DAR': DAR_POW_DESC_LIST,
        'TAR': TAR_POW_DESC_LIST,
        'TBR': TBR_POW_DESC_LIST,
    }

    REFERENCE_LIST = {
        'abs_power_Beta_stress': (1,
                                  'Saeed, Sanay Muhammad & Anwar, Syed & Majid, Muhammad & Awais, Muhammad & Alnowami, Majdi. (2018). Selection of Neural Oscillatory Features for Human Stress Classification with Single Channel EEG Headset. BioMed Research International. 2018. 1-8.'),
        'rel_power_Beta_stress': (2,
                                  'Tee, Yi Wen & Mohd Aris, Siti Armiza. (2020). Electroencephalogram (EEG) stress analysis on alpha/beta ratio and theta/beta ratio. Indonesian Journal of Electrical Engineering and Computer Science. 17. 175. 10.11591/ijeecs.v17.i1.pp175-182. '),
        'rat_power_TBR_concentration': (3,
                                        'Clarke, A. R., Barry, R. J., McCARTHY, R. O. R. Y., & Selikowitz, M. (2001). Electroencephalogram differences in two subtypes of attention-deficit/hyperactivity disorder. Psychophysiology, 38(2), 212-221.'),
        'TBR_concentration_adult': (4,
                                    "Angelos Angelidis, Willem van der Does, Lemmy Schakel, Peter Putman, “Frontal EEG theta/beta ratio as an elec-trophysiological marker for attentional control and its test-retest reliability.” Biological Psychology (2016):49-52."),
        'Delta_cognition': (5,
                            "Babiloni, Claudio & Percio, Claudio & Lizio, Roberta & Noce, Giuseppe & Cordone, Susanna & Lopez, Susanna & Soricelli, Andrea & Ferri, Raffaele & Pascarelli, Maria & Nobili, Flavio & Arnaldi, Dario & Famà, Francesco & Aarsland, Dag & Orzi, Francesco & Buttinelli, Carla & Giubilei, Franco & Onofrj, Marco & Stocchi, Fabrizio & Stirpe, Paola & De Pandis, Maria Francesca. (2017). Abnormalities of Cortical Neural Synchronization Mechanisms in Subjects with Mild Cognitive Impairment due to Alzheimer’s and Parkinson’s Diseases: An EEG Study. Journal of Alzheimer's Disease. 59. 1-20."),
        'sef_brain_of_use': (6,
                             'Shriram, Revati & Sundhararajan, Dr & Daimiwal, Nivedita. “EEG Based Cognitive Workload Assessment for Maximum Efficiency.” IOSR Journal of Electronics and Communication Engineering (IOSR-JECE) (2012):34-38.'),
        'lzc_ad': (7,
                   'Hornero, Roberto, et al. "Nonlinear analysis of electroencephalogram and magnetoencephalogram recordings in patients with Alzheimer disease." Philosophical Transactions of the Royal Society A: Mathematical, Physical and Engineering Sciences 367.1887 (2009): 317-336.'),
        'dfa_complexity': (8,
                           'Hosseinifard, Behshad, Mohammad Hassan Moradi, and Reza Rostami. "Classifying depression patients and normal subjects using machine learning techniques and nonlinear features from EEG signal." Computer methods and programs in biomedicine 109.3 (2013): 339-345.'),
        'mse_ad': (
            9,
            'Mizuno, Tomoyuki, et al. "Assessment of EEG dynamical complexity in Alzheimer’s disease using multiscale entropy." Clinical Neurophysiology 121.9 (2010): 1438-1446.'),
        'mi_connectivity': (10,
                            'Sun, Changcheng, et al. "Mutual information-based brain network analysis in post-stroke patients with different levels of depression." Frontiers in Human Neuroscience 12 (2018): 285.'),
        # 'delta_1': (11, 'Harmony, T. (2013). The functional significance of delta oscillations in cognitive processing. Frontiers in Integrative Neuroscience, 7.'),
        'delta_2': (
            11,
            'Hobson, J., & Pace-Schott, E. (2002). The Cognitive Neuroscience of Sleep: Neuronal Systems, Consciousness and Learning. Nature Reviews Neuroscience, 3(9), 679-693.'),
        'delta_3': (
            12,
            'Finnigan, S., & Robertson, I. H. (2011). Resting EEG theta power correlates with cognitive performance in healthy older adults. Psychophysiology, 48(8), 1083–1087.'),
        'delta_4': (13,
                    'Huang, C., et al. "Discrimination of Alzheimers disease and mild cognitive impairment by equivalent EEG sources: a cross-sectional and longitudinal study." Clinical Neurophysiology 111.11 (2000): 1961-1967.'),
        'delta_5': (14,
                    'Colrain, I. M., Crowley, K. E., Nicholas, C. L., Afifi, L., Baker, F. C., Padilla, M., et al. (2010). Sleep evoked delta frequency responses show a linear decline in amplitude across the adult lifespan. [Article]. Neurobiology of Aging, 31(5), 874-883.'),
        'theta_1': (
            15, 'Klimesch, W. (1999). EEG alpha and theta oscillations reflect cognitive and memory performance: a review and analysis. Brain Research Reviews, 29(2-3), 169–195.'),
        'alpha_1': (16, 'Fink, A., & Benedek, M. (2014). EEG alpha power and creative ideation. Neuroscience & Biobehavioral Reviews, 44, 111–123.'),
        'alpha_2': (17,
                    'Chiang A. K. I., Rennie C. J., Robinson P. A., Van Albada S. J., Kerr C. C. (2011). Age trends and sex differences of alpha rhythms including split alpha peaks. Clin. Neurophysiol. 122,1505–1517.'),
        # 'beta_1': (
        #     19, 'Scholz, S., Schneider, S. L., & Rose, M. (2017). Differential effects of ongoing EEG beta and theta power on memory formation. PLOS ONE, 12(2), e0171913..'),
        'beta_2': (18,
                   'Baumeister J, Barthel T, Geiss KR, Weiss M (2008). "Influence of phosphatidylserine on cognitive performance and cortical activity after induced stress". Nutritional Neuroscience. 11 (3): 103–110.'),
        'gamma_1': (19,
                    'Uhlhaas P.J., Haenschel C., Nikolić D., Singer W. The role of oscillations and synchrony in cortical networks and their putative relevance for the pathophysiology of schizophrenia. Schizophr. Bull. 2008;34:927–943.'),
        'gamma_2': (20, 'Buzsaki, György (2006). "Cycle 9, The Gamma Buzz". Rhythms of the brain. Oxford. ISBN 978-0195301069.'),
        'dar': (21,
                'Schleiger, E., Sheikh, N., Rowland, T., Wong, A., Read, S., & Finnigan, S. (2014). Frontal EEG delta/alpha ratio and screening for post-stroke cognitive deficits: The power of four electrodes. International Journal of Psychophysiology, 94(1), 19–24.'),
        'tar': (22,
                'Bian, Z., Li, Q., Wang, L., Lu, C., Yin, S., & Li, X. (2014). Relative power and coherence of EEG series are related to amnestic mild cognitive impairment in diabetes. Frontiers in Aging Neuroscience, 6.'),
        'tbr_1': (23,
                  'Rodriguez-Larios, J., & Alaerts, K. (2019). Tracking Transient Changes in the Neural Frequency Architecture: Harmonic Relationships between Theta and Alpha Peaks Facilitate Cognitive Performance. The Journal of Neuroscience, 39(32), 6291–6298.'),
        'tbr_2': (24,
                  'Barry, R. J., Clarke, A. R., & Johnstone, S. J. (2003). A review of electrophysiology in attentiondeficit/hyperactivity disorder: I. Qualitative and quantitative electroencephalography. Clin Neurophysiol, 114(2), 171-183.'),
        # 'abs_rel_power_review': (12,
        #                          'Sun, Changcheng, et al. "Mutual information-based brain network analysis in post-stroke patients with different levels of depression." Frontiers in Human Neuroscience 12 (2018): 285.'),
        # 'alpha_asym_anxiety': (13,
        #                        'Mathersul, Danielle & Williams, Leanne & Hopkinson, Patrick & Kemp, Andrew. (2008). Investigating Models of Affect: Relationships Among EEG Alpha Asymmetry, Depression, and Anxiety. Emotion (Washington, D.C.). 8. 560-72.'),
        # # 'alpha_asym_mdd': (14, 'Cantisani, Andrea & Koenig, Thomas & Horn, Helge & Müller, Thomas & Strik, Werner & Walther, Sebastian. (2015). Psychomotor retardation is linked to frontal alpha asymmetry in major depression. Journal of affective disorders. 188. 167-172.')
        # 'coh_schizo': (14,
        #                'Kam, Julia & Bolbecker, Amanda & Odonnell, Brian & Hetrick, William & Brenner, Colleen. (2013). Resting State EEG Power and Coherence Abnormalities in Bipolar Disorder and Schizophrenia. Journal of psychiatric research. 47.'),
        # 'coh_parkinson': (15,
        #                   'Teramoto, Hiroko & Morita, Akihiko & Ninomiya, Satoko & Akimoto, Takayoshi & Shiota, Hiroshi & Kamei, Satoshi. (2016). Relation between Resting State Front-Parietal EEG Coherence and Executive Function in Parkinson’s Disease. BioMed Research International. 2016.'),
    }

    ABS_POW_DESC_LIST_REVIEW = [
        ('성인 ADHD, 유아기 ADHD, 알콜 중독, 우울증, 강박 장애, 조현병 환자들의 Delta 파의 Absolute power가 일반인에 비해 높다는 연구 결과가 있습니다.', 12),
        ('자폐증 환자들의 Delta 파의 Absolute power가 일반인에 비해 낮다는 연구 결과가 있습니다.', 12),
        ('유아기 ADHD, 우울증, 강박 장애, 조현병 환자들의 Theta 파의 Absolute power가 일반인에 비해 높다는 연구 결과가 있습니다.', 12),
        ('강박 장애, 조현병 환자들의 Alpha 파의 Absolute power가 일반인에 비해 낮다는 연구 결과가 있습니다.', 12),
        ('불안을 동반한 우울증 환자들의 Alpha 파의 Absolute power가 우측 두정엽 부위에서 일반인에 비해 낮다는 연구 결과가 있습니다.', 13),
        ('알콜 중독, 우울증 환자들의 Beta 파의 Absolute power가 일반인에 비해 높다는 연구 결과가 있습니다.', 12),
        ('유아기 ADHD, 자폐증, 인터넷 중독 환자들의 Beta 파의 Absolute power가 일반인에 비해 낮다는 연구 결과가 있습니다.', 12)
    ]

    REL_POW_DESC_LIST_REVIEW = [
        ('알콜 중독, 강박 장애, 조현병 환자들의 Delta 파의 Relative power가 일반인에 비해 높다는 연구 결과가 있습니다.', 12),
        ('유아기 ADHD 환자들의 Delta 파의 Relative power가 일반인에 비해 낮다는 연구 결과가 있습니다.', 12),
        ('유아기 ADHD, 강박 장애 환자들의 Theta 파의 Relative power가 일반인에 비해 높다는 연구 결과가 있습니다.', 12),
        ('강박 장애 환자들의 Alpha 파의 Relative power가 일반인에 비해 낮다는 연구 결과가 있습니다.', 12),
        ('알콜 중독 환자들의 Beta 파의 Relative power가 일반인에 비해 높다는 연구 결과가 있습니다.', 12),
        ('유아기 ADHD 환자들의 Beta 파의 Relative power가 일반인에 비해 낮다는 연구 결과가 있습니다.', 12)
    ]

    POW_RAT_DESC_LIST_REVIEW = [
        ('유아기 ADHD 환자들의 Theta Beta Ratio (TBR)가 일반인에 비해 높다는 연구 결과가 있습니다.', 3)
    ]

    ASYM_DESC_LIST_REVIEW = [
        ('불안 증세를 보이는 환자들은 정상인에 비해 Alpha 파가 전두엽 우반구에서 더 크게 편향된 방향으로 나타난다는 연구 결과가 있습니다.', 13),
        # ('우울증 한자들의 Alpha 파가 전두엽 좌반구에서 더 크게 편향된 방향으로 나타난다는 연구 결과가 있습니다.', 14)
    ]

    COH_DESC_LIST_REVIEW = [
        ('조현병 환자들의 Delta 파가 inter-hemisphere coherence가 크다는 연구 결과가 있습니다.', 14),
        ('파킨슨병 환자들의 Alpha 파가 좌반구에서 더 작다는 연구 결과가 있습니다.', 15)
    ]

    FEATURE_DESC_LIST_REVIEW = {
        'Absolute Power': ABS_POW_DESC_LIST_REVIEW,
        'Relative Power': REL_POW_DESC_LIST_REVIEW,
        'Asymmetry': ASYM_DESC_LIST_REVIEW,
        'Coherence': COH_DESC_LIST_REVIEW,
        'Power Ratio': POW_RAT_DESC_LIST_REVIEW
    }

    FAKE_ABS_POW = {
        'Delta': np.array([8, 2, 2, 1, 2, 2, 8, 7, 2, 3, 1, 3, 1, 1, 1, 5, 2, 1, 3]),
        'Theta': np.array([0.3, 1, 1, 0.76, 0.1, 0.55, 0.23, 1, 0.56, 0.23, 0.45, 0.34, 0.22, 2, 0.41, 0.89, 0.12, 0.67, 0.3]),
        'Alpha': np.array([0.35, 0.8, 0.23, 0.5, 0.34, 0.222, 0.7, 0.55, 0.34, 0.9, 0.332, 0.3, 0.23, 0.67, 0.44, 1, 0.2, 0.187, 0.55]),
        'Beta': np.array([0.1, 0.3, 0.12, 0.18, 0.22, 0.19, 0.11, 0.2, 0.3, 0.12, 0.26, 0.12, 0.11, 0.11, 0.2, 0.27, 0.23, 0.32, 0.22]),
        'High Beta': np.array([0.8, 0.7, 0.23, 0.14, 0.23, 0.24, 0.13, 0.3, 0.1, 0.23, 0.17, 0.2, 0.11, 0.5, 0.12, 0.21, 0.19, 0.13, 0.4]),
        'Gamma': np.array([0.8, 0.2, 0.145, 0.09, 0.19, 0.101, 0.19, 0.2, 0.18, 0.218, 0.2, 0.21, 0.105, 0.1, 0.209, 0.23, 0.018, 0.21, 0.11])
    }

    APP_FEATURE_TABLE_STYLE = [('LINEABOVE', (0, 0), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                               ('LINEBELOW', (0, -1), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                               ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
                               ('FONTNAME', (0, 0), (0, -1), FONT_NANUM_BOLD),
                               ('FONTNAME', (0, 0), (-1, 0), FONT_NANUM_BOLD),
                               ('FONTNAME', (1, 1), (-1, -1), FONT_NANUM),
                               ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
                               # ('TEXTCOLOR', (1, 0), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
                               ('VALIGN', (0, 0), (-1, -1), 'MIDDLE')
                               ]

    """"""""""""""""""""""""""""""""
    """SUMMARY PAGE ARGUMENT"""
    """"""""""""""""""""""""""""""""
    APPENDIX_TITLE_FONT = FONT_NANUM_EX_BOLD

    APPENDIX_ANALYSIS_TEXT = 'Power analysis 해석'
    APPENDIX_ANALYSIS_FONT = FONT_NANUM_EX_BOLD