import os

import mne.io
import numpy as np
from file_io import read_file
from request_example import TEST_INFO
from analysis import get_age
from preprocess import make_epoch_custom_raw
from analysis import make_analysis, make_analysis_fake, make_cmp_analysis
from y_report_analysis import YReportAnalysis
from y_report_compare import YReportCompare
from library import tf_model
import constants
import argparse
import sys
from config.cfg import cfg
import config.cfg as config
from tqdm import tqdm
from pathlib import Path
from warnings import simplefilter
import pyedflib
from analysis_hrv import analysis_hrv
from plot_hrv import plot_hrv_figure
from y_report_hrv import YReportHRV


def make_compare_analysis(crt_ytdf_file, crt_edf_data, info_crt, cmp_ytdf_file, cmp_edf_data, info_cmp, request_id, language='Korean', model=None):
    age = get_age(info_crt['subject']['birthday'])

    if not cfg.DEBUG_MODE:
        pre_art_removed_custom_raw = make_epoch_custom_raw(cmp_ytdf_file, cmp_edf_data, request_id, crt_prefix='cmp', model=model)
        pst_art_removed_custom_raw = make_epoch_custom_raw(crt_ytdf_file, crt_edf_data, request_id, crt_prefix='crt', model=model)
        cmp_cdf_dict, raw_data_dict = make_analysis(art_removed_custom_raw=pre_art_removed_custom_raw,
                                                    request_id=request_id,
                                                    crt_prefix='cmp',
                                                    language=language,
                                                    age=age)

        crt_cdf_dict, raw_data_dict = make_analysis(art_removed_custom_raw=pst_art_removed_custom_raw,
                                                    request_id=request_id,
                                                    crt_prefix='crt',
                                                    language=language,
                                                    age=age)

        make_cmp_analysis(pre_art_removed_custom_raw, pst_art_removed_custom_raw, request_id, 'diff')
    else:
        cmp_cdf_dict, raw_data_dict = make_analysis_fake()
        crt_cdf_dict, raw_data_dict = make_analysis_fake()

    return make_compare_report(request_id, info_crt, info_cmp, language=language, crt_cdf_dict=crt_cdf_dict,
                               cmp_cdf_dict=cmp_cdf_dict)


def make_compare_report(request_id, info_crt, info_cmp, crt_cdf_dict, cmp_cdf_dict, language='Korean', for_eeg=True):
    if 'anlzRequest' in info_crt.keys():
        appendix_page = info_crt['anlzRequest']['appendix']
    else:
        appendix_page = False

    yr = YReportCompare(request_id, info_crt, info_cmp, language='Korean')

    yr.make_compare_report_pdf(cover_page=for_eeg, functional_abnormal_page=for_eeg, power_page=for_eeg,
                               psd_ch_page=for_eeg, alpha_peak_page=for_eeg, connectivity_page=for_eeg,
                               reference_page=for_eeg, appendix_page=appendix_page,
                               appendix_feature_page=for_eeg, crt_cdf_dict=crt_cdf_dict, cmp_cdf_dict=cmp_cdf_dict)
    return yr.path


def make_single_analysis(crt_ytdf_file, crt_edf_data, request_id, info_crt, language='Korean', model=None):
    age = get_age(info_crt['subject']['birthday'])

    if crt_ytdf_file is None and crt_edf_data is None:
        for_eeg = False
        cdf_dict = None
        raw_data_dict = None
        return
    else:
        for_eeg = True
        if not cfg.DEBUG_MODE:
            art_removed_custom_raw = make_epoch_custom_raw(crt_ytdf_file, data_edf=crt_edf_data, request_id=request_id, crt_prefix='crt', model=model)
            cdf_dict, raw_data_dict = make_analysis(art_removed_custom_raw=art_removed_custom_raw,
                                                    request_id=request_id,
                                                    crt_prefix='crt',
                                                    language=language,
                                                    age=age)
        else:
            cdf_dict, raw_data_dict = make_analysis_fake(request_id=request_id,
                                                         crt_prefix='crt',
                                                         language=language,
                                                         age=age)

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
    if len(crt_file_name.split('.')) == 2:
        info['anlzRequest']['id'] = crt_file_name.split('.')[0]
    else:
        info['anlzRequest']['id'] = crt_file_name.split('.')[1]
    request_id = str(info["anlzRequest"]["id"])

    if not cfg.DUPLICATE:
        if Path(cfg.OUT_DIR, request_id).exists():
            raise Exception('Already exists: %s' % (Path(cfg.OUT_DIR, request_id)))

    if cfg.DEBUG_MODE:
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
    info['anlzRequest']['id'] = crt_file_name.split('.')[0]
    request_id = str(info["anlzRequest"]["id"])

    if cfg.DEBUG_MODE:
        crt_ytdf_ref_file = None
        crt_edf_data = {}
        crt_edf_data['data'] = np.array([])
        crt_edf_data['fs'] = 500
        crt_edf_data['ch_names'] = constants.YBRAIN_CH_LIST
        crt_edf_data['data_types'] = []
        for i in range(19):
            crt_edf_data['data_types'].append('eeg')

        cmp_ytdf_ref_file = None
        cmp_edf_data = {}
        cmp_edf_data['data'] = np.array([])
        cmp_edf_data['fs'] = 500
        cmp_edf_data['ch_names'] = constants.YBRAIN_CH_LIST
        cmp_edf_data['data_types'] = []
        for i in range(19):
            cmp_edf_data['data_types'].append('eeg')
    else:

        if not cfg.DUPLICATE:
            if Path(cfg.OUT_DIR, request_id).exists():
                raise Exception('Already exists: %s' % (Path(cfg.OUT_DIR, request_id)))

        crt_ytdf_ref_file, crt_edf_data = read_file(info, crt_file_name)
        cmp_ytdf_ref_file, cmp_edf_data = read_file(info, cmp_file_name)

    make_compare_analysis(crt_ytdf_file=crt_ytdf_ref_file, crt_edf_data=crt_edf_data,
                          cmp_ytdf_file=cmp_ytdf_ref_file, cmp_edf_data=cmp_edf_data, request_id=request_id,
                          info_crt=info, info_cmp=info, language=language, model=model)


