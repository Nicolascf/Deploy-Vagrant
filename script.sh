#!/bin/bash

echo "Atualizando sistema"
echo "---------------------------"
sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando Apache"
echo "---------------------------"
sudo apt-get install apache2 -y

echo "Clonando Repositorio"
echo "---------------------------"
sudo git clone https://github.com/denilsonbonatti/mundo-invertido.git

echo "Copiando Arquivos"
echo "---------------------------"
cd mundo-invertido
sudo cp -R * /var/www/html

ip a