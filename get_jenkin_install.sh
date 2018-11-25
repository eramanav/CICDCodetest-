#!/bin/bash

# install Docker
echo ‘Docker Installing .....’

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

sude usermod -aG docker rprakash

systemctl enable docker

systemctl start docker

echo ‘Docker Installed’


# run jenkin
echo ‘Jenkins Installing ....’


mkdir -p /var/jenkins_home

chown -R 1000:1000 /var/jenkins_home/

docker run -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home -d --name jenkins jenkins

echo ‘Jenkins Installed’


