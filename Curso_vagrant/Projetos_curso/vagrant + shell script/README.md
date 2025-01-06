# Projeto de Provisionamento com Vagrant

## Descrição do Projeto
Este projeto tem como objetivo configurar automaticamente uma máquina virtual utilizando Vagrant e um script de provisionamento escrito em Shell Script.
O provisionamento prepara o ambiente instalando ferramentas essenciais e criando um usuário personalizado, proporcionando uma solução padronizada para ambientes de desenvolvimento ou teste.

## Propósito do Provisionamento
A automação do provisionamento visa:
- Garantir a instalação consistente de pacotes necessários.
- Criar um usuário padrão para utilização da máquina virtual.
- Economizar tempo ao configurar o ambiente.
- Reduzir erros manuais durante a preparação do sistema.

## Como Iniciar a Máquina Virtual
1. **Certifique-se de ter os seguintes softwares instalados no sistema:**
   - Vagrant
   - Um provedor de virtualização como VirtualBox ou VMware.

2. **Passos para iniciar a VM:**
   - Abra o terminal e navegue até o diretório do projeto onde estão localizados os arquivos `Vagrantfile` e `provision.sh`.
   - Execute o comando a seguir para iniciar e provisionar a máquina virtual:
     ```bash
     vagrant up
     ```
   - Aguarde até que o Vagrant conclua o processo de inicialização e provisionamento.

3. **Acessando a VM:**
   - Depois que a VM estiver configurada, acesse-a com o comando:
     ```bash
     vagrant ssh
     ```

## Detalhes do Script de Provisionamento
O script de provisionamento (`provision.sh`) realiza as seguintes tarefas:

1. **Atualização da Lista de Pacotes:**
   Atualiza os repositórios para garantir que os pacotes mais recentes estejam disponíveis.
   ```bash
   sudo apt-get update -y
   ```

2. **Instalação de Pacotes Essenciais:**
   Instala os seguintes pacotes:
   - **vim**: Editor de texto.
   - **curl**: Ferramenta para transferência de dados via protocolo HTTP.
   - **telnet**: Cliente de rede para conexões Telnet.
   - **unzip**: Ferramenta para descompactação de arquivos ZIP.
   - **wget**: Utilitário de download pela linha de comando.
   - **net-tools**: Conjunto de ferramentas de rede (como `ifconfig`).
   - **htop**: Monitor de processos interativo.
   - **nmap**: Ferramenta de varredura de redes.

   O comando usado no script para instalar os pacotes é:
   ```bash
   sudo apt-get install -y vim curl telnet unzip wget net-tools htop nmap
   ```

3. **Criação de um Novo Usuário:**
   Um usuário é criado com o nome definido no script (ex.: `seunome`).
   O comando usado para criar o usuário é:
   ```bash
   sudo useradd -m -s /bin/bash seunome
   ```
   O usuário também é adicionado ao grupo `sudo`:
   ```bash
   sudo usermod -aG sudo seunome
   ```

4. **Configuração do Ambiente do Usuário:**
   Adiciona alias úteis ao arquivo `.bashrc` do novo usuário.
   ```bash
   echo 'alias ll="ls -lah"' >> ~/.bashrc
   ```

## Como Verificar a Criação do Usuário na Máquina Virtual
Após acessar a VM com `vagrant ssh`, siga estas etapas para confirmar que o usuário foi criado:

1. **Verifique a Presença do Usuário no Sistema:**
   Liste os usuários registrados:
   ```bash
   cat /etc/passwd
   ```
   Procure pelo nome do usuário criado (ex.: `seunome`).

2. **Acesse o Novo Usuário:**
   Mude para o novo usuário:
   ```bash
   sudo su - seunome
   ```

3. **Confirme o Ambiente do Usuário:**
   Verifique o nome do usuário ativo:
   ```bash
   whoami
   ```
   O resultado deve exibir o nome do usuário criado.

## Conclusão
Com este projeto, você pode rapidamente provisionar uma máquina virtual padronizada, garantindo consistência na configuração do ambiente e economizando tempo em tarefas repetitivas. Ajuste os arquivos conforme suas necessidades e aproveite a automação!


