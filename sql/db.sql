CREATE DATABASE IF NOT EXISTS db_javaee;

-- table users
DROP TABLE IF EXISTS db_javaee.users;
CREATE TABLE db_javaee.users(
  id INT AUTO_INCREMENT PRIMARY KEY ,
  email VARCHAR(255) NOT NULL COMMENT 'username',
  password VARCHAR(255) NOT NULL COMMENT 'password',
  cities VARCHAR(255) COMMENT 'cities',
  hobbies VARCHAR(255) COMMENT 'hobbies'
);

-- select users
SELECT *
FROM db_javaee.users;