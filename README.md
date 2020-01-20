# ssd_traing_export : Virtual Box
#######################################################

# This is guide for 10 minutes training on Virtual Box.
So it can NEVER be perfect training !!

#######################################################

# venv setting

cd

git clone https://github.com/katebrighteyes/tensorflow_SSD

# 2-0 install model and check

cp ~/tensorflow_SSD/prepare.sh ./

chmod 777 prepare.sh

./prepare.sh

------------Just you can see "OK" -> it is ok !!
------------------------------------------------------------------------

# 3-2 tfrecord 준비

sudo ls /media/sf_SharedVBImage/ex/

sudo cp /media/sf_SharedVBImage/ex/tfrecord.zip ./

sudo chmod 777 ./tfrecord.zip

unzip tfrecord.zip

===========================================
# 3-3 train model modify

cp ~/tensorflow_SSD/ssd_inception_v2_coco.config ~/tf_ssd/tod/train_models/research/object_detection/samples/configs/

mkdir ~/tf_ssd/tod/save_models/ 

mkdir ~/tf_ssd/tod/save_models/coco_test
