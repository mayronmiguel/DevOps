#!/bin/bash

# Atualizando pacotes
echo "Atualizando pacotes..."
sudo apt-get update -y

# Instalando o MySQL Server
echo "Instalando MySQL Server..."
sudo apt-get install mysql-server -y

# Configurando MySQL para ser utilizado pelo Zabbix
echo "Configurando MySQL para Zabbix..."
sudo mysql -e "CREATE DATABASE zabbix CHARACTER SET utf8 COLLATE utf8_bin;"
sudo mysql -e "CREATE USER 'zabbix'@'localhost' IDENTIFIED BY 'zabbix_password';"
sudo mysql -e "GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'localhost';"
sudo mysql -e "FLUSH PRIVILEGES;"

# Instalando o Zabbix Server
echo "Instalando Zabbix Server..."
wget https://repo.zabbix.com/zabbix/7.2/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.2+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.0-2+ubuntu20.04_all.deb
sudo apt-get update -y
sudo apt-get install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-agent -y

# Configurando Zabbix para usar o MySQL
echo "Configurando Zabbix Server..."
sudo zcat /usr/share/doc/zabbix-server-mysql/create.sql.gz | mysql -uzabbix -pzabbix_password zabbix
sudo sed -i 's/# DBPassword=/DBPassword=zabbix_password/' /etc/zabbix/zabbix_server.conf

# Iniciando serviços
echo "Iniciando serviços..."
sudo systemctl restart zabbix-server zabbix-agent apache2
sudo systemctl enable zabbix-server zabbix-agent apache2

echo "Provisionamento concluído!"



