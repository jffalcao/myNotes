```
sudo dnf update
```
### Setting up root passord
```
sudo -i
passwd
```
### Spotify
https://negativo17.org/spotify-client/
```
su
dnf config-manager --add-repo=https://negativo17.org/repos/fedora-spotify.repo
dnf install -y spotify-client
```
### VSCode

https://code.visualstudio.com/docs/setup/linux
```
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code
```

### Virtualization
https://docs.fedoraproject.org/en-US/quick-docs/getting-started-with-virtualization/

```
> dnf groupinfo virtualization
> su
# dnf install @virtualization
# systemctl status libvirtd

--- if not started
# systemctl start libvirtd

--- To start the service on boot, run:

# systemctl enable libvirtd
```
