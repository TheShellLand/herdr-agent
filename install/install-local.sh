#!/bin/bash

set -xe

BIN=$HOME/.local/bin

mkdir -p $BIN

if ! grep "$BIN" $HOME/.profile ; then
  echo """export "PATH=$BIN:$PATH"""" >> $HOME/.profile
fi

curl -fsSL https://herdr.dev/install.sh | sh

