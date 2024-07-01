DATAROOT='.'



python main.py \
    --data_root ${DATAROOT} \
    --train_data_path ms1m-retinaface-t1/imgs \
    --val_data_path ms1m-retinaface-t1 \
    --prefix frabsm_ir101_ms1mv3 \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir101_ms1mv3_frabsm/.ckpt \
    --batch_size 512 \
    --arch ir_101 \
    --evaluate
    
python main.py \
    --data_root ${DATAROOT} \
    --train_data_path ms1m-retinaface-t1/imgs \
    --val_data_path ms1m-retinaface-t1 \
    --prefix frabsm_ir101_ms1mv3 \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir101_ms1mv3_frabsm/.ckpt \
    --batch_size 512 \
    --arch ir_101 \
    --evaluate
