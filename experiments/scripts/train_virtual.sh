#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=0

python3 ./tools/train.py --dataset virtual\
  --dataset_root /home/toni/Code/virtual_data_capture/Dataset\
  --refine_margin 0.024\
  --batch_size 8\
  --exp_name "2_inc_dataset"
