#!/bin/bash
MODEL_NAME=$1
OUTPUT_PATH=$2
#export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
lm_eval --model vllm \
    --model_args "pretrained=${MODEL_NAME},tensor_parallel_size=1,dtype=auto,gpu_memory_utilization=0.8" \
    --tasks ruler \
    --batch_size auto \
    --output_path "$OUTPUT_PATH" \
    --limit 10 \
    --wandb_args "project=lm-eval-harness-integration" \
    --log_samples