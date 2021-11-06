ALTER USER 'root'@'localhost' IDENTIFIED BY 'toor';
CREATE DATABASE IF NOT EXISTS formtools;
CREATE USER 'formtools'@'localhost' IDENTIFIED BY 'formtools';
GRANT ALL PRIVILEGES ON formtools.* TO 'formtools'@'localhost';
