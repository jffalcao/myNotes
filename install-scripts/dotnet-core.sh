#! /bin/bash -e

RELEASE=$(lsb_release -cs)
PACKAGE=dotnet-sdk-2.2

if ! dpkg -l "$PACKAGE"
then
   curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg
   echo "deb [arch=amd64] https://packages.microsoft.com/debian/9/prod stretch main" > /etc/apt/sources.list.d/microsoft-prod.list
   apt-get update

   echo "Download preparatory packages"
   wget http://security.debian.org/debian-security/pool/updates/main/o/openssl1.0/libssl1.0.2_1.0.2r-1~deb9u1_amd64.deb -O /tmp/libssl1.0.2.deb
   wget http://ftp.us.debian.org/debian/pool/main/i/icu/libicu57_57.1-6+deb9u2_amd64.deb -O /tmp/libicu57.deb

   echo "Install preparatory packages"
   dpkg -i /tmp/libssl1.0.2.deb /tmp/libicu57.deb

   apt-get install -y "$PACKAGE"
fi

