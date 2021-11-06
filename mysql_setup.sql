CREATE DATABASE formtools;
CREATE USER 'formtools'@'localhost' IDENTIFIED BY 'formtools';
GRANT ALL PRIVILEGES ON formtools.* TO 'formtools'@'localhost';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('toor');
