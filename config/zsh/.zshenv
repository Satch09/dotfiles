#! usr/local/bin/zsh

# Sets global path for common config files
# I do this to keep HOME folder a little cleaner
# Requires manual setup = I actually do want this config vs something else put it there
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_RUNTIME_DIR=~/.xdg

if [[ "$OSTYPE" == darwin* ]]; then
  export XDG_DESKTOP_DIR=~/Desktop
  export XDG_DOCUMENTS_DIR=~/Documents
  export XDG_DOWNLOAD_DIR=~/Downloads
  export XDG_MUSIC_DIR=~/Music
  export XDG_PICTURES_DIR=~/Pictures
  export XDG_VIDEOS_DIR=~/Videos
fi

export SHELL_SESSIONS_DISABLE=1
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
# export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk

echo ".zshenv"
