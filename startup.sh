#!/bin/bash

# Run as "sudo bash DockerAuto.sh [username] 

username="$1"

# Updates packages, creates the docker group and puts the user into it
# Note: run "newgrp docker" to sync group permissions to user without having to log out and back in

apt update -y
addgroup docker
chgrp docker /var/run/docker.sock
usermod -aG docker "$1"

# creates the minecraft directory to put related files into, installs minecraft image git file to use in running the server

mkdir minecraft
cd minecraft
wget "https://raw.githubusercontent.com/itzg/docker-minecraft-server/refs/heads/master/docker-compose.yml"

# Launches the server

docker compose up -d

