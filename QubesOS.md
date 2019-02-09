# QubesOS
-----------
## 1- Installation and configuration notes

### 1.1-  Install the system from usb
Create a bootable USB

```
$ fdisk -l
$ sudo dd bs=4M if=<ISO File> of=/dev/<USB Drive> status=progress && sync
```
Follow the steps install the default Desktop Environment (Debian)

## 2- Install QubesOS

- Download QubesOS 4  
- Verify PGP Key  
    - https://www.qubes-os.org/security/verifying-signatures/
- Install Qubes
    - https://www.qubes-os.org/doc/installation-guide/

## 3- Create a Debian NodeJS development template

### Contents of the jfrflabs-dev-nodejs AppVM
- KeepassX
- DropBox
- Spotify
- Git
- NodeJS
- VS Code
- Chromium
- Docker

### Clone the debian9 template and name it jfrflabs-dev-nodejs
- Start the TemplateVM
- enable Networking sys-firewall

#### KeepassX
KeepassX is already on the base Debian9 Template Image - Nothing to do.

#### Dropbox
- Copy the .deb (Ubuntu) package from https://www.dropbox.com/install-linux
- Open a terminal an enter the following commands
```
cd ~/Downloads
sudo dpkg -i dropbox_2018.11.28_amd64.deb 
sudo apt --fix-broken install
sudo dpkg -i dropbox_2018.11.28_amd64.deb 
dropbox status
sudo dropbox start -i
sudo dropbox autostart y
sudo shutdown -r now
```
- Do not connect to your account in the template. You will be prompted to do so when you start the AppVM

#### Install Spotify

Reference:https://www.spotify.com/ca-en/download/linux/
    
    ```
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
    echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get update
    sudo apt-get install spotify-client
    ```
    
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

#### GIT

```
> sudo apt-get install git
> git --version
> git config --global user.name "Your Name"
> git config --global user.email "Your Email"
> git conig --global --list
```

#### NodeJS

Install instructions: https://github.com/nodesource/distributions/blob/master/README.md#debinstall

Example or version 10.13

```
> su
> apt-get install curl
> curl -sL https://deb.nodesource.com/setup_10.x | bash -
> apt-get install -y nodejs
> node --version
> npm --version
```


#### Install VSCode

Download the .deb package from the VSCode website

```
> sudo dpkg -i ./Downloads/code_1.28.2-1539735992_amd64\ \(1\).deb 
> code .
```

#### Chromium

```
$ sudo apt install -y chromium
```

- If you need Flash, run the following command.
```
$ cat <<EOF | sudo tee /etc/apt/sources.list.d/non-free.list
deb http://www.deb-multimedia.org stretch main non-free
EOF
$ URL=http://www.deb-multimedia.org/pool/main/d/deb-multimedia-keyring/
$ wget -q ${URL}/deb-multimedia-keyring_2016.8.1_all.deb
$ sudo dpkg -i deb-multimedia-keyring_2016.8.1_all.deb || \
  (sudo apt -f install -y && \
      sudo dpkg -i deb-multimedia-keyring_2016.8.1_all.deb)
$ rm -f deb-multimedia-keyring_2016.8.1_all.deb
$ sudo apt update -y
$ sudo apt install -y flashplayer-chromium
```

- Test installationRun chromium.

```
$ chromium
```

#### Docker
- Ref: https://docs.docker.com/install/linux/docker-ce/debian/

```
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
docker --version
```

#### Docker Compose
https://docs.docker.com/compose/install/

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose 
docker-compose --version
```

#### Finalizing Configuration
- Activate Applications
- Disable Networking
- Empty trash
