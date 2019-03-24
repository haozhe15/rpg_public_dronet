python evaluation.py --experiment_rootdir='./model' --weights_fname='model_weights.h5' --test_dir='datasets/steering_dataset/testing' 
python cnn.py --experiment_rootdir='./model/test_1' --train_dir='datasets/steering_dataset/training' --val_dir='datasets/steering_dataset/validation' --batch_size=16 --epochs=1 --log_rate=25 

ython evaluation.py --experiment_rootdir='./model' --weights_fname='model_weights.h5' --test_dir='datasets/collision_dataset/testing' 
python cnn.py --experiment_rootdir='./model/test_1' --train_dir='datasets/collision_dataset/training' --val_dir='datasets/collision_dataset/validation' --batch_size=16 --epochs=1 --log_rate=25 

sudo find ~/Git -name ".DS_Store" -depth -exec rm {} \;

python plot_loss.py --experiment_rootdir model/s_test_2

python plot_results.py --experiment_rootdir model/s_test_2

python data_preprocessing/time_stamp_matching.py