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

* Additional lines for `~/.bashrc` and `~/.profile`

```bash
cat configs/bash/bash-addition >> ~/.bashrc
cat configs/profile-addition >> ~/.profile
```

## Package installation

```bash
sudo bash install-packages.sh
sudo bash install-openjdk.sh
```
