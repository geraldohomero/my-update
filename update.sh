#!/usr/bin/env bash
VERMELHO='\e[1;91m'
VERDE='\e[1;92m'
SEM_COR='\e[0m'
#----#
# Internet?
if ! ping -c 1 8.8.8.8 -q &> /dev/null; then
  echo -e "${VERMELHO}[ERROR] - Seu computador não tem conexão com a Internet.${SEM_COR}"
  exit 1
else
  echo -e "${VERDE}[INFO] - Conexão com a Internet verificada${SEM_COR}"
fi

upgrade_limpeza () {
  echo -e "${VERDE}[INFO] - Fazendo upgrade e limpeza...${SEM_COR}"
  sleep 1
  sudo apt autoclean
  sudo apt clean
  sudo apt update -m
  sudo dpkg --configure -a
  sudo apt install -f
  sudo apt full-upgrade
  sudo apt autoremove -y 
  sudo flatpak update
  #atualiza flatpaks
}  

#----# Execução
upgrade_limpeza
