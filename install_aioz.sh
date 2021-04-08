#!/usr/bin/env bash
# bash <(curl -s https://raw.githubusercontent.com/wcrama/linux/master/install_aioz.sh)
clear
cat <<'EOF'
                                                                              
                 ________  ___  ________  ________     
                |\   __  \|\  \|\   __  \|\_____  \    
                \ \  \|\  \ \  \ \  \|\  \\|___/  /|   
                 \ \   __  \ \  \ \  \\\  \   /  / /   
                  \ \  \ \  \ \  \ \  \\\  \ /  /_/__  
                   \ \__\ \__\ \__\ \_______\\________\
                    \|__|\|__|\|__|\|_______|\|_______|



                        
                            Creator: WCRAMA                                                                                                                    
                           -Simple Solutions-										
                  
EOF
cat <<EOF
Welcome to AIOZ Node installer !
This script has been build because i was getting tired of doing this all over again...
1. By pressing 'y' you agree to update & install AIOZ to your system.

EOF

read -p "Are you sure you want to continue? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  echo "Running Update..."
  sudo apt-get update -y
  echo "Done..."
  echo "Running Upgrade..."
  sudo apt-get upgrade -y
  echo "Upgrade Done..."
else
  echo "Cancelled"
fi

read -p "Install AIOZ User ? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  username=aioz
  password=aioz
  adduser --gecos "" --disabled-password $username
  chpasswd <<<"$username:$password"
else
  echo "Cancelled"
fi

read -p "Install AIOZ Node ? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  cd /home/aioz/
  sudo apt-get install unzip libnss3 -y
  wget https://s3-ap-southeast-1.amazonaws.com/brandmein.dev/AIOZNode-0.6.7.zip
  unzip AIOZNode-0.6.7.zip
  chmod +x "AIOZ Node-0.6.7.AppImage"
  su aioz
  ./"AIOZ Node-0.6.7.AppImage"
else
  echo "Cancelled"
fi

