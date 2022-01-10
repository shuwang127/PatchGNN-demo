#!/bin/bash

# install pip
sudo apt install python3-pip -y

# install python modules
pip3 install numpy pandas

# install pytorch
pip3 install torch==1.10.0+cpu torchvision==0.11.1+cpu torchaudio==0.10.0+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html

# install clang
pip3 install clang==6.0.0.2
sudo apt install clang -y
sudo ln -s /usr/lib/x86_64-linux-gnu/libclang-*.so.1 /usr/lib/x86_64-linux-gnu/libclang.so

# install pytorch-geometric
pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.10.0+cpu.html

