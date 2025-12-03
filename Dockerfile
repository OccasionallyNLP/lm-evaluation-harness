FROM huggingface/transformers-pytorch-gpu:latest
    
WORKDIR /lm-evaluation-harness
COPY . /lm-evaluation-harness

RUN pip install --upgrade pip && \
    pip install "vllm==0.11.2" wandb \
        --extra-index-url https://download.pytorch.org/whl/cu121 && \
    pip install hf-transfer && \
    pip install nltk>=3.9.1 && \
    pip install -e .[ruler]