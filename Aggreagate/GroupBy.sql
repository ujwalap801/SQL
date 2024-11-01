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



SELECT * FROM Employee;

SELECT dept FROM employee
group by dept;


SELECT dept, COUNT(emp_id) FROM employee 
group by dept;


SELECT Max(salary) FROM employee;

--  Sub queries
SELECT emp_id, fname FROM employee
WHERE
salary =(SELECT MAX(salary) FROM employee);


--  SUM and AVG
select SUM(salary) FROM employee;

SELECT dept, SUM(salary) FROM employee 
GROUP BY dept;

SELECT dept, COUNT(emp_id),SUM(salary) FROM employee 
GROUP BY dept;



