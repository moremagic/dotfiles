#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
sudo apt install -y python3-pip
sudo apt install -y neovim

pip3 install neovim --upgrade

