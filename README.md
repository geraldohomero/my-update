# My daily update shellscript for Pop!_OS

```bash
#!/usr/bin/env bash
RED='\e[1;91m'
GREEN='\e[1;92m'
NO_COLOR='\e[0m'
#----#

# Internet?

if ! ping -c 1 8.8.8.8 -q &> /dev/null; then
  echo -e "${RED}[ERROR] - No internet connection.${NO_COLOR}"
  exit 1
else
  echo -e "${GREEN}[INFO] - Internet connection verified.${NO_COLOR}"
fi

upgrade_cleaning () {
  echo -e "${GREEN}[INFO] - Upgrading and cleaning...${NO_COLOR}"
  sleep 1
  sudo apt autoclean
  sudo apt clean
  sudo apt update -m
  sudo dpkg --configure -a
  sudo apt install -f
  sudo apt full-upgrade
  sudo apt autoremove -y 
  #upgrades flatpaks
  flatpak update
  #flatpak repair --user
  #flatpak remove --unused
}  

#----# Execução
upgrade_cleaning
```
### Run: 

`./update.sh`
***

Create alias for the `./update`

>`nano ~/.bash_aliases` - You need to have `.bash_aliases` on your `home` directory or just copy and paste the following to your .bashrc

>`alias update='./update.sh'`
