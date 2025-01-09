# Vagrant Zabbix Server

## Descrição
Este projeto cria uma máquina virtual utilizando Vagrant para configurar e rodar o Zabbix Server com backend MySQL de forma automatizada.

## Passos para Subir a VM
1. Certifique-se de que o Vagrant e o VirtualBox estão instalados.
2. Clone este repositório:
   ```bash
   git clone <URL_DO_REPOSITORIO>
   ```
3. Navegue até o diretório do projeto:
   ```bash
   cd vagrant-zabbix-server
   ```
4. Execute o comando para iniciar a VM:
   ```bash
   vagrant up
   ```

## Provisionamento
O script `provision.sh` é responsável por:
- Instalar o MySQL Server.
- Configurar o MySQL como backend do Zabbix Server.
- Instalar o Zabbix Server e configurá-lo para usar o MySQL.
- Iniciar os serviços necessários (MySQL, Zabbix Server e Apache).

## Acessando o Zabbix Server
- Após o provisionamento, acesse a interface web do Zabbix Server pelo endereço:
  ```
  http://<IP_DA_VM>/zabbix
  ```

## Verificação
- Verifique se os serviços estão rodando:
  ```bash
  sudo systemctl status mysql
  sudo systemctl status zabbix-server
  sudo systemctl status apache2
  ```

## Links
Repositório do projeto: [https://github.com/mayronmiguel](https://github.com/mayronmiguel)
Perfil no LinkedIn: [https://www.linkedin.com/in/mayron-miguel-de-freitas](https://www.linkedin.com/in/mayron-miguel-de-freitas)
