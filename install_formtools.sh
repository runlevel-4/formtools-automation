#!/bin/sh

# Perform updates
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

# Install web components
sudo apt install apache2 mysql-common mariadb-server php7.4 php7.4-mysql tar -y

# Download and install FormTools
sudo wget https://formtools.org/download/packages/FormTools3.0.20-20191109.zip
sudo unzip -q FormTools3.0.20-20191109.zip -d /var/www/html

# Configuring database environment
echo
echo "If you don't have a root password for your MySQL instance, just press Enter:"
sudo mysql -u root -p < $HOME/formtools-automation/mysql_setup.sql

# Setting folder permissions
sudo chown -R www-data: /var/www/html/formtools
echo
echo "Now visit http://ServerIP/formtools/"
