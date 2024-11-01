CREATE DATABASE IF NOT EXISTS Companys;
USE Companys;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    desig VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);


INSERT INTO Employee (emp_id, fname, lname, desig, dept, salary) VALUES
(101, 'Raju', 'Rastogi', 'Manager', 'Loan', 37000),
(102, 'Sham', 'Mohan', 'Cashier', 'Cash', 25000),
(103, 'Baburao', 'Apte', 'Associate', 'Loan', 25000),
(104, 'Paul', 'Philip', 'Accountant', 'Account', 45000),
(105, 'Alex', 'Watt', 'Associate', 'Deposit', 35000),
(106, 'Rick', 'Watt', 'Manager', 'Account', 50000),
(107, 'Leena', 'Jhonson', 'Lead', 'Cash', 75000),
(108, 'John', 'Paul', 'Manager', 'IT', 75000),
(109, 'Alex', 'Watt', 'Probation', 'Loan', 30000);


SELECT * FROM employee WHERE dept IN('loan', 'cash');
SELECT * FROM employee WHERE dept NOT IN('loan', 'cash');

SELECT *FROM employee WHERE  salary between 40000 and 60000;

SELECT fname, salary ,
CASE 
WHEN salary >=50000 THEN 'Higher Salary'
WHEN salary >=40000 And salary <50000 THEN 'Mid Salary'
ELSE 'Low Salary'
END 
AS 'salary Category'
FROM employee;


SELECT *FROM employee WHERE fname IS NULL;

SELECT *FROM employee WHERE fname NOT LIKE 'A%';



