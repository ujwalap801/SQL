CREATE DATABASE office;

use office;

CREATE TABLE customers1 (
acc_no INT PRIMARY KEY auto_increment,
name VARCHAR(100) NOT NULL,
acc_type VARCHAR(50) NOT NULL default 'Savings'
);

INSERT INTO customers1( name)
VALUES ('RAJU'),('SHAM');

SELECT * FROM customers1;
DESC customers1;

