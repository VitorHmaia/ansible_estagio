#!/bin/bash

# solicitar o nome de usuario
read -p "Digite o nome de usuario da maquina remota ou wsl: " user

# solicitar o endereço IP da maquina remota
read -p "Digite o endereco IP da maquina remota ou wsl: " IP

# adicionar o IP ao arquivo hosts
echo "[local]" > hosts
echo "${user}@${IP}" >> hosts
echo "Usuario $user com IP $IP adicionado ao arquivo hosts."

# chamar o script para enviar a chave SSH para os hosts
./ssh-conf.sh "$user" "$IP"