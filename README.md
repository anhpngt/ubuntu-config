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
// Follow up with adding config to ~/.bashrc
```

* Additional lines for `~/.bashrc`

```bash
cat configs/bash/bash-addition >> ~/.bashrc
```

## Package installation

```bash
sudo bash install-packages.sh
sudo bash install-openjdk.sh
```
