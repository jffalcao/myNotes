# Docker for Java Developers

*By: Arun Gupta*

https://github.com/arun-gupta/docker-for-java.git

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
docker container run -d --name webserver -P jboss/wildfly
docker container ls
firefox http://localhost:32768
docker container logs webserver 
docker container ls
docker container rm -f webserver 
docker container ls
docker container ls -a

# Assign a specific port
docker container run -d -p 80:8080 jboss/wildfly
firefox http://localhost:80
docker container rm -f <ContainerID>
docker container ls

# Deploy a war file to webfly container
docker container run -d --name webserver -p 8080:8080 -v `pwd`/webapp.war:/opt/jboss/wildfly/standalone/deployments/webapp.war  jboss/wildfly
docker container logs webserver 
curl http://localhost:8080/webapp/resources/persons
```

## 2.4 Create your first Docker image

```
cd ~/jfrflabs/docker-for-java/
mkdir helloimage
cd helloimage/
code Dockerfile

------------------ Dockerfile ---------------------

FROM ubuntu

CMD echo "Hello World!!!"

------------------ Dockerfile <EOF> ---------------

docker image build -t helloworld .
docker image ls
docker history helloworld:latest 
ocker container run helloworld
```

## 2.5 Create your first Java Docker image

```
cd ~/jfrflabs/docker-for-java
mkdir hellojava
mv Dockerfile hellojava/
cd hellojava/
vi Dockerfile

# Dockerfile content ----------------------------------------
FROM openjdk
CMD echo java -version
-------------------------------------------------------------

ls
docker image build -t hellojava .
docker image ls
docker container run hellojava
```
- Modify Dockerfile FROM openjdk:jdk-alpine

```
vi Dockerfile
# Dockerfile content ----------------------------------------
FROM openjdk:jdk-alpine
CMD echo java -version
-------------------------------------------------------------

cat Dockerfile
docker image build -t hellojava:alpine .
docker image ls
docker container run hellojava:alpine 
```

## 2.6 Copy files in the Docker image

```

```