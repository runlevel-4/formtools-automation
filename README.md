# FormTools Installer

This script will setup all of the prerequsite web server components and create a default FormTools database.

=====================================================================
1. `git clone https://github.com/runlevel-4/formtools-automation`
2. `sh formtools-automation/install_formtools.sh`

======================================================================

**NOTE:** I recommend logging into MySQL/MariaDB and changing the root login as well as the password for the _formtools_ user.  Do this only if you plan on exposing your server to the internet.

`sudo mysql -u root -p` (if you don't have a mysql password, just hit _Enter_)

`ALTER USER 'formtools'@'localhost' IDENTIFIED BY 'newpassword';`

