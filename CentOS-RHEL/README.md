# CentOS 7 Installation Notes

Installation notes for CentOS Linux release 7.5.1804 (Core). 


## Install EPEL
-------

```
$ sudo yum install epel-release
$ sudo yum repolist
```

## Install Spotify
------------------

Prerequistes: EPEL  
Reference: https://negativo17.org/spotify-client/

```
$ yum-config-manager --add-repo=https://negativo17.org/repos/epel-spotify.repo
$ yum -y install spotify-client
```

## Install GIT
--------------

Last version of GIT must be installed using a third party repo.

```
$ sudo yum install  http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm
$ sudo yum install git
$ git --version
```

## VS Code
----------

Reference: https://code.visualstudio.com/docs/setup/linux

```
$ sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
$ sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
$ yum check-update
$ sudo yum install code
```

## Install Dropbox
------------------

Reference: [How To Install Dropbox Client as a Service on CentOS 7](https://www.digitalocean.com/community/tutorials/how-to-install-dropbox-client-as-a-service-on-centos-7)

Reference: https://www.dropbox.com/install-linux

Install using the headless procedure via command line

```
$ cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
$ /opt/dropboxd
```
Dropbox will ask for a confirmation to connect to account.

Make Dropbox daemon start automatically (service) 

```
$ sudo curl -o /etc/init.d/dropbox https://gist.githubusercontent.com/thisismitch/6293d3f7f5fa37ca6eab/raw/2b326bf77368cbe5d01af21c623cd4dd75528c3d/dropbox
$ sudo curl -o /etc/systemd/system/dropbox.service https://gist.githubusercontent.com/thisismitch/6293d3f7f5fa37ca6eab/raw/99947e2ef986492fecbe1b7bfbaa303fefc42a62/dropbox.service
$ sudo chmod +x /etc/systemd/system/dropbox.service /etc/init.d/dropbox
$ sudo vi /etc/sysconfig/dropbox
```

Enter DROPBOX_USERS="username" in the file and then verify with;

```
$ cat /etc/sysconfig/dropbox
$ sudo systemctl daemon-reload
$ sudo systemctl start dropbox
$ sudo systemctl enable dropbox
```
## Install Keepass
------------------

prerequisites: EPEL

```
$ sudo yum install keepass
```

## Install Docker
-----------------

Ref: [Digital Ocean - How To Install and Use Docker on CentOS 7](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-centos-7)

```
$  sudo yum check-update
$  curl -fsSL https://get.docker.com/ | sh
$  sudo systemctl start docker
$  sudo systemctl status docker
$  sudo systemctl enable docker (Auto start the service at startup)
```
[Option]
If you would like to use Docker without using sudo, you should now consider
adding your user to the "docker" group with something like:

```
  sudo usermod -aG docker $(whoami)
  sudo usermod -aG docker <UserName>
```
Remember that you will have to log out and back in for this to take effect!

WARNING: Adding a user to the "docker" group will grant the ability to run
         containers which can be used to obtain root privileges on the
         docker host.
         Refer to https://docs.docker.com/engine/security/security/#docker-daemon-attack-surface
         for more information.

## Install Node.js
------------------

 [How To Install Node.js on a CentOS 7 server](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-a-centos-7-server)

*Install Node from the EPEL Repository*
```
sudo yum install epel-release
sudo yum install nodejs
```

## Instal Go - Version 1.7 (and others)
---------------------------------------
https://www.digitalocean.com/community/tutorials/how-to-install-go-1-7-on-centos-7

## Instal VirtualBox
---------------------------------------
```
$ sudo su -
# cd /etc/yum.repos.d/
# wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo
# yum update
# yum install binutils qt gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms
# yum install VirtualBox-5.2

---- Rebuild Kernel Modules
/usr/lib/virtualbox/vboxdrv.sh setup
# usermod -a -G vboxusers user_name
```

## Install VBox GuestAdditions
------------------------------
https://wiki.centos.org/HowTos/Virtualization/VirtualBox/CentOSguest


Install Google Drive (Doesn't work)
--------------------
https://github.com/kimduho/linux/wiki/CentOS-7-Google-Drive-mount

=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

1. To configure OPAM in the current shell session, you need to run:

      eval `opam config env`

2. To correctly configure OPAM for subsequent use, add the following
   line to your profile file (for instance ~/.bash_profile):

      . /home/jffalcao/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

3. To avoid issues related to non-system installations of `ocamlfind`
   add the following lines to ~/.ocamlinit (create it if necessary):

      let () =
        try Topdirs.dir_directory (Sys.getenv "OCAML_TOPLEVEL_PATH")
        with Not_found -> ()
      ;;

=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
