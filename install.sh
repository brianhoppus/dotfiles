#!/bin/bash
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/vim/ ~/.vim/
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/zshrc ~/.zshrc

if [ $(uname) == "Darwin" ]
then
  ln -s $(pwd)/bash_profile ~/.bash_profile
  brew install ctags
else
  ln -s $(pwd)/bash_profile ~/.bashrc
  sudo apt-get install ctags
fi

wget --no-check-certificate http://install.ohmyz.sh -O - | sh
