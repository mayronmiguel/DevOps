#!/bin/bash

# Atualizar pacotes
sudo apt-get update -y

# Instalar o Nginx
sudo apt-get install -y nginx

# Configurar permissões para a pasta sincronizada
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Reiniciar o serviço Nginx para aplicar configurações
sudo systemctl restart nginx
