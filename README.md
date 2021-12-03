# magento2.4.3_docker-compose
Magento v2.4.3 on docker: ngnix port 7777, mysql 8 and php7.4-fpm. Elasticsearch 7.14.2

## Instalation guide
We need to install ```docker``` and ```docker-compose```:
Open terminal in working directory and enter:
```sh
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io
sudo apt install docker-compose
```
Second, build and than run ```docker``` containers (usually you need ```sudo``` rights):
```sh
sudo docker-compose up -d
```
Finally, just run ```install_m2.sh```:
```sh
sudo ./install_m2.sh
```

You can open ```http://localhost:7777``` or ```http://127.0.0.1:7777``` and start to develop on Magento v2.4.3
