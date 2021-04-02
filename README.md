# guide for PC (with GPU)

ssd_traing_export
#######################################################


#######################################################

# docker image pull

sudo nvidia-docker pull tensorflow/tensorflow:1.15.3-gpu-py3-jupyter


## make folder for docker container

cd /

sudo mkdir tf_ssd

cd tf_ssd

sudo chmod 777 .

#########################################

# docker container

sudo nvidia-docker run --name TFSSD -it -d --net=host \
 -v "/tf_ssd:/rf_ssd" \
 tensorflow/tensorflow:1.15.3-gpu-py3-jupyter

sudo docker exec -it TFSSD /bin/bash

sudo docker restart TFSSD

# 2-0 install package
