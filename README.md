## Making a bootable usb key

https://www.youtube.com/watch?v=rpGgTTFKwiU

```
$ fdisk -l
$ sudo dd bs=4M if=<ISO File> of=/dev/<USB Drive> status=progress && sync
```
## Making a bootable Win 10 USB Key on Linux
./create-win10-bottable-usb-on-linux.md

## Making a USB usable
```
sudo fdisk -l
sudo wipefs --all /dev/<sdb>
sudo fdisk /dev/<sdb>
```
- create new partition
- fat32
- use all space available
- write changes
```
sudo fdisk -l
sudo mkfs.vfat -n '<label>' /dev/<sdb1>
```

## Enabling SSH
- Debain example
```
> sudo apt update
> sudo apt install openssh-server
> sudo systemctl status
```

## Enable SSH X11 Forwarding

- Make sure ssh is enabled
- Install xauth

```
> sudo apt update
> sudo apt install xauth
```
- Edit /etc/ssh/ssh_config
```
    ForwardX11 yes  
    ForwardX11Trusted yes
```
- Edit /etc/ssh/sshd_config
```
    X11Forwarding yes
    X11DisplayOffset 10
```
- restart ssh
```
> sudo systemctl restart ssh
```
- different ways to connect to remote machine using SSH X11 Forwarding.
```
Standard
> ssh -X user@machineip

With compression
> ssh -X -C user@machineip

Trusted (Less secure)
> ssh -Y user@machineip

With cypher
> ssh -X -c cyphername[,cyphername] user@machineip

Example
> ssh -X -C -c blowfish-cbc, arcfour user@192.168.1.100

Test
> galculator
