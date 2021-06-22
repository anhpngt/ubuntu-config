#!/bin/bash

# Source: https://mikeshade.com/posts/keychron-linux-function-keys/
# Set the keyboard to Windows mode via the side switch
# Use Fn + X + L (hold for 4 seconds) to set the function key row to “Function” mode. (usually all that’s necessary on Windows)
# echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode
# The command below persists the setting
echo "options hid_apple fnmode=0" | sudo tee -a /etc/modprobe.d/hid_apple.conf
sudo update-initramfs -u