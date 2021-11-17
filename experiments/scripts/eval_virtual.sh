#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=0

python3 ./tools/eval_virtual.py --dataset_root /home/toni/Code/virtual_data_capture/Dataset\
  --model trained_models/virtual/pose_model_9_0.013809310605917263.pth\
  --refine_model trained_models/virtual/pose_refine_model_29_0.01210234348597142.pth
