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

