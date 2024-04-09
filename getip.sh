#!/bin/bash

# Obter o endereco IP da maquina
IP=$(hostname -I | cut -d' ' -f1)

# Verificar se o IP = valido
if [[ -n "$IP" ]]; then
    # Salvar o IP em um arquivo
    echo "$IP" > IPS
    echo "Endereco IP ($IP) salvo em IPS."
else
    echo "Nao foi possivel obter o endereco IP."
fi