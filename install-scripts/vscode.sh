#! /bin/bash -x

if ! dpkg -l code
then
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg
  echo "deb [arch=amd64] https://.../proxy-debian-microsoft.com-vscode/ stable main" > /etc/apt/sources.list.d/vscode.list
  apt-get update
  apt-get install -y code
fi

