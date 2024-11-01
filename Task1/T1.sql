CREATE DATABASE bank_db;
use bank_db;

CREATE TABLE employees(
emp_id INT NOT NULL UNIQUE AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
design VARCHAR(50) default "PROBATION",
dept VARCHAR(50) NOT NULL
);

INSERT INTO employees(emp_id,name, design,dept)
VALUES("101","Raju","Manager","Loan");

INSERT INTO employees(name, design,dept)
VALUES
("Sham","Cashier","Cash"),
("Paul","Associate","Loan"),
("Alex","Accountant","Account"),
("Victor","Associate","Deposit");

SELECT * FROM employees;

SELECT emp_id,name FROM employees;

SELECT * FROM employees
WHERE dept="Loan";

SELECT * FROM employees
WHERE name="Raju" "Paul";

SELECT  emp_id, name FROM employees
WHERE name="Raju";

SELECT * FROM employees
WHERE emp_id=101;

UPDATE  employees
Set dept="IT"
WHERE name="Paul";

DELETE FROM employees
WHERE name="Sham";


SET SQL_SAFE_UPDATES = 0;


DROP TABLE employees;

