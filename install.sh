#!/bin/bash
cp ./vimrc ~/.vimrc
rsync -av ./vim/ ~/.vim/
cp ./tmux.conf ~/.tmux.conf
cp ./zshrc ~/.zshrc

if [ $(uname) == "Darwin" ]
then
  cp ./bash_profile ~/.bash_profile
else
  cp ./bash_profile ~/.bashrc
fi

wget --no-check-certificate http://install.ohmyz.sh -O - | sh
