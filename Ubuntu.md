# Ubuntu
Installation and configuration notes for version 18.04

### 1- Install the system from usb
Create a bootable USB

```
$ fdisk -l
$ sudo dd bs=4M if=<ISO File> of=/dev/<USB Drive> status=progress && sync
```
Follow the steps install the default Desktop Environment (Debian)

### 2- Update software and repositories
```
sudo apt-get update && apt-get upgrade
```

### 3- Keepass

```
sudo apt install keepass2
```

### 4- Chromium
```
sudo apt-get install chromium-browser
```

### 5- Spotify
https://www.spotify.com/ca-en/download/linux/

- Click on Spotify in Ubuntu Software and follow the steps

### 6- Dropbox
https://www.dropbox.com/install

```
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2018.11.28_amd64.deb
cd ~/Downloads
sudo dpkg -i dropbox_2018.11.28_amd64.deb 

# If package has errors run the following command
sudo apt --fix-broken install
```
- Veriy that dropbox is functionning

### 7- Connect to Google drive

Add Google to online accounts

### 8- GIT

```
sudo apt install git
git --version
git conig --global user.name "Jose Fernando Falcao"
git config --global user.name "Jose Fernando Falcao"
git config --global user.email "thegardenautomaton@gmail.com"
git config --global --list
```

### 9- VS Code

https://code.visualstudio.com/docs/setup/linux
Download the .deb package from the VSCode website


```
cd ~/Downloads
sudo dpkg -i code_1.29.1-1542309157_amd64.deb 
sudo apt --fix-broken install
code .
```

### 10- NodeJS
```
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
node --version
npm --version

# Test installation
mkdir -p jfrflabs/test-node-install
cd jfrflabs/test-node-install/
```

- Follow the getting started guide from NodeJS  
https://nodejs.org/en/docs/guides/getting-started-guide/

### 11- Go Programming Language
- Download Go  
https://golang.org/doc/install

```
cd ~/Downloads
sudo tar -C /usr/local/ -xzf go1.11.2.linux-amd64.tar.gz 
```
- Change the PATH Variable to include Go

```
sudo nano /etc/profile

# Enter the following line at the end of the file
export PATH=$PATH:/usr/local/go/bin
```
- Save and exit
- Test Go   
```
mkdir -p jfrflabs/test-go-install
nano hello.go

# hello.go
package main

import "fmt"

func main() {
	fmt.Printf("hello, world\n")
}
```
- save and exit

```
go build
./hello
```

### 12- Docker
https://docs.docker.com/install/linux/docker-ce/ubuntu/

```
sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
docker --version
docker ps
sudo usermod -aG docker jffalcao

# Logout
gnome-session-quit 
docker ps
```

### 13- Docker-machine

https://docs.docker.com/machine/install-machine/

```
base=https://github.com/docker/machine/releases/download/v0.16.0
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
sudo install /tmp/docker-machine /usr/local/bin/docker-machine
docker-machine --version
```

### 14- Install KVM for testing install up to this point
https://www.cyberciti.biz/faq/install-kvm-server-debian-linux-9-headless-server/


```
> sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils libguestfs-tools genisoimage virtinst libosinfo-bin virt-manager
> sudo systemctl status libvirtd.service
> sudo systemctl start libvirtd.service
> sudo systemctl enable libvirtd.service
```

### VirtualBox
- Download VirtualBox from:  
https://www.virtualbox.org/wiki/Linux_Downloads

```
sudo apt update && apt upgrade
sudo apt-get -y install gcc make linux-headers-$(uname -r) dkms
sudo dpkg -i virtualbox-5.2_5.2.22-126460_Ubuntu_bionic_amd64.deb 
sudo apt --fix-broken install
usermod -aG vboxusers user_name
```

### Installing VBox Guest Additions
https://www.linuxbabe.com/desktop-linux/how-to-install-virtualbox-guest-additions-on-debian-step-by-step

### Enabling SSH

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
