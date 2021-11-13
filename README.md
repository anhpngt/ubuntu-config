# ubuntu-config

## Installation & Configs

- Google Chrome
- Nvidia Driver
  - Go to `Software & Updates` -> `Additional Drivers` -> Choose `Using NVIDIA driver metapackage from nvidia-driver-xxx (proprietary, tested)`
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

* VS Code

```bash
cp configs/vscode/settings.json ~/.config/Code/User/settings.json
```

* Terminator

```bash
cp configs/terminator/config ~/.configs/terminator/config
```

* Maps `CapsLock` to `ESC` and `Ctrl`

```bash
sudo apt install xcape
// Follow up with adding config to ~/.profile
```

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
