# First setup

1. Install conda https://www.tutorialspoint.com/how-to-install-anaconda-on-centos-7

2. Setup project

```
# add conda path
setenv PATH ${HOME}/anaconda3/bin:${PATH}

# setup clean conda
conda clean --all
conda update conda
conda update --all

# find last version of tensorflow
conda search tensorflow

# Create Conda virtual environment with GPU
conda create --prefix '~/work/BloodVessel' python cudatoolkit cudnn tensorflow=2.12.0=gpu_py311h65739b5_0


# Add enviroment for GPU support
setenv LD_LIBRARY_PATH "/usr/app-soft/cuda/v11.4.0_470.42.01/targets/x86_64-linux/lib:$LD_LIBRARY_PATH"

# To activate this environment, use
#     $ conda activate myenv
# To deactivate an active environment, use
#     $ conda deactivate

# install pip requirements
pip install -r requirements.txt

# to prepare hdf5 files
python prepare_datasets_DRIVE.py 

# 
python save_patch.py

# train 
python train_retina.py
```
