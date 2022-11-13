--liquibase formatted sql

--changeset rozbergs@gmail.com:1

DROP TABLE IF EXISTS users_sectors;
DROP TABLE IF EXISTS sectors;
DROP TABLE IF EXISTS users;

CREATE TABLE sectors (
   id BIGINT AUTO_INCREMENT PRIMARY KEY,
   parent_id BIGINT,
   name VARCHAR(127) NOT NULL
);

CREATE TABLE users (
   id BIGINT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(127) NOT NULL,
   agree_to_terms BOOLEAN NOT NULL
);

CREATE TABLE users_sectors (
   id BIGINT AUTO_INCREMENT PRIMARY KEY,
   user_id BIGINT NOT NULL,
   sector_id BIGINT NOT NULL,
   FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE,
   FOREIGN KEY(sector_id) REFERENCES sectors(id) ON DELETE CASCADE
);