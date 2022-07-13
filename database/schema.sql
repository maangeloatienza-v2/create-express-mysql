CREATE DATABASE IF NOT EXISTS create_express_mysql_db;

ALTER DATABASE create_express_mysql_db CHARACTER SET utf32 COLLATE utf32_general_ci;

USE create_express_mysql_db;

CREATE TABLE IF NOT EXISTS roles (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `name` VARCHAR(50) NOT NULL,
  `created` DATETIME DEFAULT NULL,
  `updated` DATETIME DEFAULT NULL,
  `deleted` DATETIME DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS users (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `role_id` VARCHAR(64) NULL,
  `first_name` VARCHAR(50)  NOT NULL,
  `last_name` VARCHAR(50)  NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50)  NOT NULL,
  `password` VARCHAR(64)  NOT NULL,
  `phone_number` VARCHAR(11)  NULL,
  `created` DATETIME  NULL,
  `updated` DATETIME  NULL,
  `deleted` DATETIME  NULL
);


CREATE TABLE IF NOT EXISTS access_control_list (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `role_id` VARCHAR(64) NOT NULL,
  `api_group` VARCHAR(100) NOT NULL,  
  `isRead` BOOLEAN DEFAULT true,
  `isWrite` BOOLEAN DEFAULT false,
  `isRemove` BOOLEAN DEFAULT false,
  `created` DATETIME DEFAULT NULL,
  `updated` DATETIME DEFAULT NULL,
  `deleted` DATETIME DEFAULT NULL
);
