import os
import numpy as np
from file_io import read_file
from request_example import TEST_INFO
from analysis import get_age
from preprocess import make_epoch_custom_raw
from analysis import make_analysis, make_analysis_fake
from y_report_analysis import YReportAnalysis
import tf_model
import constants

DEBUG_MODE = True


def make_compare_analysis(crt_ytdf_file, crt_edf_data, info_crt, cmp_ytdf_file, cmp_edf_data, info_cmp, request_id, language='Korean', model=None):
    age = get_age(info_crt['subject']['birthday'])

    pre_art_removed_custom_raw = make_epoch_custom_raw(cmp_ytdf_file, cmp_edf_data, request_id, crt_prefix='cmp', model=model)
    pst_art_removed_custom_raw = make_epoch_custom_raw(crt_ytdf_file, crt_edf_data, request_id, crt_prefix='crt', model=model)

    cmp_cdf_dict, raw_data_dict = make_analysis(
        art_removed_custom_raw=pre_art_removed_custom_raw,
        request_id=request_id,
        crt_prefix='cmp',
        language=language,
        age=age)
    crt_cdf_dict, raw_data_dict = make_analysis(
        art_removed_custom_raw=pst_art_removed_custom_raw,
        request_id=request_id,
        crt_prefix='crt',
        language=language,
        age=age)

    make_cmp_analysis(pre_art_removed_custom_raw, pst_art_removed_custom_raw, request_id, 'diff')
    return make_compare_report(request_id, info_crt, info_cmp, language=language, crt_cdf_dict=crt_cdf_dict,
                               cmp_cdf_dict=cmp_cdf_dict)


def make_single_analysis(crt_ytdf_file, crt_edf_data, request_id, info_crt, language='Korean', model=None):
    age = get_age(info_crt['subject']['birthday'])

    if crt_ytdf_file is None and crt_edf_data is None:
        for_eeg = False
        cdf_dict = None
        raw_data_dict = None
    else:
        for_eeg = True
        if not DEBUG_MODE:
            art_removed_custom_raw = make_epoch_custom_raw(crt_ytdf_file, data_edf=crt_edf_data, request_id=request_id, crt_prefix='crt', model=model)
            cdf_dict, raw_data_dict = make_analysis(art_removed_custom_raw=art_removed_custom_raw,
                                                    request_id=request_id,
                                                    crt_prefix='crt',
                                                    language=language,
                                                    age=age)
        else:
            cdf_dict, raw_data_dict = make_analysis_fake()
    os.makedirs(str(request_id), exist_ok=True)
    return make_indiv_report(request_id, info_crt, language=language, for_eeg=for_eeg, cdf_dict=cdf_dict,
                             raw_data_dict=raw_data_dict)


def make_indiv_report(request_id, info, cdf_dict, raw_data_dict, language='Korean', for_eeg=True):
    if 'anlzRequest' in info.keys():
        appendix_page = info['anlzRequest']['appendix']
        survey_page = info['anlzRequest']['hasSurvey']
    else:
        appendix_page = False
        survey_page = False

    yr = YReportAnalysis(request_id, info, language=language)

    yr.make_single_report_pdf(cover_page=for_eeg, functional_abnormal_page=for_eeg, power_page=for_eeg,
                              psd_ch_page=for_eeg, alpha_peak_page=for_eeg, connectivity_page=for_eeg,
                              survey_page=survey_page, reference_page=for_eeg, appendix_page=appendix_page,
                              appendix_feature_page=for_eeg, cdf_dict=cdf_dict, raw_data_dict=raw_data_dict)
    return yr.path


def indiv_analysis_eeg(info, crt_file_name, language='Korean', model=None):
    info['anlzRequest']['id'] = crt_file_name.split('/')[-1].split('.')[0]
    request_id = str(info["anlzRequest"]["id"])
    if DEBUG_MODE:
        crt_ytdf_ref_file = None
        crt_edf_data = {}
        crt_edf_data['data'] = np.array([])
        crt_edf_data['fs'] = 500
        crt_edf_data['ch_names'] = constants.YBRAIN_CH_LIST
        crt_edf_data['data_types'] = []
        for i in range(19):
            crt_edf_data['data_types'].append('eeg')
    else:
        crt_ytdf_ref_file, crt_edf_data = read_file(info, crt_file_name)
    make_single_analysis(crt_ytdf_file=crt_ytdf_ref_file, crt_edf_data=crt_edf_data, request_id=request_id, info_crt=info,
                         language=language, model=model)


def comp_analysis_eeg(info, crt_file_name, cmp_file_name, language='Korean', model=None):
    info['anlzRequest']['id'] = crt_file_name.split('/')[-1].split('.')[0]
    request_id = str(info["anlzRequest"]["id"])

    crt_ytdf_ref_file, crt_edf_data = read_file(info, crt_file_name)
    cmp_ytdf_ref_file, cmp_edf_data = read_file(info, cmp_file_name)

    make_compare_analysis(crt_ytdf_file=crt_ytdf_ref_file, crt_edf_data=crt_edf_data,
                          cmp_ytdf_file=cmp_ytdf_ref_file, cmp_edf_data=cmp_edf_data, request_id=request_id,
                          info_crt=info, info_cmp=info, language=language, model=model)


def analysis_eeg(info, crt_file_name, cmp_file_name=None, language='Korean', model=None):
    if cmp_file_name is None:
        indiv_analysis_eeg(info, crt_file_name, language, model)

    else:
        comp_analysis_eeg(info, crt_file_name, cmp_file_name, language, model)


def main():
    for fn in os.listdir('./testdata/'):
        if fn.endswith('20210727-110725.edf'):
            print(fn)
            try:
                analysis_eeg(TEST_INFO, os.path.join('./testdata/', fn), language='Korean', model=tf_model.default())
            except:
                print("%s failed" % fn)


if __name__ == '__main__':
    main()
