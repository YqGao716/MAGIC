## Details of How to Run the Inference Code

In this folder, we illustrate how to conduct inference with different methods.

****
### Catalogue:
* <a href='#magic_search'>1. Magic Search</a>
* <a href='#contrastive_search'>2. Contrastive Search</a>
* <a href='#greedy_search'>3. Greedy Search</a>
* <a href='#beam_search'>4. Beam Search</a>
* <a href='#topk_sampling'>5. Top-k Sampling</a>
* <a href='#nucleus_sampling'>6. Nucleus Sampling</a>
* <a href='#typical_sampling'>7. Typical Sampling</a>

****

<span id='magic_search'/>

### 1. Magic Search:

To perform inference with magic search, please run the following command:
```yaml
chmod +x ./magic.sh
./magic.sh
```
Here, the arguments are as follows:
* `--language_model_code_path`: Where the code of language model locates. 
* `--language_model_name`: The language model name on huggingface.
* `--image_index_code_path`: Where the code of image index locates. 
* `--clip_path`: Where the code of CLIP locates.
* `--clip_name`: The CLIP model name on huggingface. 
* `--image_index_matrix_path`: The path of the image index representation matrix file.
* `--image_mapping_dict_path`: The path of the image index mapping dictionary file.
* `--image_folder_prefix_path`: The path of the raw images from which we perform the image retrieval.
* `--test_path`: The file that stores the test set. 
* `--num_of_inference_instances`: How many instances to perform inference.
* `--number_of_instance_to_generate_per_method`: How many results we generate per instance.
* `--decoding_len`: The number of tokens to generate. 
* `--k`: The k in magic search. 
* `--alpha`: The alpha in magic search. 
* `--beta`: The beta in magic search. 
* `--save_path_prefix`: Where to save the inferenced result. 

