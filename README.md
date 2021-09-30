# eeg_analysis

python main.py 를 통해 실행

--mode analysis : 개별 분석 하기 (feature extraction 및 directory를 path로 설정하기 가능)
       compare  : 비교 분석 하기 (feature extraction 및 directory를 path로 설정하기 불가능)
       
--path {directory path} : (개별 분석만 가능) 해당 directory 내부의 모든 file을 분석
       {file path} : (개별 분석 시) 해당 file을 분석
       {file path} : (비교 분석 시) 해당 file을 최신 결과로 분석
       
--old_path {file path} : (비교 분석만 가능) 해당 file을 예전 결과로 분석

--OUT_DIR {directory path} : 결과물이 저장될 directory

--FEATURE boolean : 분석된 feature value를 export하여 저장할 것인지 말 것인지를 결정 (TRUE: 저장, FALSE: 저장하지 않음)

--ONLY_POWER boolean : power feature만 저장하고 나머지 feature들은 저장하지 않을 때 사용 (TRUE: power feature만 추출, FALSE: 모든 feature를 추출)

--REPORT boolean : report를 생성할 것인지 생성하지 않을 것인지를 결정 (TRUE: report 생성 과정 진행, FALSE: report 생성 과정 생략)

--PREPROCESS boolean : preprocessing 된 뇌파 데이터를 새로운 edf 파일로 저장할 것인지 말 것인지를 결정 (TRUE: 저장, FALSE: 저장하지 않음)

--DUPLICATE boolean : 해당 OUT_DIR에 이름이 같은 이미 분석된 결과가 있을 때 분석을 진행할 것인지 하지 않을 것인지 결정 (TRUE: 진행, FALSE: 진행하지 않음)

--DEBUG_MODE boolean : report 등의 UI 작업 시에 빠른 debugging을 위한 debug mode로 실행할 것인지 말 것인지를 결정 (TRUE: debug mode, FALSE: general mode)


* HRV feature 분석도 가능합니다. 개별 분석만 가능하며 위와 동일하게 사용하되 edf 파일 내부에 채널 정보가 ecg로 labelling 되어 있으면 자동으로 HRV 분석으로 진행됩니다.

EX) 
1. ./sample_data 폴더에 있는 모든 edf 파일을 분석하고 전처리된 뇌파를 저장하고 파워 피쳐만 저장한다. 그리고 report는 생성하지 않고 결과물은 ./out_sample_data에 저장한다
   python main.py --mode analysis --path ./sample_data --OUT_DIR ./out_sample_data --FEATURE True --ONLY_FEATURE True --REPORT False --PREPROCESS True
   
2. ./old.edf와 ./new.edf 파일을 비교 분석하여 report를 생성하고 결과물은 ./out_compare에 저장한다.
   python main.py --mode compare --path ./new.edf --old_path ./old.edf --OUT_DIR ./out_compare
