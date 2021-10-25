#!/bin/bash

#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

echo "Running Mac setup..."

# Check for Homebrew
if test ! "$(command -v brew)"
then
  echo "Installing Homebrew."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing Brewfile..."
brew bundle --file=./Brewfile

#installcask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r


#sudo easy_install pip
# sudo pip install -r requirements.pip
# installcask install virtualbox
# installcask install vagrant
echo "Installing nvm --lts..."
nvm install --lts
echo "Using lts..."
nvm use --lts
echo "Alias default => lts..."
nvm alias default --lts

brew cleanup && brew cask cleanup

echo "Done!"
exit 0
