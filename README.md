# magento2.4.3_docker-compose
Magento v2.4.3 on docker: ngnix port 7777, mysql 8 and php7.4-fpm. Elasticsearch 7.14.2

## Instalation guide
Update the apt package index and install packages to allow apt to use a repository over HTTPS:
```sh
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```
Add Docker’s official GPG key:
```sh
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
Use the following command to set up the stable repository.
```sh
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
Update the apt package index, and install the latest version of Docker Engine and containerd, or go to the next step to install a specific version:
```sh
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose
```
You need to start docker service:
```sh
sudo service docker start
```
Next, build and than run containers (usually you need sudo rights):
```sh
sudo docker-compose up -d
```
Finally, just run ```install_m2.sh```:
```sh
sudo ./install_m2.sh
```

You can open ```http://localhost:7777``` or ```http://127.0.0.1:7777``` and start to develop on Magento v2.4.3
