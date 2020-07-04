export BERT_BASE_DIR=$HOME/projects/classifier-bert/uncased_L-8_H-512_A-8
export GLUE_DIR=$HOME/projects/classifier-bert/glue_data

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
  --learning_rate=3e-5 \
  --num_train_epochs=4.0 \
  --output_dir=/tmp/kick_output_medium/