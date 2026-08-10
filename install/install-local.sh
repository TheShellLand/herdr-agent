#!/bin/bash

set -xe

BIN="$HOME/.local/bin"
HERDR="$BIN/herdr"

curl -fsSL https://herdr.dev/install.sh | sh

chmod ugo+rx "$HERDR"

if sudo touch /usr/bin/.TOUCH 2>/dev/null ; then 
  sudo rm /usr/bin/.TOUCH

  sudo ln -s $HERDR /usr/bin/herdr
fi

if sudo touch /usr/local/bin/.TOUCH 2>/dev/null ; then
  sudo rm /usr/local/bin/.TOUCH

  sudo ln -s $HERDR /usr/local/bin/herdr
fi

