CREATE DATABASE students_db;
use students_db;

CREATE TABLE students (
    ID VARCHAR(10) PRIMARY KEY,   -- Unique identifier for each student
    Name VARCHAR(100) NOT NULL,    -- Student's name
    Class INT NOT NULL              -- Class or grade level
);


INSERT INTO students (Name, Class, ID) VALUES 
('Alice Johnson', 10, 'S001'),
('Bob Smith', 10, 'S002'),
('Carol Lee', 11, 'S003'),
('David Kim', 12, 'S004'),
('Emma Brown', 11, 'S005'),
('Frank Wilson', 10, 'S006'),
('Grace Lee', 12, 'S007'),
('Henry Taylor', 11, 'S008'),
('Iris Davis', 10, 'S009'),
('Jack White', 12, 'S010');

SET SQL_SAFE_UPDATES = 0;

UPDATE students
SET id=1
WHERE name="Jack White";

DELETE FROM students
WHERE id="S001";


DROP TABLE students;
DROP DATABASE students_db;

