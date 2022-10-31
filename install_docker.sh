#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
else
apt-get install -y docker docker.io docker-compose
cp get_peer_conf.sh /bin/get-peer-conf
chmod +x /bin/get-peer-conf
fi
