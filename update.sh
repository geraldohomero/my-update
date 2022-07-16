echo "-------------------------------"
echo "Procura por novos updates...  |"  
echo "sudo apt update               |"
echo "-------------------------------"
sudo apt update
#faz update do sistema
echo "-------------------------------"
echo "Upgrades necessários...       |"
echo "sudo apt upgrade --autoremove |"
echo "-------------------------------"
sleep 2
sudo apt upgrade --autoremove
#faz upgrade do sistema
echo "-------------------------------"
echo "Atualizações Flatpak          |"
echo "sudo flatpak update           |"
echo "-------------------------------"
sleep 1
sudo flatpak update
#atualiza flatpaks
