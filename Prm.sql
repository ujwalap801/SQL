CREATE DATABASE Employee;
use Employee;
 CREATE TABLE customer1(
	id INT  PRIMARY KEY,
    name varchar(50) NOT NULL,
     acc_type VARCHAR(50) NOT NULL DEFAULT 'Savings'
    );
    
 INSERT INTO customer1(id,name)
    VALUES(103,"raj"),(104,"Sama");

SELECT * FROM customer1;
DESC customer1;

 CREATE TABLE customer2(
	id INT  PRIMARY KEY  AUTO_INCREMENT,
    name varchar(50) NOT NULL,
     acc_type VARCHAR(50) NOT NULL DEFAULT 'Savings'
    );

DESC customer2;
INSERT INTO customer2(name)
values ("Raju"),("sham");

SELECT * FROM customer2;

