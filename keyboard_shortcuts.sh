#!/bin/bash

set -eu

list=(
  "vscode.manabie.backend:code $HOME/manabie-com/backend:<Primary><Shift>exclam"
  "vscode.manabie.backend2:code $HOME/manabie-com/backend2:<Primary><Shift>at"
  "vscode.manabie.backend3:code $HOME/manabie-com/backend3:<Primary><Shift>numbersign"
  "vscode.manabie.backend-tf:code $HOME/manabie-com/backend-tf:<Primary><Shift>dollar"
  "vscode.manabie.backend-ro:code $HOME/manabie-com/backend-ro:<Primary><Shift>percent"
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
