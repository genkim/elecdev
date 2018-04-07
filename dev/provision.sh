#!/bin/bash
echo "run provision.sh"
sudo yum update -y

if [[ ! -e /usr/local/bin/docker-compose ]] 
then
    sudo curl -L https://github.com/docker/compose/releases/download/1.20.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

    /usr/local/bin/docker-compose --version
fi

cd /vagrant/dev/docker
/usr/local/bin/docker-compose build
/usr/local/bin/docker-compose up -d