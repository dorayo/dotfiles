#!/bin/sh

cd $HOME
ln -sf dotfiles/.screenrc .
ln -sf dotfiles/.bash_profile .
ln -sf dotfiles/.bashrc_custom .
ln -sf dotfiles/.vimrc .
ln -sf dotfiles/.gitconfig .
ln -shF dotfiles/.emacs.d ./.emacs.d

## 切换终端为zsh
chsh -s /bin/zsh

## 下载oh-my-zsh并建立.zshrc的符号链接
echo "[Info]: Configuring oh-my-zsh ..."
if [ -d ~/.oh-my-zsh ];then
    echo "[Info]: ~/.oh-my-zsh already exists!"
else
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
ln -sf dotfiles/.zshrc .
echo "[Info]: Success!"
