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
  echo "Become SuperUser"
  sudo su-
  echo "Creating folder and move to it..."
  cd /Desktop
  mkdir selenium
  cd selenium
  echo "Running Update..."
  sudo apt-get update -y
  echo "Downloading selenium"
  wget https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar
  echo "Install PHP 7.2 + Addons"
  sudo apt-get install php7.2-zip php7.2-curl -y
  sudo apt-get install php-gd php-xml php7.2-mbstring -y
  echo "Install Composer"
  sudo apt install composer -y
  echo "Install facebook/webdriver"
  composer require facebook/webdriver
  echo "Install openjdk 8"
  sudo apt-get install openjdk-8-jre -y
  echo "Download Chrome + Firefox Webdrivers"
  wget https://chromedriver.storage.googleapis.com/2.34/chromedriver_linux64.zip
  unzip chromedriver_linux64.zip
  sudo mv -i chromedriver /usr/bin/.
  wget https://github.com/mozilla/geckodriver/releases/download/v0.19.1/geckodriver-v0.19.1-linux64.tar.gz
  tar --extract --gzip --file gecko*
  sudo mv -i geckodriver /usr/bin/.

  echo "CREATE YOUR BOILERPLATE AND RUN !!!"

else
  echo "Cancelled"
fi
exit 0
