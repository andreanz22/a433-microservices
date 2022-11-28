#!/bin/bash

#build image docker from docker file in current directory
docker build -t item-app:v1 .
#add enter after command
echo "\n"
#show list of docker images
docker images
echo "\n"
#change the images name with compatible format for docker hub
docker tag item-app:v1 renova22/item-app:v1
#login to docker hub
echo "\n"
echo $PASSWORD_DOCKER_HUB | docker login -u renova22 --password-stdin
#push the image to docker hub repo
echo "\n"
docker push renova22/item-app:v1
