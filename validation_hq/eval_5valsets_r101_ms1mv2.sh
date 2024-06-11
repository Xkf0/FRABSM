DATAROOT='.'



python main.py \
    --data_root ${DATAROOT} \
    --train_data_path faces_emore/imgs \
    --val_data_path faces_emore \
    --prefix smaface_ir101_ms1mv2 \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir101_ms1mv2_smaface/.ckpt \
    --batch_size 512 \
    --arch ir_101 \
    --evaluate
    
python main.py \
    --data_root ${DATAROOT} \
    --train_data_path faces_emore/imgs \
    --val_data_path faces_emore \
    --prefix smaface_ir101_ms1mv2 \
    --gpus 1 \
    --use_16bit \
    --start_from_model_statedict ./experiments/ir101_ms1mv2_smaface/.ckpt \
    --batch_size 512 \
    --arch ir_101 \
    --evaluate
