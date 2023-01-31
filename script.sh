#!/bin/bash

docker run -d -it --name up ubuntu 
docker create -it --name created ubuntu
docker run -d -it --name pause ubuntu
docker pause pause
docker run -d -it --name exited ubuntu bash -c 'echo EXITED;'
docker run -d -it --restart always --name restarting ubuntu bash -c exit
clear
sleep 1
docker ps -a
docker stop up pause restarting
docker rm up pause restarting created exited
docker ps -a

