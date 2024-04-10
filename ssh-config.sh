#!/bin/bash

# verificar se os argumentos fornecidos esta correto
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <usuario_remoto> <IP_remoto>"
    exit 1
fi

# nome de usuario remoto
USER_REMOTE=$1

# endereco IP remoto
IP_REMOTE=$2

# criar uma chave SSH padrao com o nome ansible
ssh-keygen -t rsa -b 4096 -C "ansible" -f ~/.ssh/ansible -N ""

# adicionar a chave ao agente SSH
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/ansible

# enviar a chave SSH para o usuario remoto na maquina remota
ssh-copy-id -i ~/.ssh/ansible.pub "$USER_REMOTE@$IP_REMOTE"
echo "Chave SSH copiada para $IP_REMOTE"

# finalizar o agente SSH
ssh-agent -k