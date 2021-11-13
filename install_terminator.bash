#!/bin/bash

set -e
sudo apt -y install terminator
mkdir -p ~/.config/terminator
cp configs/terminator.config.backup ~/.config/terminator/config
echo "~/.config/terminator/config created"
