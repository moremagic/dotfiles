#!/bin/bash
mkdir work-install-roswell
cd work-install-roswell

git clone -b release https://github.com/roswell/roswell.git
cd roswell
sh bootstrap
./configure
make
sudo make install

