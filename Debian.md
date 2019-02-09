## Debian / Ubuntu
 - Installation and configuration notes

### 1- Install the system from usb
Create a bootable USB

```
$ fdisk -l
$ sudo dd bs=4M if=<ISO File> of=/dev/<USB Drive> status=progress && sync
```
Follow the steps install the default Desktop Environment (Debian)

### 2- Install Sudo
```
> su
# apt-get install sudo -y
# usermod -aG sudo jffalcao
# reboot
```

Verify that sudo is functionning
```
sudo apt update && sudo apt upgrade
```

### 3- Update software and repositories

*Update repositories*

```
> sudo apt update
```

*Full update*
```
> sudo apt update && apt upgrade
```

### 4- Keepass

```
> sudo apt install keepass2
```

### 5- Chrome

Download the .deb from the web


```
> sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
> sudo apt --fix-broken install
> sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
```

### 6- Spotify

```
> sudo apt-get install dirmngr
> sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
> echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
> sudo apt-get update
> sudo apt-get install spotify-client
> sudo reboot

```

Spotiy Icon disapears after reboot
- Add Desktop file manually: /usr/share/applications/spotify.desktop

```
> sudo vi /usr/share/applications/spotify.desktop

[Desktop Entry]
Name=Spotify
GenericName=Music Player
Comment=Listen to music using Spotify
Icon=spotify-client
Exec=spotify %U
TryExec=spotify
Terminal=falsOe
Type=Application
Categories=Qt;Audio;Music;Player;AudioVideo
MimeType=x-scheme-handler/spotify

>reboot

```

### 7- Dropbox


```
> cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
> ~/.dropbox-dist/dropboxd
```
Download the python script from Dropbox the web site and put it in ~

```
> python dropbox.py status
> python dropbox.py start
> python dropbox autostart y
> reboot
```
Veriy that dropbox is started

### 8- Connect to Google drive

Add Google to online accounts

### 9- GIT

```
> sudo apt-get install git
> git --version
> git config --global user.name "Jose Fernando Falcao"
> git config --global user.email "thegardenautomaton@gmail.com"
> git conig --global --list
```

### 10- VS Code

https://code.visualstudio.com/docs/setup/linux
Download the .deb package from the VSCode website


```
> sudo dpkg -i ./Downloads/code_1.28.2-1539735992_amd64\ \(1\).deb 
> code .
```

### 11- Install KVM for testing install up to this point
https://www.cyberciti.biz/faq/install-kvm-server-debian-linux-9-headless-server/


```
> sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils libguestfs-tools genisoimage virtinst libosinfo-bin virt-manager
> sudo systemctl status libvirtd.service
> sudo systemctl start libvirtd.service
> sudo systemctl enable libvirtd.service
```

### Installing VBox Guest Additions
https://www.linuxbabe.com/desktop-linux/how-to-install-virtualbox-guest-additions-on-debian-step-by-step


### NodeJS

Current version: https://nodejs.org/en/  
Install instructions: https://github.com/nodesource/distributions/blob/master/README.md#debinstall

Example or version 10.13

```
> su
> curl -sL https://deb.nodesource.com/setup_10.x | bash -
> apt-get install -y nodejs
> node --version
> npm --version
```


------------------
# Old version pre-2018-11-05
-----------------------

### Install Keepass Debian/Ubuntu
```
sudo apt-add-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install keepass2 
```
### Enabling SSH
https://linuxize.com/post/how-to-enable-ssh-on-ubuntu-18-04/
```
> sudo apt update
> sudo apt install openssh-server
> sudo systemctl status ssh
```
### Adding Ubuntu repositories
https://askubuntu.com/questions/507588/not-able-to-install-tree-comand-in-ubuntu

```
# Example installing universe
sudo add-apt-repository universe

# Install all of them
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
