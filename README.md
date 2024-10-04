CURRENTLY WORK IN PROGRESS
startup.sh successfully deploys a vanilla minecraft server

10/4/2024
Prereqs: Docker, Linux

Tested on Ubuntu 22.04.5 LTS (Jammy Jellyfish): Server install image
https://www.releases.ubuntu.com/jammy/
Installed with defaults, OpenSSH, and on Docker

startup.sh: 
  run as "sudo bash startup.sh [your username]"
  Creates group for input user to be able to configure docker, installs needed .yaml file to run the server
