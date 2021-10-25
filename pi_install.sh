#!/bin/bash

echo "apt update..."
sudo apt -y update

echo "custom installs..."
sudo apt -y install curl zsh git neovim

# Run ZSH Automatically
chsh -s /usr/bin/zsh

[ -d ~/.oh-my-zsh ] || git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -d ~/dotfiles ] || git clone https://github.com/Satch09/dotfiles.git 
cd ~/dotfiles
chmod 755 ./install
./install

