#! /bin/bash -e

RELEASE=$(lsb_release -cs)
PACKAGE=dotnet-sdk-2.1

echo "$http_proxy"

if ! dpkg -l "$PACKAGE"
then
   curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg
   echo "deb [arch=amd64] https://... stretch main" > /etc/apt/sources.list.d/dotnetdev.list
   apt-get update

   echo "Download preparatory packages"
   wget https://.../artif/list/proxy-debian-security.debian.org/pool/updates/main/o/openssl1.0/libssl1.0.2_1.0.2r-1\~deb9u1_amd64.deb -O /tmp/libssl1.0.2.deb
   wget https://.../artif/list/proxy-debian-deb.debian.org/pool/main/i/icu/libicu57_57.1-6%2Bdeb9u1_amd64.deb -O /tmp/libicu57.deb

   echo "Install preparatory packages"
   dpkg -i /tmp/libssl1.0.2.deb /tmp/libicu57.deb

   apt-get install -y "$PACKAGE"
fi

