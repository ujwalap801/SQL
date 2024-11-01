
-- The GROUP BY clause in SQL is used to group rows that have the same values in specified columns into summary rows, such as finding the count, sum, average, etc., 
-- for each group. It's often used with aggregate functions like COUNT, SUM, AVG, MIN, or MAX. 


CREATE DATABASE IF NOT EXISTS Company;
USE Company;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    desig VARCHAR(50),
    dept VARCHAR(50)
);


INSERT INTO Employee (emp_id, fname, lname, desig, dept) VALUES
(101, 'Raju', 'Rastogi', 'Manager', 'Loan'),
(102, 'Sham', 'Mohan', 'Cashier', 'Cash'),
(103, 'Baburao', 'Apte', 'Associate', 'Loan'),
(104, 'Paul', 'Watt', 'Accountant', 'Account'),
(105, 'Alex', 'Watt', 'Associate', 'Deposit'),
(106, 'Rick', 'Watt', 'Manager', 'Account'),
(107, 'Leena', 'Jhonson', 'Lead', 'Cash'),
(108, 'John', 'Paul', 'Manager', 'IT'),
(109, 'Alex', 'Watt', 'Probation', 'Loan');

SELECT *FROM employee LIMIT 5;

-- It will return the employee from emp id 4 nd only 4 rows will be displayed
SELECT *FROM employee LIMIT 3,  4;
