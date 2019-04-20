mysql -u root mysql -e "
CREATE DATABASE dhcp;
GRANT ALL ON dhcp.* TO 'dhcp'@'localhost' IDENTIFIED BY 'dhcp';
GRANT ALL ON dhcp.* TO 'dhcp'@'%' IDENTIFIED BY 'dhcp';
CREATE DATABASE powerdns;
GRANT ALL ON powerdns.* TO 'powerdns'@'localhost' IDENTIFIED BY 'asd';
GRANT ALL ON powerdns.* TO 'powerdns'@'%' IDENTIFIED BY 'asd';
FLUSH PRIVILEGES;
USE dhcp;
create table users
(
  id    INT AUTO_INCREMENT PRIMARY KEY,
  name  TEXT NULL,
  email TEXT NULL
);
create table devices
(
  id          INT AUTO_INCREMENT PRIMARY KEY,
  user_id     INT NOT NULL,
  mac_address TEXT NULL,
  ipv4        TEXT NULL
);
USE powerdns;
CREATE TABLE domains (
  id                    INT AUTO_INCREMENT,
  name                  VARCHAR(255) NOT NULL,
  master                VARCHAR(128) DEFAULT NULL,
  last_check            INT DEFAULT NULL,
  type                  VARCHAR(6) NOT NULL,
  notified_serial       INT DEFAULT NULL,
  account               VARCHAR(40) CHARACTER SET 'utf8' DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE UNIQUE INDEX name_index ON domains(name);
CREATE TABLE records (
  id                    BIGINT AUTO_INCREMENT,
  domain_id             INT DEFAULT NULL,
  name                  VARCHAR(255) DEFAULT NULL,
  type                  VARCHAR(10) DEFAULT NULL,
  content               VARCHAR(64000) DEFAULT NULL,
  auth                  TINYINT(1) DEFAULT 1,
  PRIMARY KEY (id)
)"