CREATE DATABASE formtools;
CREATE USER 'formtools'@'localhost' IDENTIFIED BY 'formtools';
GRANT ALL PRIVILEGES ON formtools.* TO 'formtools'@'localhost';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'toor';
