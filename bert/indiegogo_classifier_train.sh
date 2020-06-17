export BERT_BASE_DIR=/Users/cicipan/projects/bert-classifier/uncased_L-2_H-128_A-2
export GLUE_DIR=/Users/cicipan/projects/bert-classifier/glue_data

python run_classifier.py \
  --task_name=MRPC \
  --do_train=true \
  --do_eval=true \
  --data_dir=$GLUE_DIR/INDI \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=1.0 \
  --output_dir=/tmp/indiegogo_output/