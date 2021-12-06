# PatchGNN-demo

This is a demo program of PatchGNN, a graph neural network based model to detect security patches with their code property graphs (PatchCPGs).

## How to Run PatchGNN-demo

### 1. Install OS

We use Ubuntu 20.04.2.0 LTS (Focal Fossa) desktop version. \
Download Link: https://releases.ubuntu.com/20.04/ubuntu-20.04.2.0-desktop-amd64.iso

The virtualization software in our experiments is VirtualBox 5.2.24. \
Download Link: https://www.virtualbox.org/wiki/Download_Old_Builds_5_2. \
You can use other software like VMware Workstation.

**System configurations:**\
RAM: 2GB\
Disk: 25GB\
CPU: 1 core in i7-7700HQ @ 2.8GHz

### 2. Download the source code from github

We use `home` directory to store the project folder.

```shell scripts
cd ~
```

Install `git` tool.

```shell scripts
sudo apt install git
```

Download `PatchGNN-demo` project to local disk. (You may need to enter your github account/password.)

```shell scripts
git clone https://github.com/shuwang127/PatchGNN-demo
```


### 3. Install the dependencies.

(1) Install `pip` tool for `python3`.

```shell scripts
sudo apt install python3-pip
```

(2) Install common dependencies.

```shell scripts
pip3 install numpy
pip3 install pandas
pip3 install shutil
```

(3) Install CPU-version PyTorch. Official website: https://pytorch.org/.

```shell scripts
pip3 install torch==1.10.0+cpu torchvision==0.11.1+cpu torchaudio==0.10.0+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html
```

(4) Install `clang` tool.

```shell scripts
pip3 install clang==6.0.0.2
```

Configurate the clang environment.

```shell scripts
sudo apt install clang
cd /usr/lib/x86_64-linux-gnu/
sudo ln -s libclang-*.so.1 libclang.so
```

(5) Install Torch-Geometric. Official website: https://pytorch-geometric.readthedocs.io/en/latest/.

```shell scripts
pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.10.0+cpu.html
```

### 4. Run the demo program.

```shell scripts
cd ~/PatchGNN-demo/
python3 test.py
```

There are 6 input test samples stored in `~/PatchGNN-demo/testdata/`, the output results are saved in `~/PatchGNN-demo/logs/test_results.txt`.

```shell scripts
cat logs/test_results.txt
```

You can find the results.

```shell scripts
filename,prediction
./testdata/02cca547\out_slim_ninf_noast_n1_w.log,0
./testdata/661e4086\out_slim_ninf_noast_n1_w.log,1
./testdata/9a3ec202\out_slim_ninf_noast_n1_w.log,1
./testdata/dac90a4b\out_slim_ninf_noast_n1_w.log,1
./testdata/e3797a66\out_slim_ninf_noast_n1_w.log,0
./testdata/fc785b12\out_slim_ninf_noast_n1_w.log,0
```
