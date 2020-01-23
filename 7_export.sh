INPUT_TYPE=image_tensor

PIPELINE_CONFIG_PATH='/home/opencv-mds/tf_ssd/tod/train_models/research/object_detection/samples/configs/ssd_inception_v2_coco.config'

TRAINED_CKPT_PREFIX='/home/opencv-mds/tf_ssd/tod/save_models/coco_test/model.ckpt-20'

mkdir ~/tf_ssd/tod/pbfiles

EXPORT_DIR='/home/opencv-mds/tf_ssd/tod/pbfiles'

python object_detection/export_inference_graph.py --input_type=${INPUT_TYPE} --pipeline_config_path=${PIPELINE_CONFIG_PATH} --trained_checkpoint_prefix=${TRAINED_CKPT_PREFIX} --output_directory=${EXPORT_DIR}

ls ~/tf_ssd/tod/pbfiles/


