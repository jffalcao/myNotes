## Problem: Wifi won't connect

- Copy Debian firmware file then depackage

``` 
su -
dpkg -i firmware-misc-nonfree_20161130-4_all.deb 
shutdown -r now
```

- Add the following lines to /etc/NetworkManager/NetworkManager.conf

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

