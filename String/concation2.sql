SELECT SUBSTRING('Hello Buddy',1,4); --  Hell
SELECT SUBSTRING('Hey Buddy', 5); -- Buddy

SELECT SUBSTRING('Hey Buddy Whatsup Raju',-4);  -- Raju

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


SELECT SUBSTRING(firstname,3) AS newString, firstname
FROM employees;