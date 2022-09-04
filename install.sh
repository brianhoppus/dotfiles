#!/bin/bash
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/tmux.conf ~/.tmux.conf

if [ $(uname) == "Darwin" ]
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/brianhoppus/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew install vim wget
else
  echo "Why are you not using a Mac?!"
  exit 1
fi

wget --no-check-certificate http://install.ohmyz.sh -O - | sh
mv ~/.zshrc ~/.zshrc.orig
ln -s $(pwd)/zshrc ~/.zshrc
