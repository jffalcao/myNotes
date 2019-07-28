# Debian 10 Buster - Stable

## Install non-official non-free iso
https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current/amd64/

## Add a user to sudo

```
su -
usermod -aG sudo <username>
shutdown -r now

sudo apt-get update && apt-get upgrade
```

## Update software and repositories
```
sudo apt-get update && apt-get upgrade
```

## [Optionnal] Propietary Wifi Drivers
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
sudo vi /etc/environment 

#---------------------------------------------------
# file: /etc/environment

JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
 #---------------------------------------------------

cat /etc/environment 
source /etc/environment
echo $JAVA_HOME
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
- Download from: https://maven.apache.org/download.cgi
- Download checksum file

```
cd ~/Downloads/
s -al
sha512sum apache-maven-3.6.0-bin.tar.gz
cat apache-maven-3.6.0-bin.tar.gz.sha512 
sudo tar -xzvf apache-maven-3.6.0-bin.tar.gz -C /opt/
cd ~
ls -al
sudo vi .profile 

#------------------------------------------------
# File: ~/.profile
# Add the following line at the end of the file

export PATH=/opt/apache-maven-3.6.0/bin:$PATH
#------------------------------------------------

cat .profile 
source .profile 
echo $PATH 
mvn -v

```

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

## Installation of dotnet core 2.2 on a fresh Debian Buster install

```
    1  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
    2  ls
    3  sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
    4  s -
    5  su -
    6  sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
    7  ls -l
    8  ls -l /etc/apt/trusted.gpg.d/
    9  wget -q https://packages.microsoft.com/config/debian/9/prod.list
   10  ls -l
   11  sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
   12  ls -l
   13  sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
   14  sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list
   15  sudo apt-get update
   16  sudo apt-get install dotnet-sdk-2.2
   17  sudo apt-get install aspnetcore-runtime-2.2
   18  sudo apt-get install dotnet-runtime-2.2
   19  sudo apt-get install dotnet-runtime-deps-2.2
   20  cd Downloads/
   21* 
   22  sudo dpkg -i libssl1.0.2_1.0.2r-1~deb9u1_amd64.deb 
   23  sudo dpkg -i libicu57_57.1-6+deb9u2_amd64.deb 
   24  sudo apt-get install dotnet-sdk-2.2
   25  dotnet
   26  cd ..
   27  sudo apt-get install vim
   28  sudo apt-get install git
   29  mkdir jfrflabs
   30  cd jfrflabs/
   31  git config --global --list
   32  git config --global user.name "Jose Fernando Falcao"
   33  git config --global user.email "jfribeirofalcao@gmail.com"
   34  git conig --global --list
   35  git config --global --list
   36  git clone https://github.com/jffalcao/myNotes.git
   37  cd myNotes/
   38  ls
```

- VS Code installation

```
50  cd ~/Downloads/
   51  ls
   52  sudo dpkg -i code_1.32.3-1552606978_amd64.deb 
   53  ls
   54  cd ..
   55  cd jfrflabs/
   56  ls
   57  code -r myNotes/
```

