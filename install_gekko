#!/usr/bin/env bash
# bash <(curl -s https://raw.githubusercontent.com/wcrama/linux/master/install_gekko.sh)
clear
cat <<'EOF'
                                                                              
 ________  _______   ___  __    ___  __    ________     
|\   ____\|\  ___ \ |\  \|\  \ |\  \|\  \ |\   __  \    
\ \  \___|\ \   __/|\ \  \/  /|\ \  \/  /|\ \  \|\  \   
 \ \  \  __\ \  \_|/_\ \   ___  \ \   ___  \ \  \\\  \  
  \ \  \|\  \ \  \_|\ \ \  \\ \  \ \  \\ \  \ \  \\\  \ 
   \ \_______\ \_______\ \__\\ \__\ \__\\ \__\ \_______\
    \|_______|\|_______|\|__| \|__|\|__| \|__|\|_______/
                            
                                                                                                                                     
            -Find simple solutions to problems-										
                    
EOF
cat <<EOF
Welcome to GEKKO TRADING BOT AUTO INSTALLER !
This script has been build because i was getting tired of doing this all manually...
1. By pressing 'y' you agree to run update / upgrade script to your system.
EOF

read -p "Are you sure you want to continue? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  echo "Running Update..."
  sudo apt-get update -y
  echo "Running Upgrade..."
  sudo apt-get upgrade -y
  echo "Download Node JS"
  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  echo "Installing Node JS"
  sudo apt-get install -y nodejs
  echo "Installing GIT"
  sudo apt-get install git
  echo "Downloading Gekko Trading Bot"
  git clone git://github.com/askmike/gekko.git -b stable
  cd gekko
  npm install --only=production
  cd exchange
  npm install --only=production
  cd ..
  echo "$$$ *** STARTING GEKKO TRADING BOT *** $$$"
  node gekko --ui
else
  echo "Cancelled"
fi
exit 0
