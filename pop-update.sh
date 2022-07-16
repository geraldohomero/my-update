echo "Pop!_OS Packege Maneger"
sleep 1
echo "--- apt clean ---"
sleep 1
sudo apt clean
echo "--- apt update -m ---" 
sleep 1
sudo apt update -m
echo "--- dpkg --configure -a ---"
sleep 1
sudo dpkg --configure -a
echo "--- apt install -f ---"
sleep 1
sudo apt install -f
echo "--- apt full-upgrade ---"
sleep 1
sudo apt full-upgrade
echo "--- apt autoremove --purge ---"
sleep 1
sudo apt autoremove --purge
echo "--- flatpak update ---"
sleep 1
sudo flatpak update
