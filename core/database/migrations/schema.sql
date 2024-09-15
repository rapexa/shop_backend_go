CREATE DATABASE IF NOT EXISTS shopdb
    CHARACTER SET utf8
    COLLATE utf8_general_ci;

USE shopdb;

CREATE TABLE otps
(
    id          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    otp_url     VARCHAR(255) NOT NULL,
    code        VARCHAR(10)  NOT NULL,
    try_count   INT          NOT NULL,
    last_update VARCHAR(50)  NOT NULL
);

CREATE TABLE users
(
    id                 INT AUTO_INCREMENT     NOT NULL PRIMARY KEY,
    username           VARCHAR(255)           NOT NULL UNIQUE,
    password           VARCHAR(512)           NOT NULL,
    name               VARCHAR(50),
    web_token          VARCHAR(255),
    courses_regex      VARCHAR(255)
);

CREATE TABLE courses
(
    id                               INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name                             VARCHAR(255)       NOT NULL,
    price                            DECIMAL(10, 2)     NOT NULL,
    lenght                           INT                NOT NULL,
    user_count                       INT                NOT NULL,
    is_special                       BOOL               NOT NULL,
    description                      VARCHAR(8192)      NOT NULL,
    image_url                        VARCHAR(255)       NOT NULL
);

CREATE TABLE notifications
(
    id           INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title        VARCHAR(255)       NOT NULL,
    body         VARCHAR(255)       NOT NULL,
    username     VARCHAR(255)       NOT NULL
);

CREATE TABLE payment_records
(
    id                     INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    username               VARCHAR(255)       NOT NULL,
    course_id              INT                NOT NULL,
    price                  DECIMAL(10, 2)     NOT NULL,
    created_at             VARCHAR(50)        NOT NULL,
    state                  INT                NOT NULL
);

CREATE TABLE feedbacks
(
    id                    INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    rate                  INT                NOT NULL,
    description           VARCHAR(256)       NOT NULL,
    username              VARCHAR(255)       NOT NULL
);