def indiv_analysis_ecg(info, crt_file_name, language, model):
    if len(crt_file_name.split('.')) == 2:
        info['anlzRequest']['id'] = crt_file_name.split('.')[0]
    else:
        info['anlzRequest']['id'] = crt_file_name.split('.')[1]
    request_id = str(info["anlzRequest"]["id"])

    if not cfg.DUPLICATE:
        if Path(cfg.OUT_DIR, request_id).exists():
            raise Exception('Already exists: %s' % (Path(cfg.OUT_DIR, request_id)))

    raw = mne.io.read_raw_edf(crt_file_name)
    data = raw.get_data()
    if len(data.shape) == 2:
        data = data[0]
    fs = int(raw.info['sfreq'])
    analysis_data, fs, feature, plot_feature = analysis_hrv(data, fs, birthday=info['subject']['birthday'], dummy_data=False, save_path=Path(cfg.OUT_DIR, request_id))
    z_score_graph = plot_hrv_figure(analysis_data, fs, 0, feature, plot_feature, info, Path(cfg.OUT_DIR, request_id))
    yr_hrv = YReportHRV(request_id, info, feature, z_score_graph)
    yr_hrv.make_single_report_pdf()
    return str(Path(cfg.OUT_DIR, request_id, 'y_report_hrv.pdf'))


def analysis_ecg(info, crt_file_name, language='Korean', model=None):
    indiv_analysis_ecg(info, crt_file_name, language, model)


def analysis_eeg(info, crt_file_name, language='Korean', model=None):
    indiv_analysis_eeg(info, crt_file_name, language, model)


def compare_eeg(info, crt_file_name, cmp_file_name, language='Korean', model=None):
    comp_analysis_eeg(info, crt_file_name, cmp_file_name, language, model)


def gather_file(path_dir, total_file_list):
    for file_name in os.listdir(path_dir):
        if os.path.isdir(os.path.join(path_dir, file_name)):
            gather_file(os.path.join(path_dir, file_name), total_file_list)
        else:
            if (lambda s: s in os.path.join(path_dir, file_name))('.edf'):
                total_file_list.append(os.path.join(path_dir, file_name))


def parse_file_list(source_path):
    file_list = []
    if Path(source_path).is_dir():
        gather_file(source_path, file_list)
    else:
        file_list.append(source_path)
    return file_list


def main():
    simplefilter(action='ignore', category=DeprecationWarning)

    parser = argparse.ArgumentParser(description='eeg file analysis.')
    parser.add_argument('--mode', type=str, choices=['analysis', 'compare'], help='Select mode')
    parser.add_argument('--path', type=str, help='file or folder directory')
    parser.add_argument('--old_path', type=str, help='older file path only for compare mode')
    parser.add_argument('--config', type=str, default='./config/config_file.yaml', help='path to configure file')
    parser.add_argument("opts", default=None, nargs=argparse.REMAINDER, help='remainder arguments')
    args = parser.parse_args()

    config.load_cfg(args.config)
    cfg.merge_from_list(args.opts)
    config.assert_cfg()
    cfg.freeze()

    if args.mode == 'analysis':
        print("Analysis starts")
        for src_path in tqdm(parse_file_list(args.path)):
            try:
                print("%s starts" % src_path)
                reader = pyedflib.EdfReader(src_path)
                if reader.getSignalLabels()[0] == 'ECG':
                    # continue
                    analysis_ecg(TEST_INFO, src_path, language=cfg.LANGUAGE, model=tf_model.default())
                else:
                    analysis_eeg(TEST_INFO, src_path, language=cfg.LANGUAGE, model=tf_model.default())
            except Exception as instance:
                inst_message = instance.args[0]
                print("%s failed: %s" % (src_path, inst_message))
    elif args.mode == 'compare':
        config.load_cfg('./config/config_file_compare.yaml')
        print("Compare analysis starts")
        try:
            print("%s vs %s starts" % (args.path, args.old_path))
            compare_eeg(TEST_INFO, args.path, args.old_path, language=cfg.LANGUAGE, model=tf_model.default())
        except Exception as instance:
            inst_message = instance.args[0]
            print("%s vs %s failed: %s" % (args.path, args.old_path, inst_message))
        pass


if __name__ == '__main__':
    # sys.argv = ['main.py',
    #             '--mode', 'analysis',
    #             '--path', 'testdata/ad',
    #             'OUT_DIR', 'output',
    #             'FEATURE', 'True',
    #             'PREPROCESS', 'False',
    #             'DUPLICATE', 'True',
    #             'DEBUG_MODE', 'False']
    # sys.argv = ['main.py', '--mode', 'analysis', '--path', 'testdata', 'OUT_DIR', 'output', 'PREPROCESS', 'True', 'DEBUG_MODE', 'False']
    # sys.argv = ['main.py', '--mode', 'compare', '--path', 'kim20210813-204049.edf', '--old_path', 'kim.edf', 'OUT_DIR', 'output', 'DEBUG_MODE',
    #             'True']
    main()
