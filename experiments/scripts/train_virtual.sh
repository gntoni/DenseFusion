#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"

python ./tools/train.py --dataset virtual\
  --dataset_root ~/Code/virtual_data_capture/Dataset\
  --refine_margin 0.024\
  --batch_size 8\
  --exp_name "exp1"\
  --gpu_idx 0
