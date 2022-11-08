#! /usr/local/bin/zsh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      
  local DISTRIB=$(awk -F= '/^NAME/{print $2}' /etc/os-release)
  if [[ ${DISTRIB} = "Ubuntu"* ]]; then
    if uname -a | grep -q '^Linux.*Microsoft'; then
    MY_OS_IS="linux-wsl"
    else
    MY_OS_IS="linux"
    fi
  elif [[ ${DISTRIB} = "Debian"* ]]; then
    MY_OS_IS="debian"
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    MY_OS_IS="macos"
fi
  if [ "$?" != 0 ]; then
        echo "---------------------"
        echo "Could not determine your OS"
        echo "---------------------"
        else
        export YOUR_OS_IS=MY_OS_IS
        echo "---------------------"
        echo "Your OS has been set"
        echo "---------------------"
  fi
exit 0
