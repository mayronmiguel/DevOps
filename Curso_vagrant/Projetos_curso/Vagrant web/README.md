# Projeto: Hospedagem de Site com Vagrant e Nginx

## Descrição
Este projeto configura uma máquina virtual usando Vagrant para hospedar um site com o servidor Nginx. A máquina virtual utiliza Ubuntu 20.04, e uma pasta local é sincronizada com o diretório de hospedagem do Nginx na máquina virtual, permitindo edição direta do site a partir do host.

## Passos para Subir a VM
1. Certifique-se de ter o Vagrant e o VirtualBox instalados no seu computador.
2. Clone este repositório ou copie os arquivos necessários.
3. Na linha de comando, navegue até a pasta do projeto.
4. Execute o comando:
   ```bash
   vagrant up
   ```
5. Aguarde o término do provisionamento.

## Provisionamento
O arquivo `provision.sh` é responsável por:
- Atualizar os pacotes do sistema.
- Instalar o servidor Nginx.
- Configurar permissões adequadas para o diretório sincronizado.
- Reiniciar o serviço Nginx para aplicar as configurações.

## Acessando o Site
Após iniciar a máquina virtual, o site pode ser acessado no navegador no seguinte endereço:
```
http://192.168.33.10
```

## Sincronização de Pastas
A pasta local `./site` no host é sincronizada com o diretório `/var/www/html` na máquina virtual. Isso permite:
- Editar o conteúdo do site diretamente a partir do host.
- Visualizar as alterações no navegador após salvar os arquivos.

## Links
Repositório do projeto: [https://github.com/mayronmiguel](https://github.com/mayronmiguel)
Perfil no LinkedIn: [https://www.linkedin.com/in/mayron-miguel-de-freitas](https://www.linkedin.com/in/mayron-miguel-de-freitas)
