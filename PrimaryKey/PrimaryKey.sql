CREATE DATABASE office;

use office;

CREATE TABLE customers (
acc_no INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
acc_type VARCHAR(50) NOT NULL default 'Savings'
);

INSERT INTO customers(acc_no, name)
VALUES (1001,'RAJU'),(1002,'SHAM');

SELECT * FROM customers;
DESC customers;

