#!/bin/sh

python train.py --gpu -1 --dataset_dir /nfs/ug/thesis/thesis0/mkccgrp/cartoon_train_jpeg --patches 32 --epoch 10 --model_name reference_scale_rgb --downsampling_filters box lanczos --lr_decay_interval 3 --arch UpConv7
python train.py --gpu -1 --dataset_dir png_dataset --finetune reference_scale_rgb.npz --downsampling_filters box lanczos --arch UpConv7
python train.py --gpu -1 --dataset_dir png_dataset --method noise_scale --noise_level 0 --finetune reference_scale_rgb.npz --downsampling_filters box lanczos --arch UpConv7
python train.py --gpu -1 --dataset_dir png_dataset --method noise_scale --noise_level 1 --finetune reference_scale_rgb.npz --downsampling_filters box lanczos --arch UpConv7
python train.py --gpu -1 --dataset_dir png_dataset --method noise_scale --noise_level 2 --finetune reference_scale_rgb.npz --downsampling_filters box lanczos --arch UpConv7
python train.py --gpu -1 --dataset_dir png_dataset --method noise_scale --noise_level 3 --finetune reference_scale_rgb.npz --downsampling_filters box lanczos --nr_rate 1.0 --arch UpConv7

read Wait
