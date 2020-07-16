#!/bin/bash
clear
echo "Instalar Virtual-Box Corretamente no Linux"
echo "Adicionando Repositorio oficial"
sudo echo "deb https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
echo "Adicionando chave pública PGP"
sudo wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
echo "Corrigir “Error Kernel Driver Not Installed (Rc=-1908)”"
sudo apt install build-essential module-assistant
echo ""
sudo m-a prepare
echo ""
sudo /sbin/vboxconfig
echo ""echo "Atualizando Pacotes"
sudo apt-get update
echo "Baixando Virtual-box"
sudo wget https://download.virtualbox.org/virtualbox/6.1.12/virtualbox-6.1_6.1.12-139181~Debian~buster_amd64.deb
echo "Instalando Virtual-Box"
sudo dpkg -i virtualbox-6.1_6.1.12-139181~Debian~buster_amd64.deb
echo ""
echo "Fim da Instalação"
