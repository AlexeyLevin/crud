CREATE USER root@localhost identified BY 'root';
GRANT usage ON *.* TO root@localhost identified BY 'root';
CREATE DATABASE IF NOT EXISTS test;
GRANT ALL privileges ON root.* TO root@localhost;
USE test;

CREATE TABLE IF NOT EXISTS USER 
  (
     id   INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(25) not null,
     age  INT(11),
     isAdmin BIT(1),
     createdDate TIMESTAMP DEFAULT NOW()
  ); 

INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Алексей', 41, true, '2016-02-22 03:15:27');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Александр', 32, true, '2016-02-22 03:16:56');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Виталий', 23, false, '2014-02-22 03:18:21');
INSERT INTO test.user (name, age, isAdmin, createdDate) VALUES ('Петр', 12, false, '2016-01-22 03:18:28');


