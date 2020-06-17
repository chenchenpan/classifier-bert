# classifier-bert

**\*\*\*\*\* June 16th, 2020: BERT classifier with Kickstarter project description \*\*\*\*\***

We use this repo to easily apply BERT on our clssification task with Kickstarter data.

Before running this example you must download the kickstarter data we already prepared under the folder glue_data/KICK and unpack it to some directory $GLUE_DIR. Next, download the [`BERT-Base, Uncased`](https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-12_H-768_A-12.zip) checkpoint and unzip it to some directory $BERT_BASE_DIR.

Then you can run the code below

```shell
export BERT_BASE_DIR=/path/to/bert/uncased_L-12_H-768_A-12
export GLUE_DIR=/path/to/glue

python run_classifier.py \
  --task_name=MRPC \
  --do_train=true \
  --do_eval=true \
  --data_dir=$GLUE_DIR/KICK \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0 \
  --output_dir=/tmp/kick_output/
```

You should see output like this:

```
***** Eval results *****
  eval_accuracy = 0.845588
  eval_loss = 0.505248
  global_step = 343
  loss = 0.505248
```
