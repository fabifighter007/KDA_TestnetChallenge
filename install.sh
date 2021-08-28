#!/bin/bash

echo 'KDA Testnet installation script by Fabifighter' | boxes

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
	
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io
  
sudo docker run hello-world

echo 'Script finished. Run startup.sh to run your dockers!'