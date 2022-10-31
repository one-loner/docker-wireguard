#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
     exit
fi
if [ -z "$1" ]; then
     echo To get peer configuration:
     echo $0 "<Number of Peer>"
     echo
     echo Example:
     echo $0 1
     echo
     echo If you use sudo:
     echo sudo $0 1
     exit
fi
docker exec wireguard cat /config/peer$1/peer$1.conf
