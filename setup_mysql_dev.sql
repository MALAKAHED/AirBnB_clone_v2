-- create database and give the user access to this DATABASE
-- User: hbnb_dev@localhost
-- password: hbnb_dev_pwd
-- hostt: localhost 
-- Database: hbnb_dev_db

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';


GRANT ALL PRIVILEGES ON `hbnb_dev_db`.* TO 'hbnb_dev'@'localhost'
IDENTIFIED BY 'hbnb_dev_pwd';

GRANT SELECT ON `performance_schema`.* TO 'hbnb_dev'@'localhost'
IDENTIFIED BY 'hbnb_dev_pwd';

FLUSH PRIVILEGES;



