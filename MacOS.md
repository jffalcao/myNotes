# MacOS Installation and configuration
---------------------------------------

## Patch MacBook pro for GPU Failure
- Ref: https://www.youtube.com/watch?v=8-7UNFKG1eE
- Ref: https://www.imore.com/how-turn-system-integrity-protection-macos
- Navigate to: https://github.com/julian-poidevin/MBPMid2010_GPUFix/releases

prerequisite (Usually you will be prompted for this)
```
1- Boot in recovery mode (Boot with Command-R)
2- Enter terminal
3- Enter command csrutil disable
4- Reboot
5- Install the patch from Julian Poidevin
```

## Homebrew

- Navigate to https://brew.sh

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install tree
```
brew install tree
```

## Making a bootable usb key
ref: http://osxdaily.com/2015/06/05/copy-iso-to-usb-drive-mac-os-x-command/

```
diskutil list
diskutil umount /dev/disk2
cd ~/Downloads
sudo dd if=./Downloads/debian-9.5.0-amd64-netinst.iso of=/dev/rdisk2 bs=1m
```
## Install VirtualBox
- Download the MacOS Version from https://www.virtualbox.org/wiki/Downloads and execute the .dmg file

- For Debians VMs. Guest Additions have to be installed from the mounted device after you choose the option to insert the guest Additions CD image in the Devices Menu.

## Checking which JDKs are installed
```
/usr/libexec/java_home -V
```
