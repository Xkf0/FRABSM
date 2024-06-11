DATAROOT='.'



python main.py \
    --data_root ${DATAROOT} \
    --train_data_path webface4m/imgs \
    --val_data_path webface4m \
    --prefix smaface_ir50_webface4m \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir50_webface4m_smaface/.ckpt \
    --batch_size 256 \
    --arch ir_50 \
    --evaluate
    
python main.py \
    --data_root ${DATAROOT} \
    --train_data_path webface4m/imgs \
    --val_data_path webface4m \
    --prefix smaface_ir50_webface4m \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir50_webface4m_smaface/.ckpt \
    --batch_size 256 \
    --arch ir_50 \
    --evaluate
