# Real World Docker
----

- Create an ubuntu server virtual machine on VBox
- Find IP of the newly created machine

- Classic method when the VM has an IP on the same segment as the host
    - Select Bridged Adapter and Physical Network Device (eth0, wlan0, etc.)
```
ip addr
nmap -sP 192.168.0.0/24
ssh jffalcao@192.168.0.x
```
- For VMs using NAT, create a  port forwwarding rule:  
https://stackoverflow.com/questions/5906441/how-to-ssh-to-a-virtualbox-guest-externally-through-a-host
    - Go to Network settings for the VM
    - Select Port Forwarding (Advanced section)
    - Add a rule
    - Name: ssh
    - Protocol: TCP
    - Host Port: 3022
    - Guest Port: 22

```
ssh -p 3022 jffalcao@127.0.0.1
```
## Install Docker
- Navigate to https://get.docker.com/
- Follow instructions
```
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh 
docker --version
```
- Add jffalcao to docker group to avoid entering sudo or every command

```
sudo docker images
docker images
sudo usermod -aG docker jffalcao
logout
```
- log into the VM
```
ssh -p 3022 jffalcao@127.0.0.1
docker images

```
- login to docker account
```
docker login
jffalcao
```

- Create a project directory on the Host
```
mkdir -p /jfrflabs/realworlddocker
npm init
touch server.js
```

- Content of server.js

```
var express = require('express');

express()
    .get("*", (req, res) => {
        res.send("Hello World!");
    })
    .listen(3000, (err) => {
        if (err) {
            console.error(err);
            return;
        }
        console.log("Express Server is listening on http://localost:3000");
    });
```

- Install express and test
```
npm install express --save
npm start
```
- navigate to http://localhost:3000

- Build and run the container
```
cd ~/jfrflabs/realworlddocker
docker build --rm -t sample-node:latest .
docker images
docker run -d -p 3000:3000 sample-node
```
- Navigate to http://localhost:3000