**[Note]** We provide our inferenced result with magic search [[here]](https://github.com/yxuansu/MAGIC/blob/main/story_generation/inference_result/).

****

<span id='contrastive_search'/>

### 2. Contrastive Search:

To perform inference with contrastive search, please run the following command:
```yaml
chmod +x ./contrastive_search.sh
./contrastive_search.sh
```
Here, the arguments are as follows:
* `--language_model_code_path`: Where the code of language model locates. 
* `--language_model_name`: The language model name on huggingface (cambridgeltl/magic_mscoco or cambridgeltl/magic_flickr30k) 
* `--test_path`: The file that stores the reference captions. 
* `--num_of_inference_instances`: How many instances to perform inference.
* `--number_of_instance_to_generate_per_method`: How many results we generate per instance.
* `--decoding_len`: The number of tokens to generate. 
* `--decoding_method`: contrastive  
* `--k`: The k in contrastive search. 
* `--alpha`: The alpha in contrastive search. 
* `--save_path_prefix`: Where to save the inferenced result. 

**[Note]** We provide our inferenced result with contrastive search [[here]](https://github.com/yxuansu/MAGIC/blob/main/story_generation/inference_result/).


****

<span id='greedy_search'/>

### 3. Greedy Search:
To perform inference with greedy search, please run the following command:
```yaml
chmod +x ./greedy_search.sh
./greedy_search.sh
```
Here, the arguments are as follows:
* `--language_model_code_path`: Where the code of language model locates. 
* `--language_model_name`: The language model name on huggingface (cambridgeltl/magic_mscoco or cambridgeltl/magic_flickr30k) 
* `--test_path`: The file that stores the reference captions. 
* `--num_of_inference_instances`: How many instances to perform inference.
* `--number_of_instance_to_generate_per_method`: How many results we generate per instance.
* `--decoding_len`: The number of tokens to generate. 
* `--decoding_method`: greedy 
* `--save_path_prefix`: Where to save the inferenced result. 


****

<span id='beam_search'/>

### 4. Beam Search:
To perform inference with beam search, please run the following command:
```yaml
chmod +x ./beam_search.sh
./beam_search.sh
```
Here, the arguments are as follows:
* `--language_model_code_path`: Where the code of language model locates. 
* `--language_model_name`: The language model name on huggingface (cambridgeltl/magic_mscoco or cambridgeltl/magic_flickr30k) 
* `--test_path`: The file that stores the reference captions. 
* `--num_of_inference_instances`: How many instances to perform inference.
* `--number_of_instance_to_generate_per_method`: How many results we generate per instance.
* `--decoding_len`: The number of tokens to generate. 
* `--decoding_method`: beam
* `--beam_width`: The beam width for beam search.
* `--save_path_prefix`: Where to save the inferenced result. 



****

<span id='topk_sampling'/>

### 3. Top-k Sampling:

<span id='in_domain_topk_sampling'/>

#### 3.1. In Domain Experiment:

To perform in domain experiment with top-k sampling, please run the following command:
```yaml
chmod +x ./X_topk_baseline.sh
./X_topk_baseline.sh
```
Here, X is in ['mscoco', 'flickr30k'] and the arguments are as follows:
* `--language_model_code_path`: Where the code of language model locates. 
* `--language_model_name`: The language model name on huggingface (cambridgeltl/magic_mscoco or cambridgeltl/magic_flickr30k) 
* `--test_path`: The file that stores the reference captions. 
* `--decoding_method`: topk  
* `--decoding_len`: The number of tokens to generate. 
* `--top_k`: The k in top-k sampling. 
* `--save_path_prefix`: Where to save the inferenced result. 
* `--save_name`: The saved name of the inferenced result. 

**[Note]** For in domain experiments, the test set and the language model (defined by the argument of language_model_name) should come from the same domain.

<span id='cross_domain_topk_sampling'/>

#### 3.2. Cross Domain Experiment:

To perform cross domian experiment with top-k sampling, please run the following command:
```yaml
chmod +x ./source_X_target_Y_topk_baseline.sh
./source_X_target_Y_topk_baseline.sh
```
Here, X is the source domain from ['mscoco', 'flickr30k'] and Y is the target domain from ['flickr30k', 'mscoco']. 

The arguments are the same as in section 3.1.

**[Note]** For cross domain experiments, the test set and the language model (defined by the argument of language_model_name) should come from **different** domains.

****

<span id='nucleus_sampling'/>

### 4. Nucleus Sampling:

<span id='in_domain_nucleus_sampling'/>

#### 4.1. In Domain Experiment:

To perform in domain experiment with nucleus sampling, please run the following command:
```yaml
chmod +x ./X_nucleus_baseline.sh
./X_nucleus_baseline.sh
```
Here, X is in ['mscoco', 'flickr30k'] and the arguments are as follows:
* `--language_model_code_path`: Where the code of language model locates. 
* `--language_model_name`: The language model name on huggingface (cambridgeltl/magic_mscoco or cambridgeltl/magic_flickr30k) 
* `--test_path`: The file that stores the reference captions. 
* `--decoding_method`: nucleus
* `--decoding_len`: The number of tokens to generate. 
* `--nucleus_p`: The p in nucleus sampling. 
* `--save_path_prefix`: Where to save the inferenced result. 
* `--save_name`: The saved name of the inferenced result. 

**[Note]** For in domain experiments, the test set and the language model (defined by the argument of language_model_name) should come from the same domain.

<span id='cross_domain_nucleus_sampling'/>

#### 4.2. Cross Domain Experiment:

To perform cross domian experiment with nucleus sampling, please run the following command:
```yaml
chmod +x ./source_X_target_Y_nucleus_baseline.sh
./source_X_target_Y_nucleus_baseline.sh
```
Here, X is the source domain from ['mscoco', 'flickr30k'] and Y is the target domain from ['flickr30k', 'mscoco']. 

The arguments are the same as in section 4.1.

**[Note]** For cross domain experiments, the test set and the language model (defined by the argument of language_model_name) should come from **different** domains.
