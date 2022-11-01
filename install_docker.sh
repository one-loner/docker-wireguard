#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
else
apt-get install -y docker docker.io docker-compose
fi
