#!/bin/bash

# vim plugin manager [Vundle] install
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

DOT_FILES=(.bashrc .bash_profile .vimrc .config/git)
for file in ${DOT_FILES[@]}
do
	if [ -a $HOME/$file ]; then
			echo "ファイルが存在するのでシンボリックリンクを貼りませんでした: $file"
	else
		ln -s $HOME/dotfiles/$file $HOME/$file
			echo "シンボリックリンクを貼りました: $file"
	fi
done
