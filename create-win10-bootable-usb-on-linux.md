[woeusb - Github](https://github.com/slacka/WoeUSB)
[Create a Bootable windows 10 usb in Linux/Debian](https://www.cyberciti.biz/faq/create-a-bootable-windows-10-usb-in-linux/)

### History
$ cd ~/Downloads
$ git clone https://github.com/slacka/WoeUSB.git
$ cd WoeUSB/
$ ./setup-development-environment.bash 
$ sudo apt-get install devscripts equivs gdebi-core
$ mk-build-deps
$ sudo gdebi woeusb-build-deps_*.deb
$ sudo gdebi woeusb-build-deps_*.deb
$ dpkg-buildpackage -uc -b
$ sudo gdebi ../woeusb*.deb
$ woeusbgui
