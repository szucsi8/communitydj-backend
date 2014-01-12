-- create database for the sample site
CREATE DATABASE IF NOT EXISTS sample;

-- create a new user for the Web app
DELETE FROM mysql.user WHERE User = 'webuser';
CREATE USER 'webuser'@'%' IDENTIFIED BY 'vagrantrocks';

-- grant only the necessary privileges to our new user
GRANT SELECT, INSERT, UPDATE, DELETE ON sample.* TO 'webuser'@'%';

USE sample;

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` varchar(255),

  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO test (`name`, `description`) VALUES ('name1', 'desc1');
INSERT INTO test (`name`, `description`) VALUES ('name2', 'desc2');
INSERT INTO test (`name`, `description`) VALUES ('name3', 'desc3');
