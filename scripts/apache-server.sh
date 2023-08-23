#!/bin/bash

# Atualizar o servidor
echo "Atualizando o servidor..."
sudo apt update
sudo apt upgrade -y

# Instalar o apache
echo " Instalando o apache..."
sudo apt install apache2 -y

# Instalar o pacote unzip
echo "Instalando o pacote unzip..."
sudo apt install unzip -y

# Baixar e extrair a aplicação
echo "Baixando e extraindo a aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp
unzip /tmp/main.zip -d /tmp

# Copiar arquivos para o diretório padrão do Apache (exemplo: /var/www/html/)
apache_default_dir="/var/www/html/"

if [ -d /tmp/linux-site-dio-main ]; then
    echo "Copiando arquivos para o diretório padrão do Apache..."
    
    sudo cp -r /tmp/linux-site-dio-main/* "$apache_default_dir"
    sudo chown -R www-data:www-data "$apache_default_dir"
    sudo chmod -R 755 "$apache_default_dir"
    echo "Aplicação copiada e configurada."
else
    echo "Erro: Diretório de extração não encontrado."
fi

# Limpando arquivos temporários
echo "Limpando arquivos temporários..."
rm -rf /tmp/main.zip /tmp/linux-site-dio-main

echo "Script concluído!"
