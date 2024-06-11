python main.py \
    --data_root '.' \
    --train_data_path webface4m \
    --val_data_path webface4m \
    --prefix ir101_webface4m_smaface \
    --use_wandb \
    --use_16bit \
    --arch ir_101 \
    --batch_size 512 \
    --num_workers 16 \
    --low_res_augmentation_prob 0.2 \
    --crop_augmentation_prob 0.2 \
    --photometric_augmentation_prob 0.2 \
    --gpus 1 \
    --epochs 30 \
    --lr_milestones 12,20,24 \
    --lr 0.1 \
    --head smaface \
    --m 0.4 \
    --h 0.333 \
    --alpha 1.0 \
    --p_0 0.6
