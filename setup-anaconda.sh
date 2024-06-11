# How to Install Conda

# https://www.tutorialspoint.com/how-to-install-anaconda-on-centos-7

wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh

bash Anaconda3-2021.05-Linux-x86_64.sh

conda --version

conda create --prefix ~/work/SkinCancerClassifier_VA_FP/vEnv_20231124 python cudatoolkit cudnn tensorflow=2.12.0=gpu_py311h65739b5_0

conda init tcsh

# How to active conda
conda activate ~/work/SkinCancerClassifier_VA_FP/vEnv_20231124/

pip install -r requirements.txt -v
