#!/bin/bash

# vim plugin manager [dein] install
git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim

DOT_FILES=(.bashrc .bash_profile .vimrc .config/nvim .config/git .lem)
for file in ${DOT_FILES[@]}
do
	if [ -a $HOME/$file ]; then
			echo "ファイルが存在するのでシンボリックリンクを貼りませんでした: $file"
	else
		ln -s $HOME/dotfiles/$file $HOME/$file
			echo "シンボリックリンクを貼りました: $file"
	fi
done
