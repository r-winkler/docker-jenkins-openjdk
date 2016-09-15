# Jenkins 

This is a docker Jenkins container based on the OpenJdk 8 image. Underlying OS is Debian Linux.

<img src="http://jenkins-ci.org/sites/default/files/jenkins_logo.png"/>

The following additional software is installed:

* Maven
* Git
* Nano
* Jenkins Plugins
	* greenballs


## Installation

```
docker pull renewinkler/jenkins-openjdk
```

## Build

```
docker build . -t jenkins-openjdk
```


## Launch

```
docker run -itd -p 8080:8080 --name jenkins renewinkler/jenkins-openjdk
```


## Usage

```
http://192.168.99.100:8080
```


## Connect to Server

```
docker exec -it jenkins /bin/bash
```
