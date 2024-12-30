# Projeto 1 - Criando uma máquina pelo Vagrant

## Descrição
Este projeto é o primeiro projeto do curso do Iago Ferreira nele irei provisionar uma VM com o Vagrant com os requisitos específicos (1Gb de RAM e 1 núcleo de CPU Ubuntu 24.04) seguindo as tarefas seguintes.

## Instruções para Iniciar a VM
Para que consiga utilizar este projeto é necessário ter instalado e configurado o Vagrant e algum virtualizador como virtualbox, vmware e etc. Todavia para teste foi utilizado o VirtualBox.

- [ ] Clone este repositório.
- [ ] Dentro da pasta execute o comando: `vagrant up`
- [ ] Para acessar via SSH a VM: `vagrant ssh`

A Sincronização de Pastas, temos a pasta sync no host nela temos que colocar os arquivos que queremos na VM ao coloca-los lá esses arquivos poderão ser encontrados dentro da VM no caminho especificado no "synced_folder" que no caso é o /var/www

## Tarefas:
### Criar o arquivo **Vagrantfile**:
- [x] Base: Utilize a box oficial do Ubuntu 20.04.
``` bash
    config.vm.box = "ubuntu/focal64"
```

- [x] Rede: Configure a placa de rede no modo bridge para que a máquina tenha acesso à rede local.
``` bash
    config.vm.network "public_network", ip: 192.168.100.200
```

- [x] Sincronização de Pasta: Sincronize uma pasta do seu computador com a máquina virtual, garantindo que arquivos sejam compartilhados entre o host e a VM.
``` bash
    config.vm.synced_folder "sync/", "/var/www"
```

- [x] Definir Recursos:
 - Nome da máquina.
 - Memória RAM: 1 GB.
 - CPU: 1 núcleo.
``` bash
    config.vm.hostname = "project1-focal64"
    config.vm.provider "virtualbox" do |vm_01|
      vm_01.name = "project1"
      vm_01.memory = 1024
      vm_01.cpus = 1

```
## Link do repositório GitHub

https://github.com/mayronmiguel/DevOps/new/main/Curso_vagrant/Projetos_curso
