#!/bin/sh

cd $HOME
ln -sf dotfiles/.screenrc .
ln -sf dotfiles/.bash_profile .
ln -sf dotfiles/.bashrc_custom .
ln -sf dotfiles/.vimrc .
ln -sf dotfiles/.gitconfig .
ln -sf dotfiles/.zshrc .
ln -shF dotfiles/.emacs.d ./.emacs.d
