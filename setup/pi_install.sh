#!/bin/bash

echo "apt update..."
# sudo apt -y update

echo "custom installs..."
sudo apt -y install curl

echo "adding installation repos..."
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt -y update
sudo apt -y install zsh git neovim gh tmux
# Run ZSH Automatically
 chsh -s /usr/bin/zsh
# Install tmuxinator
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator
  $ZSH/custom/plugins/zsh-vi-mode


[ -d ~/.oh-my-zsh ] || git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -d ~/dotfiles ] || git clone https://github.com/Satch09/dotfiles.git 
cd ~/dotfiles
chmod 755 ./install
./install

# Install custom plugins
git clone https://github.com/jeffreytse/zsh-vi-mode \
source $HOME/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# Create keys
ssh-keygen -f ~/.ssh/github -t ed25519 -C "christophermaisch@gmail.com"

# Login to gh - You can add your new key during setup
gh auth login

