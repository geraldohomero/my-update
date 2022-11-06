# My daily update shellscript for Pop!_OS

```bash

geraldohomero
/
my-update
Public
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
Settings
my-update/update.sh
@geraldohomero
geraldohomero add comments on flatpak
 1 contributor
33 lines (29 sloc)  672 Bytes
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
  flatpak update
  #upgrades flatpaks
  #flatpak repair --user
  #flatpak remove --unused
}  

#----# Execução
upgrade_cleaning
```
- Run: 

`./update.sh`
***
Copy the `update.sh` file into the `/.local/bin/`

- Then

Just run `update` on the terminal 
