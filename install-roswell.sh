#!/bin/bash

sudo apt update
sudo apt install -y gcc automake libcurl4-openssl-dev zlib1g-dev


WORK_DIR=/tmp/dotfiles-work/
mkdir $WORK_DIR && cd $WORK_DIR

git clone -b release https://github.com/roswell/roswell.git
cd roswell
sh bootstrap
./configure
make
sudo make install

#======================
ros
ros -- --version
ros install sbcl
ros install sbcl-bin
ros install ccl-bin
ros use sbcl/1.4.8
ros install slim

