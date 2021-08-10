import reportlab.lib.colors as colors
from y_report_def import Constants
import numpy as np


class JapaneseConstants(Constants):
    FONT_ARIAL = 'Arial'
    FONT_ARIAL_MT = 'ArialMT'
    FONT_ARIAL_BLACK = 'Arial-Black'
    FONT_TIMES_NEW_ROMAN = 'Times-New-Roman'
    FONT_TIMES_NEW_ROMAN_ITALIC = 'Times-New-Roman-Italic'
    FONT_KOSUGI_MARU_EX_BOLD = 'Kosugi-Maru-Regular'
    FONT_KOSUGI_MARU_REGULAR = 'Kosugi-Maru-Regular'
    FONT_KOSUGI_MARU_BOLD = 'Kosugi-Maru-Regular'

    """"""""""""""""""""""""""""""""
    """COMMON PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    CMN_YB_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR
    CMN_PAGE_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR

    """"""""""""""""""""""""""""""""
    """COVER PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    COVER_VER_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR
    COVER_BRAIN_TEXT_TYPE = FONT_ARIAL_MT
    COVER_INFO_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    COVER_NAME_TEXT = '氏名'
    COVER_DATE_TEXT = '生年月日'
    COVER_AGE_TEXT = '年齢'
    COVER_GENDER_TEXT = '性別'
    TEXT_FEMALE = '女'
    TEXT_MALE = '男'
    TEXT_RIGHT_HAND = '右手'
    TEXT_BOTH_HAND = '両手'
    TEXT_LEFT_HAND = '左手'
    COVER_HAND_TEXT = '主に使用する手'
    COVER_CONTENT_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR

    COVER_YB_INFO_TEXT = 'Ybrain、 www.ybrain.com'
    COVER_YB_INFO_TYPE = FONT_KOSUGI_MARU_REGULAR

    """"""""""""""""""""""""""""""""
    """INTRO PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    INTRO_TITLE_TEXT_TYPE = FONT_ARIAL_MT

    INTRO_BRAIN_TEXT = '脳の構造と機能'
    INTRO_BRAIN_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD
    INTRO_VIEW_TEXT = '脳を見渡す多用な方法'
    INTRO_VIEW_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD
    INTRO_FREQUENCY_TEXT = '脳波の周波数'
    INTRO_FREQUENCY_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD
    INTRO_GRAPH_TEXT = '脳波を構成する要素'
    INTRO_GRAPH_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD
    INTRO_MONTAGE_TEXT = '電極の位置'
    INTRO_MONTAGE_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    """"""""""""""""""""""""""""""""
    """ Brain Area """
    """"""""""""""""""""""""""""""""

    TEXT_FRONTAL = '前頭葉'
    TEXT_PARIETAL = '頭頂葉'
    TEXT_CENTRAL = '中心部'
    TEXT_OCCIPITAL = '後頭部'
    TEXT_TEMPORAL = '側頭葉'

    """"""""""""""""""""""""""""""""
    """SUMMARY PAGE ARGUMENT"""
    """"""""""""""""""""""""""""""""
    SUMMARY_TITLE_FONT = FONT_KOSUGI_MARU_EX_BOLD

    EEG_BASED_ANALYSIS_TEXT = '脳波基盤の脳機能評価'
    EEG_BASED_ANALYSIS_FONT = FONT_KOSUGI_MARU_EX_BOLD
    EEG_BASED_ANALYSIS_DESC_TEXT = '* とても低い、とても高い状態は標準値と比較して脳波の指標が高すぎる状態もしくは弱すぎる状態を意味します。'

    STRESS_IDX_TEXT = 'ストレス指数'
    CONCENTRATION_IDX_TEXT = '集中度指数'
    COGNITION_IDX_TEXT = '認知能力指数'
    BRAIN_USE_IDX_TEXT = '脳の認知負荷　'
    IDX_FONT = FONT_KOSUGI_MARU_EX_BOLD

    INFO_ANALYSIS_PATTERN_TEXT = '脳の情報処理パターン'
    INFO_ANALYSIS_PATTERN_FONT = FONT_KOSUGI_MARU_EX_BOLD

    INFO_COMPLEXITY_TEXT = '脳波の複雑度'
    INFO_SPEED_TEXT = '情報伝達速度'
    INFO_CONNECTIVITY_TEXT = '左脳・右脳の連結性'

    """"""""""""""""""""""""""""""""
    """SUMMARY DESC PAGE ARGUMENT"""
    """"""""""""""""""""""""""""""""

    FEATURE_TEXT = '指標'
    DESCRIPTION_TEXT = '説明'
    RESULT_TEXT = '結果'

    PERCENTAGE_TEXT = '百分率 %d%%'
    PERCENTAGE_COMPARE_TEXT = 'Pre\n百分率 %d%%\n\nPost\n百分率 %d%%'

    TEXT_STRESS_IDX = 'ストレス指数'
    TEXT_STRESS_DESC_TABLE = 'ストレスと関連した総合指標\n - ストレス増加時にFrontal Beta powerまたはHigh Beta power増加[1, 2]。'

    TEXT_CONCENTRATION_IDX = '集中度指数'
    TEXT_CONCENTRATION_DESC_TABLE = '集中度と関連した総合指標\n - 児童期のADHD患者でTheta / Beta ratio (TBR)が高く表れる[3]。\n - 成人でも注意力の制御が低い程、TBRが高く表れる[4]。'

    TEXT_COGNITION_IDX = '認知能力指数'
    TEXT_COGNITION_DESC_TABLE = '集中度と関連した総合指標\n - Delta power及びTheta powerが増加する程、認知能力は減少[5]。'

    TEXT_BRAIN_USE_IDX = '脳の認知負荷'
    TEXT_BRAIN_USE_DESC_TABLE = '脳の認知負荷は、学習や課題解決の過程で認知的要求量を求める総合指標\n - Spectral Edge Frequency 95 (SEF-95)は、全体パワーの内95％に該当する支点での周波数\n - 多重課題(multi tasking)時には、SEF-95が増加する傾向が表れる[6]。安静時に高い場合は、精神的認知負荷が高いことを意味する。'

    TEXT_BRAIN_COMPLEXITY_IDX = "脳波の\n複雑度指数"
    TEXT_BRAIN_COMPLEXITY_DESC_TABLE = '脳波の複雑度と関連した総合指標\n - 複雑度は、脳波が持った複雑性と予測可能性を表すLample-Ziv Complexity (LZ Complexity), Detrended Fluctuation Analysis (DFA)を利用して数値化。LZ Complexityの場合、アルツハイマー患者を区分するための指標として使用することができる。また、DFAの場合、憂鬱症患者を区分するための指標として使用することもある。[7, 8]'

    TEXT_BRAIN_INFO_SPEED_IDX = "情報伝達速度"
    TEXT_BRAIN_INFO_SPEED_DESC_TABLE = '高い周波数領域での脳波情報量\n - 特定周波数領域での情報量はMulti Scale Entropy(MSE)を通じて計算。\n - アルツハイマー患者は、高い周波数領域での情報量が低く表れる[9]。'

    TEXT_BRAIN_CONNECTIVITY_IDX = "左脳・右脳の\n連結性指数"
    TEXT_BRAIN_CONNECTIVITY_DESC_TABLE = '脳の左半球と右半球の間で連結性がどれだけ大きいかを見せる指標\n - 二つのチャンネル間の相互情報量を表すMutual Information(MI)を通じて左脳と右脳間の総合連結性を導出。\n - 総合連結性は、感情的処理と関連性を持っており、脳卒中後憂鬱症患者は減少を表す[10]。'

    TEXT_CONNECTIVITY_FIGURE_DESC = "Mutual Information(MI)は、二つのチャンネル間で脳波が共有している情報の量を意味します。<br/>下記二つの図は、左脳と右脳の連結性指数を図として表現したものです。<br/>上記の図は、各チャンネル間の連結性を全部表したもので、明るいほど連結性が大きいことを意味します。<br/>下記の図は、全体連結性の中で上位15個の連結性を線で繋いだものです。"

    FUN_DESC_TABLE_STYLE = [('LINEABOVE', (0, 0), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                            ('LINEBELOW', (0, -1), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                            ('LIGNRIGHT', (0, 0), (1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_WHITE_TEXT),
                            ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
                            ('BACKGROUND', (1, 0), (-1, -1), colors.Color(int('ea', 16) / 255., int('ea', 16) / 255., int('ea', 16) / 255., alpha=0.05)),
                            ('FONTNAME', (0, 0), (0, -1), FONT_KOSUGI_MARU_BOLD),
                            ('FONTNAME', (1, 0), (-1, -1), FONT_KOSUGI_MARU_REGULAR),
                            ('FONTNAME', (1, 0), (1, 0), FONT_KOSUGI_MARU_BOLD),
                            ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
                            ('TEXTCOLOR', (1, 0), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
                            ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
                            ('ALIGNMENT', (0, 0), (0, -1), 'CENTER'),
                            ('ALIGNMENT', (2, 0), (-1, -1), 'CENTER'),
                            ('ALIGNMENT', (1, 0), (1, 0), 'CENTER')
                            ]

    FUN_DESC_TEXT = '注意 – 症状に比べて過度に感知された異常活動は、測定環境や測定時の患者の過度な動きによる影響である可能性があります。場合によっては再度測定する必要があります。'

    SUM_TITLE_TEXT_TYPE = FONT_ARIAL

    SUM_PAT_INFO_TEXT = '患者情報'
    SUM_PAT_INFO_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    SUM_SESS_INFO_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD
    SUM_PAT_SYMP_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    SUM_FEAT_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    SUM_ANAL_RES_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    SUM_ANAL_RES_DESC_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    SUM_PAT_INFO_TABLE_STYLE = [('LINEABOVE', (0, 0), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                                ('LINEBELOW', (0, -1), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                                ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
                                ('FONTNAME', (0, 0), (0, -1), FONT_KOSUGI_MARU_BOLD),
                                ('FONTNAME', (1, 0), (1, -1), FONT_KOSUGI_MARU_REGULAR),
                                ('TEXTCOLOR', (0, 0), (0, -1), colors.Color(int('22', 16) / 255., int('22', 16) / 255., int('22', 16) / 255., alpha=1.)),
                                ('TEXTCOLOR', (1, 0), (1, -1), colors.Color(int('55', 16) / 255., int('55', 16) / 255., int('55', 16) / 255., alpha=1.)),
                                ('VALIGN', (0, 0), (-1, -1), 'MIDDLE')
                                ]

    """"""""""""""""""""""""""""""""
    """ POWER PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    POWER_TITLE_FONT = FONT_ARIAL_MT

    POWER_PAGE_DESC_PRE = '%s様の'
    POWER_PAGE_DESC_HIGH = 'での%s波数値が上位5%以内です。'
    POWER_PAGE_DESC_LOW = 'での%s波数値が下位5%以内です。'

    POWER_RATIO_PAGE_DESC_HIGH = 'での%s数値が上位5%以内です。'
    POWER_RATIO_PAGE_DESC_LOW = 'での%s数値が下位5%以内です。'

    POWER_BAND_FONT = FONT_ARIAL_MT
    POWER_DESC_FONT = FONT_KOSUGI_MARU_REGULAR

    """"""""""""""""""""""""""""""""
    """ALPHA PEAK PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""

    ALPHA_PEAK_DESC_TEXT = 'Alpha peak frequency及びalpha peakでのpowerが記憶力及び演算能力と連関しているという研究結果があります。但し、該当数値が非常に低かったり、高かったりする人が非言語的活動で独創性を見せたという研究結果もあるので、学習能力等の指標として直接的に使用することはできません。[6]'
    ALPHA_PEAK_DESC_FONT = FONT_KOSUGI_MARU_REGULAR

    """"""""""""""""""""""""""""""""
    """FEATURE PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""
    FEATURE_TITLE_TEXT_TYPE = FONT_ARIAL

    FEATURE_SUBTITLE_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR

    FEATURE_DESC_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR
    FEATURE_FEATURE_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR

    FEATURE_BAND_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    PSD_TITLE_TEXT_TYPE = FONT_ARIAL

    PSD_SUBTITLE_TEXT = 'パワースペクトラム密度(Power spectral density)'
    PSD_SUBTITLE_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR

    PSD_DESC_TEXT = '脳波を構成する周波数要素の絶対パワー値を表します。広い帯域の周波数のパワー値を簡単に把握することができます。'
    PSD_DESC_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR

    PEAK_TITLE_TEXT_TYPE = FONT_ARIAL

    PEAK_DESC_TEXT = 'Alpha peakは、alpha 帯域の power spectrum で最も大きい電力値とその値からの周波数を指します。成人正常人は、通常9.5-11.5Hzの周波数を出します。Alpha peak は、脳の記憶力遂行程度、\n情報処理速度、視覚的反応速度を反映します。'
    PEAK_DESC_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR

    FEATURE_REF_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR
    FEATURE_SUM_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    """"""""""""""""""""""""""""""""
    """SURVEY PAGE DESIGN ARGUMENT"""
    """"""""""""""""""""""""""""""""

    SURVEY_TITLE_TEXT_TYPE = FONT_ARIAL

    SURVEY_NAME_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    SURVEY_LEVEL_LABEL_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    SURVEY_COMMENT_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD

    SURVEY_DESC_TEXT_1 = '本質問紙は、SCANウェブダッシュボードを通じて患者が作成した結果を土台に点数が反映されました。'
    SURVEY_DESC_TEXT_2 = '実際質問紙を患者が作成したかどうかもう一度確認をお願いします。本結果紙は、診断の補助的指標としてのみ使用してください。'
    SURVEY_DESC_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR

    SURVEY_TABLE_STYLE = [('LINEABOVE', (0, 0), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                          ('LINEBELOW', (0, -1), (-1, -1), 1 * Constants.UNIT_PIXEL, Constants.Y_BLUE),
                          ('BACKGROUND', (0, 0), (0, -1), colors.Color(int('45', 16) / 255., int('89', 16) / 255., int('e1', 16) / 255., alpha=0.05)),
                          ('FONTNAME', (0, 0), (0, -1), FONT_KOSUGI_MARU_BOLD),
                          ('FONTNAME', (1, 0), (1, -1), FONT_KOSUGI_MARU_REGULAR),
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

    CMP_ANAL_TEXT_TYPE = FONT_KOSUGI_MARU_BOLD
    CMP_ANAL_TEXT = '前後比較分析'
    CMP_ANAL_FEATURE_TEXT_TYPE = FONT_ARIAL_BLACK
    CMP_REF_TEXT_TYPE = FONT_KOSUGI_MARU_REGULAR

    DELTA_POW_DESC_LIST = [
        # ('Delta 파의 증가는 내부 집중력을 방해하는 sensory afference의 억제와 관련이 있습니다', 11),
        ('Delta波活動は、記憶の形成に役に立ちます', 11),
        ('特に、Delta波のrelative powerは言語的活動、集中などの機能と連関していると言われています', 12),
        ('過度なDelta波は、認知能力と関連した疾病と関わりがあると言われています', 13),
        ('このようなDelta波は、寿命全般にかけて徐々に減少し、大部分の減少は40代以降に現れます', 14)
    ]

    THETA_POW_DESC_LIST = [
        ('Theta波は、認知及び記憶性能に反映されるという証拠が提示されています。良いパフォーマンスは、Theta波の減少に関わっていて、多様な認知障害を持った対象でTheta波が増加します', 15),
        ('Theta波のパワーは、認知性能及び脳の成熟と陰と関係すると言われています', 15),
        ('Theta波の増加は、新しい情報を受け入れる能力が減っていくのを意味します', 15)
    ]

    ALPHA_POW_DESC_LIST = [
        ('Alpha波は、創意性を要求する多様なことに関連しており、特にfrontal及びright parietal領域での増加と関連していると言われています', 16),
        ('Alpha波は、年を取っていくと減少し、神経退行性障害ではさらに減少すると言われています', 17)
    ]

    BETA_POW_DESC_LIST = [
        # ('Beta 파의 증가는 기억력 증진 상태를 반영합니다', 19),
        ('Beta波は、忙しくて不安な思考及び集中度と関連していると言われています', 18)
    ]

    HIGH_BETA_POW_DESC_LIST = [
        ('Beta波と類似してHigh Beta波も忙しくて不安な思考及び集中度と関連していると言われています', 18)
    ]

    GAMMA_POW_DESC_LIST = [
        ('Gamma波は、認識、集中、記憶、意識及び多様な脳の機能に関わっており、認識形成にも関わていると言われています', [19, 20])
    ]

    DAR_POW_DESC_LIST = [
        ('Delta Alpha Ratio(DAR)は、脳卒中後の認知能力欠損及び関連臨床の早期選別検査で利用できると言われています', 21)
    ]

    TAR_POW_DESC_LIST = [
        ('最近の研究では、Theta Alpha Ratio(TAR)は老人の認知能力に対する潜在的な指標として使われています。Amnestic mild cognitive impairment患者のfrontal及びtemporal領域でTARが増加すると言われています', 22)
    ]

    TBR_POW_DESC_LIST = [
        ('Frontal領域でTheta Beta Ratio(TBR)は集中力と陰の相関関係を持つと言われています', 23),
        ('認知能力が要求される場合でもTBRが有意味な指標として使えるという研究結果があります', 24)
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

    FAKE_ABS_POW = {
        'Delta': np.array([8, 2, 2, 1, 2, 2, 8, 7, 2, 3, 1, 3, 1, 1, 1, 5, 2, 1, 3]),
        'Theta': np.array([0.3, 1, 1, 0.76, 0.1, 0.55, 0.23, 1, 0.56, 0.23, 0.45, 0.34, 0.22, 2, 0.41, 0.89, 0.12, 0.67, 0.3]),
        'Alpha': np.array([0.35, 0.8, 0.23, 0.5, 0.34, 0.222, 0.7, 0.55, 0.34, 0.9, 0.332, 0.3, 0.23, 0.67, 0.44, 1, 0.2, 0.187, 0.55]),
        'Beta': np.array([0.1, 0.3, 0.12, 0.18, 0.22, 0.19, 0.11, 0.2, 0.3, 0.12, 0.26, 0.12, 0.11, 0.11, 0.2, 0.27, 0.23, 0.32, 0.22]),
        'High Beta': np.array([0.8, 0.7, 0.23, 0.14, 0.23, 0.24, 0.13, 0.3, 0.1, 0.23, 0.17, 0.2, 0.11, 0.5, 0.12, 0.21, 0.19, 0.13, 0.4]),
        'Gamma': np.array([0.8, 0.2, 0.145, 0.09, 0.19, 0.101, 0.19, 0.2, 0.18, 0.218, 0.2, 0.21, 0.105, 0.1, 0.209, 0.23, 0.018, 0.21, 0.11])
    }

    INTRO_BRAIN_IMG = './img/img-brain-jp.png'
