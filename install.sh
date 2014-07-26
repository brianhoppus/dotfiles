#!/bin/bash
cp ./vimrc ~/.vimrc
rsync -av ./vim/ ~/.vim/
cp ./tmux.conf ~/.tmux.conf
cp ./zshrc ~/.zshrc

if [ $(uname) == "Darwin" ]
then
  cp ./bash_profile ~/.bash_profile
  brew install ctags
else
  cp ./bash_profile ~/.bashrc
  sudo apt-get install ctags
fi

wget --no-check-certificate http://install.ohmyz.sh -O - | sh
