#!/bin/bash
#usage: python xxx.py file_name
dataname="MH_01_easy"
#dataname="MH_02_easy"
#dataname="MH_03_medium"
#dataname="MH_04_difficult"
#dataname="MH_05_difficult"
#dataname="V2_03_difficult"
#dataname="V1_03_difficult"
    # run dso
     ./build/bin/dso_dataset \
 	  files0=/home/user/data/${dataname}/mav0/cam0/data \
	  files1=/home/user/data/${dataname}/mav0/cam1/data \
 	  calib0=/home/user/repos/calib/euroc/cam0.txt \
	  calib1=/home/user/repos/calib/euroc/cam1.txt \
	  T_stereo=/home/user/repos/calib/euroc/T_C0C1.txt \
	  imu_info=/home/user/repos/calib/euroc/IMU_info.txt \
	  groundtruth=/home/user/data/${dataname}/mav0/state_groundtruth_estimate0/data.csv \
	  imudata=/home/user/data/${dataname}/mav0/imu0/data.csv \
	  pic_timestamp=/home/user/data/${dataname}/mav0/cam0/data.csv \
	  pic_timestamp1=/home/user/data/${dataname}/mav0/cam1/data.csv \
 	  preset=0 mode=1 \
	  quiet=1 nomt=1 \
          savefile_tail=nt_${dataname}\
     	  use_stereo=1\
	  imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0.5


