create database school;

use school;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50)
);


CREATE TABLE courses (
   id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50),
    fees DECIMAL(10, 2)
);

SELECT *FROM students;
SELECT *FROM courses;

INSERT INTO students (student_name) VALUES
('Alice Johnson'),
('Bob Smith'),
('Charlie Brown'),
('Diana Prince');


INSERT INTO courses (course_name, fees) VALUES
('Computer Science', 1500.00),
('Data Science', 2000.00),
('Mathematics', 1000.00),
('Physics', 1200.00),
('Chemistry', 1100.00);

CREATE TABLE student_course (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);


INSERT INTO student_course (student_id, course_id) VALUES
(1, 1),  -- Alice Johnson enrolled in Computer Science
(1, 2),  -- Alice Johnson enrolled in Data Science
(2, 3); -- Bob Smith enrolled in Mathematics

SELECT * FROM student_course ;

show tables;



-- Join with many to many 
SELECT student_name, course_name
FROM students 
JOIN student_course  ON student_course.student_id = students.id
JOIN courses  ON student_course.course_id = courses.id;




