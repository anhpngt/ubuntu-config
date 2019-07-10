# ubuntu-config

## Configs

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
