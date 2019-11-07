#!/bin/bash
#REALLY basic script to install docker, dockercompose, then set up appadmin user. FUTURE: Remove sudo group
#Remove Older Versions of Docker
apt-get remove docker docker-engine docker.io -y
#Update Repo
apt-get update -y
#Install Docker
apt install docker.io 
curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose"
chmod +x /usr/local/bin/docker-compose
useradd -u 911 -m -d /home/appadmin -G adm,sudo,docker -s /bin/bash appadmin
