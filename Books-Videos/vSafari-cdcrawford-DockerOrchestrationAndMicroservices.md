## Docker Orchestration and Microservices, Second Edition
-----------------
By: Charles David Crawford  
Publisher: Addison-Wesley Professional  
Pub. Date: January 15, 2018  
Running Time: 2 hours 40 minutes 35 seconds  
Subscriber Rating: 0 out of 5 rating [0 Ratings]  

https://proquestcombo-safaribooksonline-com.res.banq.qc.ca/video/operating-systems-and-server-administration/virtualization/9780134670805


### Introduction - Understanding basic Docker Concepts

- ssh into ubuntu machine (Share the wworkspace between Host and Guest - see qemu-kvm section)
- Install docker engine on ubuntu Install using the repository:  
https://docs.docker.com/install/linux/docker-ce/ubuntu/
```
    sudo apt-get remove docker docker-engine docker.io
    sudo apt-get update
    sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint (veriy that signature 0EBFCD8 for docker)
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get update
    sudo apt-get install docker-ce
  ```

- Verify Docker Installation with:
```
    sudo docker run hello-world
    sudo docker ps
    sudo docker ps -a
    sudo docker images
```
- Add the current user to the docker group to avoid having to use sudo all the time
```
    sudo gpasswd -a ${USER} docker 
    ---OR---
    sudo usermod -aG docker $USER
```
- Test that sudo is not needed
```
    logout
    ssh <User>@<vmIP>
    docker ps
    docker ps -a
    docker images

```
- Run ngninx
```
    mkdir -p jfrflabs/doc-n-ms
    tree
    cd jfrflabs/docker-orch
    
    # Alternatives
    1- docker run -d -p 8080:80 nginx   #Forwarding -p <HostIP>:<GuestIP>
    2- docker run -d -P ngninx

    docker ps # compare exposed ports of two alternatives

    wget http://localhost:8080
    cat index.html
    docker ps
    ip addr

    # run in browser
    ----------------
    http://localhost:8080
    http://localhost:<assignedIP> #for the container ran with -P
```

### Lesson 2: Dockerizing Your Microservices
- create a directory for the app

```
    mkdir -p ~/jfrflabs/docker-orch/lesson2
    cd ~/jfrflabs/docker-orch/lesson2
```

- create server.js file

```
    var express = require('express');
    var app = express();

    app.get('/', function(req, res){
        res.json({'msg': 'Hello Wold'});
    });

    var port = process.env.port || 3000;
    app.listen(port, function(){
        console.log('Server Started');
    });
```
- Create a Dockerfile
```
    FROM node:0.12.7

    RUN mkdir -p /usr/src/app
    WORKDIR /usr/src/app

    COPY . /usr/src/app
    RUN npm install

    EXPOSE 3000

    CMD [ "npm", "start" ]
```

- Test the application Installation 

```
    npm init
    npm install express --save
    npm start
    curl http://localhost:3000
```

- Stop the express server
- Build test and run the container
```
    docker build -t myservice .
    docker run -d -P 
    docker ps
    curl http://localhost:<Port assigned by Docker>
```

- adding to git
```
    git init
    git add .
    git commit -m "Initial Commit"
```

### Lesson 3 DockerHub

- build and push to Docker Hub
```
    docker build -t jffalcao/myservice:1.0 .
    docker login
    docker push jffalcao/myservice
```
- Clean up images that were used to create the build myservice:latest in my case
```
    docker images
    docker rmi myservice:latest   #err Dazzling_shirley using image
    docker ps -a
    docker rm dazzling_shirley 
    docker ps -a
    docker rmi myservice:latest 
    docker images
```
- Pull from Docker Hub
```
    docker pull jffalcao/myservice:1.0
    docker images
```

### Lesson 4: Deploying Single Instance Single Container App
- Install Docker Machine using the guidelines or your specific OS  
https://docs.docker.com/machine/install-machine/#install-machine-directly

```
docker-machine --version
docker-machine ls
docker-machine create --driver virtualbox integr-srvr
docker-machine env integr-srvr
docker-machine ls
docker info
eval $(docker-machine env integr-srvr)
docker info
ls ~/.docker/machine/machines/dev/

# Start the container in the guest
docker-machine ssh integr-srvr
exit
docker images
docker run -d -p 80:3000 jffalcao/myservice
docker ps
docker-machine ls       #To get the IP o the machine


# Run the docker container rom the Host
firefox http://<GuestIP>:<ContainerAssignedPort>

# Revert docker engine control to Host
docker-machine env -u
eval $(docker-machine env -u)
docker info
docker ps -a
docker images
docker-machine ls
```

- Example with DigitalOcean Droplet


