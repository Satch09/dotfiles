#!/bin/bash

#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

echo "Running Mac setup. This would take a while. Please sit back and relax."

# Check for Homebrew
if test ! "$(command -v brew)"
then
  echo "Installing Homebrew."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file=./Brewfile
# Utility function to install cask formulas
#function installcask() {
#    if brew info --cask "${@}" | grep "Not installed" > /dev/null; then
#        brew install --cask "${@}"
#    else
#        echo "$* is already installed."
#    fi
#}


# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed

#curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
#chsh -s /usr/local/bin/zsh

#brew install curl --with-ssl --with-ssh

#brew install rename htop-osx tree ngrep mtr nmap

#installcask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r


#sudo easy_install pip
# sudo pip install -r requirements.pip
# installcask install virtualbox
# installcask install vagrant
#nvm install --lts
#nvm use --lts
#nvm alias default --lts

brew cleanup && brew cask cleanup

echo "Done!"
exit 0
