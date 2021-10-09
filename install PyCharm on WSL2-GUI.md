# Install PyCharm on WSL2 (GUI)

prerequisites: WSL2 installed

```Powershell
# Powershell

wsl -l -o
wsl --install -d Ubuntu-20.04
```

```Bash
# Ubuntu Bash

sudo apt update && sudo apt upgrade

```

## Install Chrome

[Install Google Chrome for Linux](https://docs.microsoft.com/en-us/windows/wsl/tutorials/gui-apps#install-google-chrome-for-linux)

```Bash
cd /tmp/
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install --fix-broken -y
sudo dpkg -i google-chrome-stable_current_amd64.deb
google-chrome
```

## Install PyCharm
From the Chrome (WSL) Browser

[Page de téléchargement](https://www.jetbrains.com/fr-fr/pycharm/download/#section=linux)

Open a WSL terminal

```Bash
# Installation

cd ~/Downloads
sudo tar xzf pycharm-community-2021.2.2.tar.gz -C /opt/
cd /opt/pycharm-community-2021.2.2/bin/
sh pycharm.sh

```

## Crate a windows shortcut for PyCharm

C:\Windows\System32\wsl.exe -d Ubuntu-20.04 --exec sh /opt/pycharm-community-2021.2.2/bin/pycharm.sh
