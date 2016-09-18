# Jenkins 

This is a Docker Jenkins container based on the OpenJdk 8 image with Debian Linux as OS. The Jenkins uses Docker from the underlying Docker host and thus can create, start, push etc. Docker images.

<img src="http://jenkins-ci.org/sites/default/files/jenkins_logo.png"/>

The following additional software is installed:

* Maven
* Git
* Subversion
* Nano
* Node.js
* npm
* curl
* wget
* iputils-ping
* Docker binaries
* Docker compose
* Docker machine
* Jenkins Plugins
	* greenballs



## Build

```
docker build . -t jenkins-openjdk
```


## Launch

```
docker run -itd -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock --name jenkins renewinkler/jenkins-openjdk
```


## Usage

```
http://192.168.99.100:8080
```


## Connect to Server

```
docker exec -it jenkins /bin/bash
```
