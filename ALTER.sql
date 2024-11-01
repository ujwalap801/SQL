use compan;

--  How to add and remove column
CREATE TABLE contact4(
mobile VARCHAR(15) UNIQUE 
);

-- TO ADD A NEW COLUMN 
ALTER TABLE contact4
ADD COLUMN name VARCHAR(50);

--  TO REMOVE A COLUMN 
ALTER TABLE contact4
drop COLUMN name;


-- How to rename a column or table 
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    desig VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);


INSERT INTO Employees (emp_id, fname, lname, desig, dept, salary) VALUES
(101, 'Raju', 'Rastogi', 'Manager', 'Loan', 37000),
(102, 'Sham', 'Mohan', 'Cashier', 'Cash', 25000),
(103, 'Baburao', 'Apte', 'Associate', 'Loan', 25000),
(104, 'Paul', 'Philip', 'Accountant', 'Account', 45000),
(105, 'Alex', 'Watt', 'Associate', 'Deposit', 35000);


-- TO RENAME A COLUMN 
ALTER TABLE  Employees 
RENAME COLUMN fname TO full_name;
SELECT *FROM employees;

-- TO RENAME TABLE NAME
ALTER TABLE employees 
RENAME TO Employee_data;

SELECT *FROM Employee_data;

--  MODIFY A COLUMN
ALTER TABLE employee_data 
MODIFY dept VARCHAR(70) DEFAULT 'unkown';

 
 DESC Employee_data;
 



