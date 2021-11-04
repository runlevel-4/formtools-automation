# FormTools Installer

This script will setup all of the prerequsite web server components and create a default FormTools database.

=====================================================================

**DEBIAN USERS START HERE**

Debian/Raspberry Pi users will have to add the 3rd party _sury_ repository in order to download the proper php packages before continuing.

`sudo apt update`

`sudo apt install -y curl wget gnupg2 ca-certificates lsb-release apt-transport-https`

`wget https://packages.sury.org/php/apt.gpg`

`sudo apt-key add apt.gpg`

`echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php7.list`

The script will run the update and upgrade commands.

=====================================================================

**OTHERWISE START HERE**

At the Linux command line:

1. If _git_ is not installed, just run `sudo apt install git`
2. `git clone https://github.com/runlevel-4/formtools-automation`
3. `sh formtools-automation/install_formtools.sh`

======================================================================

**NOTE:** I recommend logging into MySQL/MariaDB and changing the root login as well as the password for the _formtools_ user.  Do this only if you plan on exposing your server to the internet.

`sudo mysql -u root -p` (if you don't have a mysql password, just hit _Enter_)

`ALTER USER 'formtools'@'localhost' IDENTIFIED BY 'newpassword';`

