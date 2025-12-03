#!/bin/bash

MODEL_NAME=$1
OUTPUT_PATH=$2
NUM_FEWSHOT=$3
#export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
lm_eval --model vllm \
    --model_args "pretrained=${MODEL_NAME},tensor_parallel_size=1,dtype=auto,gpu_memory_utilization=0.8,data_parallel_size=1,max_model_len=2048" \
    --tasks winogrande,race,openbookqa,social_iqa,hellaswag,lambada_standard,piqa,sciq,arc_easy,logiqa,multirc,copa,qqp,mmlu \
    --batch_size auto \
    --num_fewshot "$NUM_FEWSHOT" \
    --output_path "$OUTPUT_PATH" \
    --limit 10 \
    --wandb_args "project=lm-eval-harness-integration" \
    --log_samples