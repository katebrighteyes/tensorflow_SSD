# ssd_traing_export : Virtual Box
#######################################################

# This is guide for 10 minutes training on Virtual Box.
So it can NEVER be perfect training !!

#######################################################

# venv setting

cd

git clone https://github.com/katebrighteyes/tensorflow_SSD

cd tensorflow_SSD

chmod 777 *.sh

# 1-0 start settings & VENV

./1_startSetting.sh

cd ~/tf_ssd

source venvssd/bin/activate


# 2-0 install model and check

## You must do this after activate venv !!

cp ~/tensorflow_SSD/2_prepare.sh ./

./2_prepare.sh

------------Just you can see "OK" -> it is ok !!
------------------------------------------------------------------------

# 3-2 tfrecord 준비

cd ~/tf_ssd

sudo ls /media/sf_SharedVBImage/ex/

sudo cp /media/sf_SharedVBImage/ex/tfrecord.zip ./

sudo chmod 777 ./tfrecord.zip

unzip tfrecord.zip

===========================================
# 3-3 train model modify

cp ~/tensorflow_SSD/ssd_inception_v2_coco.config ~/tf_ssd/tod/train_models/research/object_detection/samples/configs/

mkdir ~/tf_ssd/tod/save_models/ 

mkdir ~/tf_ssd/tod/save_models/coco_test

# 바로 트레이닝을 할때는 3-4 아니면 다시 시작할때는 3-5
# 3-4 train

cd ~/tf_ssd/tod/train_models/research

cp ~/tensorflow_SSD/3_train_ex.sh ./

./3_train_ex.sh

-------------------------------------------------

# 3-5 다시 트레이닝을 할때

## VENV 상태가 아니라면 active 부터

source ./venvssd/bin/activate

## ~/tf_ssd/tod/save_models/coco_test 폴더에 파일이 있는지 확인 !! 

## 파일탐색기로 확인 후 파일이 있으면 삭제 혹은 백업

cd ~/tf_ssd/tod/train_models/research

export PYTHONPATH=$PYTHONPATH:/home/opencv-mds/tf_ssd/tod/train_models/research:/home/opencv-mds/tf_ssd/tod/train_models/research/slim

protoc object_detection/protos/*.proto --python_out=.

python object_detection/builders/model_builder_test.py

## OK 확인 !!

gedit 6_retrain.sh

## 3_train_ex.sh 의 7 ~ 21 line 복사해넣고 저장 

chmod 777 6_retrain.sh

./6_retrain.sh

# 3-7 Export pb

gedit 7_export.sh

## 7_export.sh 복사해넣고 저장 

chmod 777 7_export.sh

./7_export.sh






