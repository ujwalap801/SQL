CREATE TABLE bank_db;
use bank_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    desig VARCHAR(50),  -- This column seems to represent the designation
    dept VARCHAR(50)    -- This column seems to represent the department
);


INSERT INTO employees (emp_id, fname, lname, desig, dept)
VALUES 
    (101, 'Raju', 'Rastogi', 'Manager', 'Loan'),
    (102, 'Sham', 'Mohan', 'Cashier', 'Cash'),
    (103, 'Baburao', 'Apte', 'Associate', 'Loan'),
    (104, 'Paul', 'Philip', 'Accountant', 'Account'),
    (105, 'Alex', 'Watt', 'Associate', 'Deposit');
    
    
SELECT * FROM Employees
ORDER BY fname;

 
SELECT * FROM Employees
ORDER BY fname DESC;


SELECT * FROM Employees
ORDER BY dept,fname DESC;

