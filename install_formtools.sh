#!/bin/sh

# Check if Debain is installed.  If it is, install the php repositories
if grep -q Debian "/etc/os-release" ; then
	echo "Debian is installed"
	echo
	echo "Installing Debian prerequisites"
	echo
	sudo apt update
	sudo apt install -y curl wget gnupg2 ca-certificates lsb-release apt-transport-https
	wget https://packages.sury.org/php/apt.gpg
	sudo apt-key add apt.gpg
  echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php7.list
else
	echo "Not Debian...continuing"
fi

# Perform updates
sudo apt update && sudo apt upgrade -y

# Install web components
sudo apt install apache2 mysql-common mariadb-server php7.4 php7.4-mysql -y

# Install unzip utility
sudo apt install unzip -y

# Download and install FormTools
sudo wget https://formtools.org/download/packages/FormTools3.0.20-05012022.zip
sudo unzip -q FormTools3.0.20-20191109.zip -d /var/www/html

# Configuring database environment
echo
echo "If you don't have a root password for your MySQL instance, just press Enter:"
sudo mysql -u root -p < $HOME/formtools-automation/mysql_setup.sql

# Setting folder permissions
sudo chown -R www-data: /var/www/html/formtools
echo
echo "Now visit http://ServerIP/formtools/"
