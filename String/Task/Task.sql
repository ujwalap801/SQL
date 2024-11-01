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
    
SELECT CONCAT_WS(":",emp_id,fname,lname,dept)
FROM Employees
WHERE emp_id=101;


SELECT CONCAT_WS(":",emp_id,(CONCAT(fname," ",lname)),lname,dept)
FROM Employees
WHERE emp_id=101;


SELECT CONCAT_WS(":", emp_id,fname,(Upper(desig)),dept)
FROM Employees
WHERE emp_id=101;

SELECT CONCAT(LEFT(dept,1),emp_id),fname
FROM Employees;




