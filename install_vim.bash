#!/bin/bash

set -e
sudo apt -y install vim
cp configs/.vimrc.backup ~/.vimrc
echo "~/.vimrc file created"
