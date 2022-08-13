#!/bin/bash

set -eu

list=(
  "vscode.manabie.backend:code $HOME/Desktop/manabie/backend:<Primary><Shift>exclam"
  "vscode.manabie.backend-parallel:code $HOME/Desktop/manabie/backend-parallel:<Primary><Shift>at"
  "vscode.manabie.backend-third:code $HOME/Desktop/manabie/backend-third:<Primary><Shift>numbersign"
  "vscode.manabie.backend-terraform:code $HOME/Desktop/manabie/backend-terraform:<Primary><Shift>dollar"
  "vscode.manabie.backend-readonly:code $HOME/Desktop/manabie/backend-readonly:<Primary><Shift>percent"
)

mkeyspath="org.gnome.settings-daemon.plugins.media-keys"
kbpathprefix="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom-"

bindList=""
for ele in "${list[@]}"; do
  IFS=":" read -r name cmd binding <<< "$ele"
  path="${kbpathprefix}${name}/"
  if [ -z "$bindList" ]; then
    bindList=\'${path}\'
  else
    bindList="${bindList}, '${path}'"
  fi

  gsettings set "${mkeyspath}.custom-keybinding:${path}" name "$name"
  gsettings set "${mkeyspath}.custom-keybinding:${path}" command "$cmd"
  gsettings set "${mkeyspath}.custom-keybinding:${path}" binding "$binding"
done
gsettings set "$mkeyspath" custom-keybindings "[${bindList}]"
echo "Successfully set up ${#list[@]} keyboard shortcuts"
