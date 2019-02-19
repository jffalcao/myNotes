# Docker for Java Developers

*By: Arun Gupta*

## 2 Run Containers and Build Images

### 2.1 Docker CLI

```
docker --version
docker info
docker --help
docker image --help
docker image ls
docker container ls
docker ps
```

### 2.2 Run your first Docker container

```
docker container run jboss/wildfly
docker ps
docker ps -a
docker run -d jboss/wildfly
docker ps
docker container ls
docker container stop <ContainerName> 
docker container ls
docker container ls -a
docker container ls -aq
docker container rm $(docker container ls -aq)
docker container ls -a
docker run -d --name webserver jboss/wildfly
docker container ls
docker container rm -f webserver 
docker container ls
docker run -it --name webserver jboss/wildfly /bin/bash

# Commands in webserver
ls
pwd
ls
cd wildfly/
ls
cd standalone/
ls
exit

# Commands in terminal 
docker container rm -f webserver 

```

### 2.3 Run Container (ports and volumes)

```

```
