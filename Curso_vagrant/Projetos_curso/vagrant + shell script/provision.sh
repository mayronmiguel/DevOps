#!/bin/bash

# Atualiza os pacotes disponíveis
echo "Atualizando lista de pacotes..."
sudo apt-get update -y

# Instala os pacotes necessários
echo "Instalando pacotes: vim, curl, telnet, unzip, wget, net-tools, htop, nmap..."
sudo apt-get install -y vim curl telnet unzip wget net-tools htop nmap

# Cria um novo usuário
USERNAME="root"
echo "Criando o usuário $USERNAME..."
sudo useradd -m -s /bin/bash $USERNAME

# Verifica a instalação dos pacotes
echo "Verificando os pacotes instalados..."
for package in vim curl telnet unzip wget net-tools htop nmap; do
    if dpkg -l | grep -q "^ii.*$package"; then
        echo "$package está instalado."
    else
        echo "Erro: $package não foi instalado."
    fi
done

echo "Provisionamento concluído!"

