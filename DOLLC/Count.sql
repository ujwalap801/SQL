CREATE DATABASE IF NOT EXISTS Compan;
USE Compan;

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



SELECT COUNT(dept) FROM Employee;

SELECT COUNT(distinct dept) FROM Employee;

SELECT COUNT(emp_id) from employee
WHERE desig = "Manager";



