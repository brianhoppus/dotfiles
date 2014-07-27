#!/bin/bash
ln -s $(pwd)/vimrc ~/.vimrc
mkdir ~/.vim
ln -s $(pwd)/vim/ ~/.vim/
ln -s $(pwd)/tmux.conf ~/.tmux.conf

if [ $(uname) == "Darwin" ]
then
  ln -s $(pwd)/bash_profile ~/.bash_profile
  brew install ctags macvim vim
else
  mv ~/.bashrc ~/.bashrc.orig
  ln -s $(pwd)/bash_profile ~/.bashrc
  sudo apt-get install exuberant-ctags
fi

wget --no-check-certificate http://install.ohmyz.sh -O - | sh
mv ~/.zshrc ~/.zshrc.orig
ln -s $(pwd)/zshrc ~/.zshrc
