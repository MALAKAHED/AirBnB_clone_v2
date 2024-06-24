-- create database and give the user access to this DATABASE TO TEST THE CONNECTION
-- User: hbnb_test@localhost
-- password: hbnb_testt_pwd
-- host: localhost 
-- Database: hbnb_test_db

CREATE DATABASE IF NOT EXISTS hbnb_test_db;

CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';


GRANT ALL PRIVILEGES ON `hbnb_test_db`.* TO 'hbnb_test'@'localhost';


GRANT SELECT ON `performance_schema`.* TO 'hbnb_test'@'localhost';


FLUSH PRIVILEGES;