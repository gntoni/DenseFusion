#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=0

python3 ./tools/eval_virtual.py --dataset_root /home/toni/Code/virtual_data_capture/Dataset\
  --model trained_models/virtual/pose_model_10_0.02418775000987235.pth\
  --refine_model trained_models/virtual/pose_refine_model_11_0.022795669183526848.pth
