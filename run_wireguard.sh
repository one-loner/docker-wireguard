#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
     exit
fi
if [ -z "$2" ]; then
     echo To run Wireguard:
     echo $0 "<External IP> <Numbers of Peers> <Server port (Optional. 51820 by default)>"
     echo
     echo Example:
     echo $0 1.1.1.1 25
     echo
     echo If you use sudo:
     echo sudo $0 1.1.1.1 25
     exit
fi
if [ -z "$3" ]; then
     docker run -d  --name=wireguard --cap-add=NET_ADMIN --cap-add=SYS_MODULE -e PUID=1000 -e PGID=1000 -e TZ=Europe/London -e SERVERURL=$1 -e SERVERPORT=51820 -e PEERS=$2 -e PEERDNS=auto -e INTERNAL_SUBNET=10.10.10.0 -e ALLOWEDIPS=0.0.0.0/0 -e LOG_CONFS=true -p 51820:51820/udp -v /path/to/appdata/config:/config -v /lib/modules:/lib/modules --sysctl="net.ipv4.conf.all.src_valid_mark=1" --restart always linuxserver/wireguard
else
     docker run -d  --name=wireguard --cap-add=NET_ADMIN --cap-add=SYS_MODULE -e PUID=1000 -e PGID=1000 -e TZ=Europe/London -e SERVERURL=$1 -e SERVERPORT=$3 -e PEERS=$2 -e PEERDNS=auto -e INTERNAL_SUBNET=10.10.10.0 -e ALLOWEDIPS=0.0.0.0/0 -e LOG_CONFS=true -p $3:$3/udp -v /path/to/appdata/config:/config -v /lib/modules:/lib/modules --sysctl="net.ipv4.conf.all.src_valid_mark=1" --restart always linuxserver/wireguard
fi

cp get_peer_conf.sh /bin/get-peer-conf
chmod +x /bin/get-peer-conf

echo
echo To get peer configuration:
echo get_peer_conf "<Number of Peer>"
echo
echo Example:
echo get_peer_conf 1
echo
echo If you use sudo:
echo sudo get_peer_conf 1
