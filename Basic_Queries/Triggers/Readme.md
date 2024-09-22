Triggers are the SQL code that are automatically excuted in response to certain events on particlar table.These are used to maintain the integrity of the data

Automatic Execution: Triggers run automatically when specified events occur on a table.
Data Integrity: They help ensure that the data remains consistent and valid by enforcing rules and constraints.
Event-Driven: Triggers can be set to fire before or after an event, or instead of it, allowing for flexibility in how data changes are handled.


CREATE DATABASE edureka;
DROP DATABASE edureka;
use edureka;

-- Create employees table
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2)
);



-- Create audit_log table
CREATE TABLE IF NOT EXISTS audit_log (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    old_salary DECIMAL(10, 2),
    new_salary DECIMAL(10, 2),
    change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    action VARCHAR(10) -- To track whether it was an INSERT, UPDATE, or DELETE
);


-- TRIGGER FOR INSERTION


DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO audit_log (employee_id, old_salary, new_salary, action)
    VALUES (NEW.employee_id, NULL, NEW.salary, 'INSERT');
END;
//

DELIMITER ;

INSERT INTO employees (employee_id, name, salary) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000);

-- TRIGGERS FOR UPDATE
DELIMITER //

CREATE TRIGGER before_salary_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    IF OLD.salary <> NEW.salary THEN
        INSERT INTO audit_log (employee_id, old_salary, new_salary, action)
        VALUES (OLD.employee_id, OLD.salary, NEW.salary, 'UPDATE');
    END IF;
END;
//

DELIMITER ;


UPDATE employees
SET salary = 55000
WHERE employee_id = 1;


-- TRIGGERS FOR DELETE
DELIMITER //

CREATE TRIGGER after_employee_delete
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO audit_log (employee_id, old_salary, new_salary, action)
    VALUES (OLD.employee_id, OLD.salary, NULL, 'DELETE');
END;
//

DELIMITER ;

DELETE FROM employees
WHERE employee_id = 2;


SELECT * FROM employees;
SELECT * FROM audit_log;


SHOW triggers in edureka;
drop trigger after_employee_insert;



Advantages of Triggers
1)Forcing security approvals on the table
2) Triggers check the integrity of data
3)Counteracting invalid exchanges
4)Triggers handle errors
5)Triggers are useful for inspecting the data


Disadvantes of Triggers
1)Overhead:Triggers may increase the overhead of the  database
2)Validation:Triggers can only provide extended validations i.e not all kind validations
3)Troubleshoot:Triggers can be difficult to troubleshoot because they execute automatically in the database