export PROJECTS=/mnt/projects
export TMP=/mnt/tmp
export CUDA_VISIBLE_DEVICES=0
export BERT_BASE_DIR=$PROJECTS/classifier-bert/uncased_L-12_H-768_A-12
export GLUE_DIR=$PROJECTS/classifier-bert/glue_data

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
  --output_dir=$TMP/kick_output_base/