#!/bin/bash
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/vim/ ~/.vim
ln -s $(pwd)/tmux.conf ~/.tmux.conf

if [ $(uname) == "Darwin" ]
then
  ln -s $(pwd)/bash_profile ~/.bash_profile
  brew install ctags macvim vim wget
else
  mv ~/.bashrc ~/.bashrc.orig
  ln -s $(pwd)/bash_profile ~/.bashrc
  sudo apt-get install exuberant-ctags
  wget --no-check-certificate https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
  mv dircolors.ansi-dark ~/.dircolors
  eval `dircolors ~/.dircolors`
fi

wget --no-check-certificate http://install.ohmyz.sh -O - | sh
mv ~/.zshrc ~/.zshrc.orig
ln -s $(pwd)/zshrc ~/.zshrc
