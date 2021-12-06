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

Install `pip` tool for `python3`.

```shell scripts
sudo apt install python3-pip
```

Install common dependencies.

```shell scripts
pip3 install numpy
pip3 install pandas
pip3 install natsort
pip3 install pandas
pip3 install sklearn
```



