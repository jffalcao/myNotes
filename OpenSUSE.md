## OpenSUSE - Installation and configuration notes

### 1- Install the system from usb
Create a bootable USB

```
fdisk -l
sudo dd bs=4M if=<ISO File> of=/dev/<USB Drive> status=progress && sync
```
Follow the steps install KDE

### 2- Update software and repositories

*Update repositories*
```
sudo zypper refresh
```
  
*Patches only*
```
sudo zypper patch
```

*Full update*
```
sudo zypper update
```

### 3- Keepass
```
sudo zypper install keepass
```

### 4- Chrome
https://www.linuxbabe.com/desktop-linux/how-to-install-google-chrome-on-opensuse-leap-42-1

```
sudo zypper addrepo http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
sudo zypper refresh
wget https://dl.google.com/linux/linux_signing_key.pub
sudo rpm --import linux_signing_key.pub 
sudo zypper install google-chrome-stable 
```

### 5- Install Snap
Get snapd from https://software.opensuse.org/  
Choose the 1click experimental package for the version being installed (Use Firefox)  
Follow instructions in YAST

Verify that snap is installed then enable the service
```
sudo zypper install snapd
sudo systemctl enable --now snapd.socket
snap list
```

### 6- Spotify trough snap
```
snap install spotify
```

Spotify should appear in the menu, if not reboot

### 7- Dropbox
```
sudo zypper install dropbox
dropbox start -i
```

### 8- Connect to Google drive on Dolphin

Add Google to online accounts
```
sudo zypper install kaccounts-providers kio-gdrive
```
create a place in Dolphin
- Label: googledriveaccount
- Location: gdrive:/username@gmail.com

### 9- GIT
```
sudo zypper install git
git --version
git config --global user.name "Mona Lisa"
git config --global user.email "email@example.com"
git config --global --list
```

### 10- VS Code
https://code.visualstudio.com/docs/setup/linux

```
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/zypp/repos.d/vscode.repo'
```
Then update the package cache and install the package using:
```
sudo zypper refresh
sudo zypper install code
```

### 12- VirtualBox

- Download VirtualBox
https://software.opensuse.org/package/virtualbox

```
sudo zypper in ~/Downloads/virtualbox-5.2.20-lp150.4.20.1.x86_64.rpm
> sudo usermod -aG vboxusers <user>
```


### 13- NodeJS
```
sudo zypper install nodejs
```

### 14- Docker
```
sudo zypper install docker
sudo docker ps
systemctl status docker
systemctl start docker
systemctl enable  docker
sudo docker ps
sudo usermod -aG docker jffalcao
docker ps
logout
```

### 15- Docker-Machine
- Veriy last version of Docker Machine at https://github.com/docker/machine/releases/
```
base=https://github.com/docker/machine/releases/download/<v0.16.0> 
curl -L $base/docker-machine-$(uname -s)-$(uname -m) -o /tmp/docker-machine
sudo install /tmp/docker-machine /usr/local/bin/docker-machine
```

### Vagrant
https://kernelmastery.com/install-setup-vagrant/

https://releases.hashicorp.com/vagrant/

```
    sudo wget --no-check-certificate <vagrant.rpm>
    sudo wget --no-check-certificate https://releases.hashicorp.com/vagrant/2.2.0/vagrant_2.2.0_x86_64.rpm
    sudo zypper in vagrant_2.2.0_x86_64.rpm
    vagrant --version
```

### Install KVM for testing install up to this point

```
> sudo zypper install kvm libvirt libvirt-python qemu virt-manager
> sudo systemctl status libvirtd.service
> sudo systemctl start libvirtd.service
> sudo systemctl enable libvirtd.service
```

### Equivalent commands Ubuntu/OpenSuse

https://news.opensuse.org/2013/03/22/opensuse-for-new-geekos/

### VirtualBox and OpenSuse

https://en.opensuse.org/VirtualBox

### Screen saver or KDE Plasma 5

https://forums.opensuse.org/content.php/190-Alternate-Screensaver-in-KDE-Plasma-5

