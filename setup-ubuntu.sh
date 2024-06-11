#!/usr/bin/env bash

# install venv (in case it is not installed)
sudo apt-get update
sudo apt-get install python3-venv

#create virtual environment
python -m venv VA_fp_env

#activate virtual environment
source ./VA_fp_env/bin/activate

#install requirements
pip3 install --upgrade pip
pip3 install -r requirements.txt

# deactivate environment
deactivate