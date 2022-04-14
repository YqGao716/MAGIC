CUDA_VISIBLE_DEVICES=0 python train.py\
    --model_name gpt2\
    --train_path ../data/flickr30k/flickr30k_train.json\
    --dev_path ../data/flickr30k/flickr30k_val.json\
    --test_path ../data/flickr30k/flickr30k_test.json\
    --add_eos_token_to_data True\
    --margin 0.5\
    --max_len 64\
    --number_of_gpu 1\
    --batch_size_per_gpu 32\
    --gradient_accumulation_steps 4\
    --effective_batch_size 128\
    --total_steps 10000\
    --print_every 50\
    --save_every 250\
    --learning_rate 2e-5\
    --save_path_prefix ./magic_flickr30k/