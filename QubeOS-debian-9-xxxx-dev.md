# QubesOS-debian-9-xxxx-dev template config

- Clone the debian-9 template
- Enable network (sys-firewall)

```
sudo apt-get update && apt-get upgrade
```

### GIT
```
sudo apt-get install git
git --version
```

### OpenJDK
```
sudo apt-get install openjdk-8-jdk 
java -version
```

### VS Code

- Download the .deb package from https://code.visualstudio.com/download

```
sudo dpkg -i /home/user/Downloads/code_1.30.2-1546901646_amd64.deb 
code .
```

### InteliJ IDEA

- Download tar file: *ideaIU-2018.3.4.tar.gz* 
- Download sha256 checksum file: *ideaIU-2018.3.4.tar.gz.sha256*

```
cd Downloads/
sha256sum ideaIU-2018.3.4.tar.gz
cat ideaIU-2018.3.4.tar.gz.sha256 
cd /opt/
sudo tar -xvzf ~/Downloads/ideaIU-2018.3.4.tar.gz 
sudo mv idea-IU-183.5429.30/ idea
/opt/idea/bin/idea.sh
```

### Eclipse
- Download tar file from: https://www.eclipse.org/downloads/download.php?file=/oomph/epp/2018-12/R/eclipse-inst-linux64.tar.gz
- Save sha512 to a text file: eclipse-inst-linux64.tar.gz.sha512

```
vim eclipse-inst-linux64.tar.gz.sha512 
    Paste sha512 key and save
sha512sum eclipse-inst-linux64.tar.gz
cat eclipse-inst-linux64.tar.gz.sha512 
sudo tar -xvzf eclipse-inst-linux64.tar.gz -C /opt
sudo ./eclipse-installer/eclipse-inst 
```
- JEE for Java Deloppers
- Install folder /opt/eclipse/jee-2018-12
- Create the desktop file: /usr/share/applications/eclipse.desktop

```
sudo vim /usr/share/applications/eclipse.desktop

[Desktop Entry]
Encoding=UTF-8
Name=Eclipse 
Comment=Eclipse Shortcut
Type=Application
Terminal=false 
Exec=/opt/eclipse/jee-2018-12/eclipse/eclipse 
Icon=/opt/eclipse/jee-2018-12/eclipse/icon.xpm 
StartupNotify=true 
Categories=Development;IDE; 

```


