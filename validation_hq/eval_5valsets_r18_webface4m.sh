DATAROOT='.'



python main.py \
    --data_root ${DATAROOT} \
    --train_data_path webface4m/imgs \
    --val_data_path webface4m \
    --prefix frabsm_ir18_webface4m \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir18_webface4m_frabsm/.ckpt \
    --batch_size 256 \
    --arch ir_18 \
    --evaluate
    
python main.py \
    --data_root ${DATAROOT} \
    --train_data_path webface4m/imgs \
    --val_data_path webface4m \
    --prefix frabsm_ir18_webface4m \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir18_webface4m_frabsm/.ckpt \
    --batch_size 256 \
    --arch ir_18 \
    --evaluate
