#!/usr/bin/env bash
# bash <(curl -s https://raw.githubusercontent.com/wcrama/linux/master/linux_update.sh)
clear
cat <<'EOF'
                                                                              
 ___  ________   ________  _________  ________  ___       ___          
|\  \|\   ___  \|\   ____\|\___   ___\\   __  \|\  \     |\  \         
\ \  \ \  \\ \  \ \  \___|\|___ \  \_\ \  \|\  \ \  \    \ \  \        
 \ \  \ \  \\ \  \ \_____  \   \ \  \ \ \   __  \ \  \    \ \  \       
  \ \  \ \  \\ \  \|____|\  \   \ \  \ \ \  \ \  \ \  \____\ \  \____  
   \ \__\ \__\\ \__\____\_\  \   \ \__\ \ \__\ \__\ \_______\ \_______\
    \|__|\|__| \|__|\_________\   \|__|  \|__|\|__|\|_______|\|_______|
                   \|_________|                                        
                                                                       
                                                                       
        ________  ________  ________  ___  ________  _________         
       |\   ____\|\   ____\|\   __  \|\  \|\   __  \|\___   ___\       
       \ \  \___|\ \  \___|\ \  \|\  \ \  \ \  \|\  \|___ \  \_|       
        \ \_____  \ \  \    \ \   _  _\ \  \ \   ____\   \ \  \        
         \|____|\  \ \  \____\ \  \\  \\ \  \ \  \___|    \ \  \       
           ____\_\  \ \_______\ \__\\ _\\ \__\ \__\        \ \__\      
          |\_________\|_______|\|__|\|__|\|__|\|__|         \|__|      
          \|_________|                                                 
                        
                            Creator: WCRAMA                                                                                                                    
                    -Find simple solutions to problems-										
                    
EOF
cat <<EOF
Welcome to AUTO UPDATER + Software installer !
This script has been build because i was getting tired of doing this all over again...
1. By pressing 'y' you agree to run update / upgrade script to your system.

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

read -p "do-release-upgrade ? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  echo "Running do-release-upgrade..."
  sudo do-release-upgrade -y
  echo "Done..."
else
  echo "Cancelled"
fi

read -p "Install clamav clamav-daemon ? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  echo "install clamav clamav-daemon"
  sudo apt install clamav clamav-daemon -y
  echo "Add crontab to scan every 24 hours ?"
  echo "Done..."
else
  echo "Cancelled"
fi

read -p "Install LAMP ? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  echo "install lamp-server^"
  sudo apt install lamp-server^ -y
  echo "Done..."
else
  echo "Cancelled"
fi

read -p "Install Webmin ? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  echo "install Webmin Dashboard"
  echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
  wget http://www.webmin.com/jcameron-key.asc
  sudo apt-key add jcameron-key.asc
  sudo apt update
  sudo apt install webmin
  apt-get install perl rrdtool librrds-perl sysstat -y
  echo "Install Dependencies on RHEL/CentOS/Fedora/OEL: # yum install perl rrdtool perl-rrdtool perl-CGI sysstat"
  echo "Done..."
else
  echo "Cancelled"
fi

read -p "Install Firefox ? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  echo "install Firefox"
  sudo apt-get install firefox -y
  echo "Done..."
else
  echo "Cancelled"
fi

read -p "Install VNC ? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  sudo apt install xfce4 xfce4-goodies tightvncserver -y
  vncserver
else
  echo "Cancelled"
fi
exit 0
