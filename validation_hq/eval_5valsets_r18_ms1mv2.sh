DATAROOT='.'



python main.py \
    --data_root ${DATAROOT} \
    --train_data_path faces_emore/imgs \
    --val_data_path faces_emore \
    --prefix frabsm_ir18_ms1mv2 \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir18_ms1mv2_frabsm/.ckpt \
    --batch_size 256 \
    --arch ir_18 \
    --evaluate
    
python main.py \
    --data_root ${DATAROOT} \
    --train_data_path faces_emore/imgs \
    --val_data_path faces_emore \
    --prefix frabsm_ir18_ms1mv2 \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir18_ms1mv2_frabsm/.ckpt \
    --batch_size 256 \
    --arch ir_18 \
    --evaluate
