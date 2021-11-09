#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=0

python3 ./tools/eval_virtual.py --dataset_root /home/toni/Code/virtual_data_capture/Dataset\
  --model trained_models/virtual/pose_model_16_0.02382488450413192.pth\
  --refine_model trained_models/virtual/pose_refine_model_17_0.021095236838254688.pth
