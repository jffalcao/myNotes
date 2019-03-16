## Problem: Wifi won't connect

- Copy Debian firmware file then depackage

``` 
su -
dpkg -i firmware-misc-nonfree_20161130-4_all.deb 
shutdown -r now
```

- Add the following lines to /etc/NetworkManager/NetworkManager.conf
- https://unix.stackexchange.com/questions/397620/wifi-wont-connect-even-though-it-shows-all-the-ssid

```
[device]
wifi.scan-rand-mac-address=no
```

- Restart NetworkManager

```
systemctl restart NetworkManager
```

## Ajout du user courant a sudo

```
usermod -aG sudo jffalcao
reboot

sudo apt-get update && apt-get upgrade
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

