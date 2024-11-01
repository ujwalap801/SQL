SELECT REPLACE('Hello Buddy','Hello','Hi');  --  'Hi Buddy'

SELECT REPLACE('ABCDPQR','PQR','XYZ');   -- 'ABCDXYZ'


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

SELECT REPLACE(emp_id,01,10) AS newEmpIds, firstname 
FROM Employees;


