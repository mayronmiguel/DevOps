# Projeto: Integração Vagrant e Ansible

## Descrição
Este projeto demonstra como criar uma máquina virtual usando Vagrant e configurá-la automaticamente com Ansible. A role `common` é responsável pela instalação de pacotes essenciais e pela criação de um usuário personalizado com chave SSH. Todo o projeto é versionado no GitHub para facilitar o compartilhamento e colaboração.

## Passos para Subir a VM
1. Clone este repositório:
   ```bash
   git clone <link-do-repositorio>
   cd <nome-do-repositorio>
   ```

2. Inicialize a máquina virtual:
   ```bash
   vagrant up
   ```
   Este comando:
   - Cria a máquina virtual com base no arquivo `Vagrantfile`.
   - Provisiona a máquina usando o Ansible, aplicando as configurações do playbook `site.yml`.

3. Caso precise reprovisionar a máquina:
   ```bash
   vagrant provision
   ```

## Role Common
A role `common` é responsável por configurar a máquina com as seguintes tarefas:

- **Instalação de Pacotes Essenciais**:
  - `vim`
  - `curl`
  - `telnet`
  - `unzip`
  - `wget`
  - `net-tools`
  - `htop`
  - `nmap`

- **Configuração de Usuário**:
  - Criação de um usuário com o seu nome.
  - Configuração de uma chave SSH para este usuário (sem necessidade de senha).

## Usuário e SSH
O Ansible cria um usuário personalizado com uma chave SSH configurada automaticamente. Você pode verificar a chave SSH acessando o arquivo `~/.ssh/authorized_keys` do novo usuário:

```bash
vagrant ssh
sudo su - <nome-do-usuario>
cat ~/.ssh/authorized_keys
```

## Verificação
Para garantir que tudo foi configurado corretamente:

1. **Verificar os Pacotes Instalados**:
   ```bash
   dpkg -l | grep -E "vim|curl|telnet|unzip|wget|net-tools|htop|nmap"
   ```

2. **Verificar o Usuário Criado**:
   ```bash
   getent passwd <nome-do-usuario>
   ```

3. **Verificar a Configuração da Chave SSH**:
   ```bash
   sudo su - <nome-do-usuario>
   ls -l ~/.ssh
   ```

## Objetivos
- Praticar a integração entre Vagrant e Ansible para provisionamento automatizado.
- Criar uma role Ansible que instala pacotes essenciais.
- Automatizar a criação de um usuário com chave SSH.
- Versionar o projeto no GitHub e compartilhar com o grupo da mentoria.

## Links
- [[Curso Ansible/integração_vagrant_ansible](https://github.com/mayronmiguel/DevOps/tree/bbdff8daf5a27c2b6f569c0b303bd97073f3aa33/Curso%20Ansible/integra%C3%A7%C3%A3o_vagrant_ansible)]
