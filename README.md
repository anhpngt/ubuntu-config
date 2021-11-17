# ubuntu-config

## Installation & Configs

- Google Chrome
- Nvidia Driver
  - Go to application `Software & Updates` -> `Additional Drivers` -> Choose `Using NVIDIA driver metapackage from nvidia-driver-xxx (proprietary, tested)`
- Mapping `Caps Lock` to `Control`:
  - Install Tweak Tool: `sudo apt install gnome-tweak-tool`
  - Go to application `Tweaks` -> `Keyboard & Mouse` -> `Overview Shortcut` -> `Additional Layout Options` -> `Ctrl position` -> Tick `Caps Lock as Ctrl`
- git

  ```sh
  sudo apt install git
  git config --global user.email "anh.pngt@gmail.com"
  git config --global user.name "Tuan Anh"
  ```

- SSH & GPG key
  - [Github SSH instruction](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
  - [Github GPG instruction](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key). GPG passphrase is saved in Ubuntu's password manager for convenience.
- vim: `./install_vim.bash`
- terminator: `./install_terminator.bash`
- htop: `sudo apt -y install htop`
- [VS Code](https://code.visualstudio.com/). Settings are sync'ed with Github account.
- [ibus-bamboo](https://github.com/BambooEngine/ibus-bamboo)
- Additional configs for `~/.bashrc`
  - PS1 value for bash

    ```bash
    PS1='┌─[\[\e[01;32m\]\u\[\e[00m\]@\[\e[01;32m\]\h\[\e[00m\]:\[\e[1;34m\]\w\[\e[0m\]]$(__git_ps1 " (%s) ")\n└─╼ '
    ```

  - Other configs

    ```bash
    # Custom preferences
    alias s='ls'
    alias gotest='go test -count=1 -cover -covermode=count -coverprofile=cover.out -coverpkg=./... ./...'
    alias gohtml='go tool cover -html=cover.out'
    alias kmsdc='gcloud kms decrypt --project dev-manabie-online --location global --keyring deployments --key github-actions --plaintext-file - --ciphertext-file'
    alias kmsec='gcloud kms decrypt --project dev-manabie-online --location global --keyring deployments --key github-actions --ciphertext-file - --plaintext-file'
    alias gitl='git log --all --decorate --online --graph'
    ```

- Skip grub boot menu

  ```bash
  echo 'set timeout_style=hidden
  set timeout=0' | sudo tee /boot/grub/custom.cfg
  ```

- [Gnome extensions](https://extensions.gnome.org/):
  - [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
  - [Pixel Saver](https://extensions.gnome.org/extension/723/pixel-saver/)
  - [Put Windows](https://extensions.gnome.org/extension/39/put-windows/)
  - [Touchpad Indicator](https://extensions.gnome.org/extension/131/touchpad-indicator/)
