DATAROOT='.'



python main.py \
    --data_root ${DATAROOT} \
    --train_data_path faces_emore/imgs \
    --val_data_path faces_emore \
    --prefix smaface_ir50_ms1mv2 \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir50_ms1mv2_smaface/.ckpt \
    --batch_size 256 \
    --arch ir_50 \
    --evaluate
    
python main.py \
    --data_root ${DATAROOT} \
    --train_data_path faces_emore/imgs \
    --val_data_path faces_emore \
    --prefix smaface_ir50_ms1mv2 \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir50_ms1mv2_smaface/.ckpt \
    --batch_size 256 \
    --arch ir_50 \
    --evaluate
