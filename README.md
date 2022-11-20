Docker-Wireguard  
RU  
Установка VPN Wireguard при помощи Docker  
./install_docker.sh - Для установки Docker. Запустите, если Docker у вас не установлен.  
./run_wireguard.sh  - Для установки и настройки docker-контейнера.  
Запускать следующим образом: ./run_wireguard.sh <внешний ip сервера> <число пиров (клиентов), <Порт сервера Wireguard (Опционально, 51820 порт по умолчанию)>  
Для того, чтобы получить конфигурацию пира выполните get-peer-conf <номер пира>  
Все скрипты и команды выполнять от root.  
[Образ взят с Dockerhub](https://hub.docker.com/r/linuxserver/wireguard)  

EN  
VPN Wireguard with Docker  
./install_docker.sh - For installing Docker. Launch it, if you don't have Docker.  
./run_wireguard.sh - For installation and setting docker-container.  
Start as follows: ./run_wireguard.sh <External server ip> <number of peers (clients)> <Wireguard server port (Optional, port 51820 by default)>  
To get the configuration of the peer, launch get-peer-conf <peer number>  
All script and commands must be run from root.  
[Used image from Dockerhub](https://hub.docker.com/r/linuxserver/wireguard)  
