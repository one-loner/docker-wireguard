Docker-Wireguard  
RU  
Установка VPN Wireguard при помощи Docker  
./install_docker.sh - Для установки Docker. Запустите, если Docker у вас не установлен.  
./run_wireguard.sh  - Для установки и настройки docker-контейнера.  
Запускать следующим образом: ./run_wireguard.sh <внешний ip сервера> <число пиров (клиентов)>  
Для того, чтобы получить конфигурацию пира выполните get-peer-conf <номер пира>, если запускали скрипт install_docker.sh  
Если не запускали, то ./get_peer_conf.sh <номер пира>   
Все скрипты и команды выполнять от root.  
  
EN  
VPN Wireguard with Docker  
./install_docker.sh - For installing Docker. Launch it, if you don't have Docker.  
./run_wireguard.sh - For installation and setting docker-container.  
Start as follows: ./run_wireguard.sh <External server ip> <number of peers (clients)>   
To get the configuration of the peer, launch get-peer-conf <peer number>, if you've launched linstall_docker.sh  
If you don't launched, then launch ./get_peer_conf.sh <peer number>  
All script and commands must be run from root.  
