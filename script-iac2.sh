#!/bin/bash

if [ "$(whoami)" !- "root" ]; then
	echo "Necessario usuario root para instalar"
	exit 1

echo "Atualizando o servidor..."
apt-get update & upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp 
wget https://github.com/vitortsouza/dio-linux-projeto2/raw/main/linux-site-dio-main.zip
unzip linux-site-dio-main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
