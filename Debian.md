# Debian 9 Stretch - Installation and configuration Notes

- Download ISO from https://www.debian.org/distrib/netinst#smallcd

## Install the system from usb
Create a bootable USB

```
$ fdisk -l
$ sudo dd bs=4M if=<ISO File> of=/dev/<USB Drive> status=progress && sync
```
- Boot from USB
- Follow the steps install the default Desktop Environment (Debian)

## Install Sudo
```
su
apt-get install sudo -y
usermod -aG sudo <user>
sudo shutdown -r now
```

## Update software and repositories
```
sudo apt-get update && apt upgrade
```

## Propietary Wifi Drivers
```
sudo apt-get install firmware-iwlwifi
```

## Vim
```
sudo apt-get install vim -y
```
## GIT

```
git --version

# If Git is not installed enter the following command.
sudo apt-get install git

git --version
git config --global user.name "User Name"
git config --global user.email "Useremail@domain.com"
git config --global --list
```

## OpenJDK

```
sudo apt-get install openjdk-8-jdk
java -version
```

## VS Code

- Download the .deb package from the VS Code Website
https://code.visualstudio.com/docs/setup/linux  

```
sudo dpkg -i ./Downloads/<VSCodePackage>.deb 
code .
```

## IntelliJ IDEA
- Procédure à décrire

## Eclipse
- Procédure à décrire

## Maven
- Procédure à décrire

## Gradle
- Procédure à décrire

## Chromium
- Procédure à décrire

## Docker

https://docs.docker.com/install/linux/docker-ce/debian/

```
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
docker --version
sudo usermod -aG docker $USER
```

## Docker-compose
- Procédure à décrire

## NodeJS

Current version: https://nodejs.org/en/  
Install instructions: https://github.com/nodesource/distributions/blob/master/README.md#debinstall

Example for version 10.13

```
sudo apt-get install curl
su
curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get install -y nodejs
node --version
npm --version
```

## Keepass
```
sudo apt install keepass2
```

## Spotify
Ref: https://www.spotify.com/ca-en/download/linux/

```
sudo apt-get install dirmngr
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
sudo shutdown -r now
```

- If Spotiy Icon disapears after reboot.  
Add Desktop file manually in */usr/share/applications/spotify.desktop*

```
> sudo vi /usr/share/applications/spotify.desktop

<spotify.desktop>
-------------------------------------------------
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
-------------------------------------------------

sudo shutdown -r now
```

## Dropbox

```
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
```
Download the python script from Dropbox the web site and put it in ~

```
python dropbox.py status
python dropbox.py start
python dropbox autostart y
sudo shutdown -r now
```
Verify that dropbox is started

## Connect to Google drive

- Add Google to online accounts

## KVM
Ref: https://www.cyberciti.biz/faq/install-kvm-server-debian-linux-9-headless-server/

```
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils libguestfs-tools genisoimage virtinst libosinfo-bin virt-manager
sudo systemctl status libvirtd.service
sudo systemctl start libvirtd.service
sudo systemctl enable libvirtd.service
```

## VirtualBox
- Procédure à décrire

## Installing VBox Guest Additions
https://www.linuxbabe.com/desktop-linux/how-to-install-virtualbox-guest-additions-on-debian-step-by-step

## VirtualBox - Setting NTP on Debian guest

https://superuser.com/questions/649661/virtualbox-ubuntu-vm-doesnt-automatically-sync-time-with-host-even-with-guest-a

```
sudo apt-get install ntp ntpdate
date
sudo service ntp stop
sudo ntpdate pool.ntp.org
sudo service ntp start
date
```

## Chrome

Download the .deb from the web

```
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
```