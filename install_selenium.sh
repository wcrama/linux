#!/usr/bin/env bash
# bash <(curl -s https://raw.githubusercontent.com/wcrama/linux/master/install_selenium.sh)
clear
cat <<'EOF'
                                                                              
  /$$$$$$  /$$$$$$$$ /$$       /$$$$$$$$ /$$   /$$ /$$$$$$ /$$   /$$ /$$      /$$
 /$$__  $$| $$_____/| $$      | $$_____/| $$$ | $$|_  $$_/| $$  | $$| $$$    /$$$
| $$  \__/| $$      | $$      | $$      | $$$$| $$  | $$  | $$  | $$| $$$$  /$$$$
|  $$$$$$ | $$$$$   | $$      | $$$$$   | $$ $$ $$  | $$  | $$  | $$| $$ $$/$$ $$
 \____  $$| $$__/   | $$      | $$__/   | $$  $$$$  | $$  | $$  | $$| $$  $$$| $$
 /$$  \ $$| $$      | $$      | $$      | $$\  $$$  | $$  | $$  | $$| $$\  $ | $$
|  $$$$$$/| $$$$$$$$| $$$$$$$$| $$$$$$$$| $$ \  $$ /$$$$$$|  $$$$$$/| $$ \/  | $$
 \______/ |________/|________/|________/|__/  \__/|______/ \______/ |__/     |__/
                                                                                 
                                                                                 
                                                                                                                                                                                                                      
            		-Find simple solutions to problems-										
                    
EOF
cat <<EOF
Welcome to PHP SELENIUM AUTO INSTALLER !
This script has been build because i was getting tired of doing this all manually...
1. By pressing 'y' you agree to run update / upgrade script to your system.
EOF

read -p "Are you sure you want to continue? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "YES"|| $prompt == "Yes" ]]
then
  echo "Creating folder and move to it..."
  sleep 5
  cd ~
  mkdir selenium
  cd selenium
  echo "Running Update..."
  sleep 5
  sudo apt-get update -y
  echo "Downloading selenium"
  sleep 5
  wget https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar
  echo "Install APACHE + PHP 7.2 + Addons"
  sleep 5
  apt-get install apache2 -y
  systemctl start apache2
  systemctl enable apache2
  sudo apt-get install software-properties-common python-software-properties
  sudo add-apt-repository -y ppa:ondrej/php
  sudo apt-get update
  sudo apt-get install php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip -y
  sudo apt-get install php-gd php-xml php7.2-mbstring -y
  echo "Install Composer"
  sleep 5
  sudo apt install composer -y
  echo "Install facebook/webdriver"
  sleep 5
  composer require facebook/webdriver
  echo "Install openjdk 8"
  sleep 5
  sudo apt-get install openjdk-8-jre -y
  echo "Download Chrome + Firefox Webdrivers"
  sleep 5
  wget https://chromedriver.storage.googleapis.com/2.34/chromedriver_linux64.zip
  unzip chromedriver_linux64.zip
  sudo mv -i chromedriver /usr/bin/.
  wget https://github.com/mozilla/geckodriver/releases/download/v0.19.1/geckodriver-v0.19.1-linux64.tar.gz
  tar --extract --gzip --file gecko*
  sudo mv -i geckodriver /usr/bin/.

  echo "CREATE YOUR BOILERPLATE AND RUN !!!"
  sleep 10

else
  echo "Cancelled"
fi
exit 0
