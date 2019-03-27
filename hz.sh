# steer angle
python cnn.py --experiment_rootdir='./model/str_01' --train_dir='datasets/steering_dataset/training' --val_dir='datasets/steering_dataset/validation' 
--batch_size=16 --epochs=1 --log_rate=25 
python evaluation.py --experiment_rootdir='./model/str_01' --weights_fname='weights_001.h5' --test_dir='datasets/steering_dataset/testing' 

# collision probability
python cnn.py --experiment_rootdir='./model/col_01' --train_dir='datasets/collision_dataset/training' --val_dir='datasets/collision_dataset/validation' 
--batch_size=16 --epochs=1 --log_rate=25 
python evaluation.py --experiment_rootdir='./model/col_01' --weights_fname='weights_001.h5' --test_dir='datasets/collision_dataset/testing' 

sudo find ~/Git -name ".DS_Store" -depth -exec rm {} \;

# plot
python plot_loss.py --experiment_rootdir model/s_test_2
python plot_results.py --experiment_rootdir model/s_test_2

python data_preprocessing/time_stamp_matching.py

# remove unnecesary virtualenv
conda remove -n mxnet_p27 --all
conda remove -n mxnet_p36 --all
conda remove -n amazonei_mxnet_p27 --all
conda remove -n amazonei_mxnet_p36 --all
# others: 
    theano_p36/27 cntk_p36/27 chainer_p36/27

# Set up git 
git config --global user.name haozhe15
git config --global user.email wanghaozhe15@gmail.com
git config --global credential.helper cache
git clone https://github.com/haozhe15/rpg_public_dronet.git

# download the dataset
git clone https://github.com/circulosmeos/gdown.pl.git
cd gdown.pl
./gdown.pl 'https://docs.google.com/uc?export=download&id=18nOHNWvAVXhMYdHzcDq7-x0jKVxhI5wV' dataset.zip
mv dataset.zip ../rpg_public_dronet
cd ../rpg_public_dronet
unzip dataset.zip

# open the project
cd ~/rpg_public_dronet
source activate tensorflow_p36
# install python-gflags
pip install python-gflags
# check disk space
df -h



