# ArchLinux - Configuration and Installation
-----

## Installation
https://www.youtube.com/watch?v=GKdPSGb9f5s&t=6s&index=2&list=PLSmXPSsgkZLt66s-M_gfQtMakc8iYJY6M

- Create a bootable USB/CD
- Boot from USB/CD

```
ping -c 3 8.8.8.8
ip link
pacman -Syy
pacman -S reflector
reflector -c "Canada" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist
fdisk -l
fdisk /dev/<sda>
```
- Dispaly partitions (p)
- remove any existing partitions (d)
- add a new partition (primary)
- take all disk space or this partition
- make bootable (a)
- type = linux
- write

```
fdisk -l
mkfs.ext4 /dev/<sda1>
mount /dev/<sda1> /mnt
lsblk
pacstrap -i /mnt base base-devel
genfstab -U -p /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab
```
- logon to new partition

```
arch-chroot /mnt /bin/bash
nano /etc/locale.gen
```
- uncomment line en_US.UTF8 UTF8
- save and exit

```
locale-gen
ln -sf /usr/share/zoneino/Canada/Eastern /etc/localtime
hwclock --systohc --utc
echo <hostname> > /etc/hostname
nano /etc/hosts
```
- insert new line
- type 127.0.0.1 localhost.localdomain <hostname>
- save and exit
```
systemctl enable dhcpcd
passwd
pacman -S grub
grub-install /dev/<sda>
grub-mkconfig -o /boot/grub/grub.cfg
exit
umount -R /mnt
reboot
```

## Post-Installation
- login as root

```
useradd -m -g users -G wheel -s /bin/bash <username>
passwd <username>
EDITOR=nano visudo
```
- uncomment line  %wheel ALL=(ALL) ALL
- save and exit

```
logout
login as <username>
sudo pacman -S pulseaudio pulseaudio-alsa
sudo pacman -S xorg xorg-xinit
```
- Choose graphical card <Integrated>

```
echo "exec startkde" > ~/.xinitrc
sudo pacman -S <plasma | plasma-meta | plasma-desktop>
```
- plasma = Full install individual packages
- pasma-meta = Full install one package
- plasma-desktop = Minimal Install

```
sudo pacman -S konsole dolphin firefox kate
startx
sudo pacman -S sddm
sudo systemctl enable sddm.service
reboot
```
