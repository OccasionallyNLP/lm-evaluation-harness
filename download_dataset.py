from datasets import load_dataset
for i in ["allenai/ ai2_arc", "winogrande_xl", "EleutherAI/race", "openbookqa", "jet-ai/social_i_qa", "Rowan/hellaswag", "baber/piqa", "sciq", "xiaoyuanliu/logiqa", "super_glue", "copa", "multirc", "nyu-mll/glue", "cais/mmlu"]:
    print(i)
    dataset = load_dataset(i)
    print('donwloaded')
