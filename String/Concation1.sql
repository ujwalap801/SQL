CREATE DATABASE bank_db;
use bank_db;

-- Create the table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    firstname VARCHAR(100),
    lastname VARCHAR(100)
);

-- Insert values into the table
INSERT INTO employees (emp_id, firstname, lastname)
VALUES (1, 'John', 'Smith'),
       (2, 'Mary', 'Johnson'),
       (3, 'Paul', 'Williams'),
       (4, 'David', 'Brown');
       
SELECT * FROM Employees;

SELECT emp_id, CONCAT(firstname," ",lastname) as FullName 
FROM Employees;

SELECT emp_id, CONCAT(firstname,"ABCD") as FullName 
FROM Employees;

SELECT CONCAT_WS('-','Hi','World');
SELECT CONCAT_WS('-','Hi','World','India','Luci');

SELECT CONCAT_WS(':',emp_id,firstname,lastname)
FROM Employees;


