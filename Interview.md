## 1.What is SQL?
SQL (Structured Query Language) is a standard language used to interact with relational databases. It allows users to create, read, update, and delete data in databases. SQL is also used to manage database structures.
MySQL is an open-source relational database management system (RDBMS) that uses Structured Query Language (SQL) to manage and manipulate data. It’s widely used for web applications and data storage due to its speed, reliability, and ease of use.


## 2. What is the difference between SQL and MySQL?
SQL is a language used to query and operate on databases, whereas MySQL is an open-source relational database management system that uses SQL as its language. MySQL is a software for managing databases, while SQL is the language used within various database systems.


## 3. What are the main types of SQL commands?
The main types are:
DDL (Data Definition Language): Commands like CREATE, ALTER, and DROP to define and modify database structure.
DML (Data Manipulation Language): Commands like INSERT, UPDATE, and DELETE for managing data.
DCL (Data Control Language): Commands like GRANT and REVOKE for controlling access to data.
TCL (Transaction Control Language): Commands like COMMIT, ROLLBACK, and SAVEPOINT for managing transactions.

### DDL (Data Definition Language)
Purpose: Used to define and modify the structure of database objects like tables, indexes, and schemas.
Commands:
CREATE: Creates new database objects like tables, views, or indexes.
ALTER: Modifies the structure of an existing database object (e.g., adding/removing columns in a table).
DROP: Deletes database objects, removing both their structure and data.
TRUNCATE: Quickly deletes all rows from a table without logging each row deletion, often used to reset a table’s data.

### DML (Data Manipulation Language)
Purpose: Used to manipulate the data within tables, i.e., to add, update, or delete records.
Commands:
INSERT: Adds new rows of data to a table.
UPDATE: Modifies existing data in a table based on specified conditions.
DELETE: Removes rows from a table based on specified conditions.

### DCL (Data Control Language)
Purpose: Controls access to data in the database, managing permissions and user rights.
Commands:
GRANT: Provides specific permissions to users or roles, such as the ability to SELECT, INSERT, or UPDATE data.
REVOKE: Removes previously granted permissions from users or roles.

### TCL (Transaction Control Language)
Purpose: Manages transactions within the database to ensure data consistency and integrity.
Commands:
COMMIT: Saves all changes made during the current transaction to the database, making them permanent.
ROLLBACK: Reverts changes made in the current transaction, undoing operations since the last COMMIT.
SAVEPOINT: Sets a savepoint within a transaction, allowing partial rollback to this specific point rather than rolling back the entire transaction.

## 4. What is a Primary Key?
A primary key is a unique identifier for each record in a table. It ensures that no duplicate values are stored in that column and each record is uniquely identifiable. A table can have only one primary key, but it can consist of single or multiple columns.

## 5. What is a Foreign Key?
A foreign key is a column or set of columns in one table that establishes a relationship with a primary key in another table. It is used to link the two tables together and enforce referential integrity.



## 6.How would you write a SQL query to find all records where a column meets a certain condition? (For example, employees with salaries above 50,000)
SELECT * FROM employees WHERE salary > 50000;
This query selects all records from the employees table where the salary column is greater than 50,000.


## 7.Write a SQL query to get the number of employees in each department.
SELECT department_id, COUNT(*) AS num_employees
FROM employees
GROUP BY department_id;
This query groups records in the employees table by department_id and counts the number of employees in each department.


## 8.What is the difference between WHERE and HAVING clauses?

Answer: The WHERE clause filters records before any grouping takes place, whereas the HAVING clause filters records after grouping. WHERE is used with individual rows, and HAVING is used with aggregated data.

## 9.Explain what an index is and why it is useful in databases.

Answer: An index is a data structure that improves the speed of data retrieval operations on a database table at the cost of additional storage and write performance. Indexes make searches faster by allowing the database engine to find records without scanning the entire table.

## 10.What is normalization, and why is it important?

Answer: Normalization is the process of organizing data in a database to reduce redundancy and dependency. It divides large tables into smaller tables and links them using relationships. Normalization improves data integrity and efficiency.

## 11.What are the different normal forms in normalization?

1NF (First Normal Form): Ensures that all columns contain atomic (indivisible) values and each record is unique.
2NF (Second Normal Form): Ensures that all non-key attributes are fully functionally dependent on the primary key.
3NF (Third Normal Form): Ensures that no transitive dependencies exist; non-key attributes depend only on the primary key.

## 12.What is a transaction in SQL, and why is it important?
A transaction is a sequence of SQL operations that are treated as a single unit. Transactions are important for ensuring data integrity. If one part of a transaction fails, the entire transaction can be rolled back, leaving the database in a consistent state.

## 13.What are ACID properties in SQL transactions?
ACID properties ensure reliable transactions:
Atomicity: Ensures that all operations within a transaction are completed; if not, the transaction is rolled back.
Consistency: Ensures the database moves from one valid state to another after the transaction.
Isolation: Ensures that transactions do not interfere with each other.
Durability: Ensures that once a transaction is committed, it remains permanently in the database.
Miscellaneous SQL Functions and Use Cases

## 14.What is the difference between UNION and UNION ALL?
UNION combines the results of two queries and removes duplicate records, while UNION ALL combines all results, including duplicates.

## 15.Explain the GROUP BY clause and give an example.
The GROUP BY clause groups rows that have the same values in specified columns and allows aggregate functions (like COUNT, SUM) to be applied to each group.

SELECT department_id, COUNT(employee_id)
FROM employees
GROUP BY department_id;
This groups the employees by department and counts the number of employees in each.


## 16.Write a query to find duplicate records in a table.
SELECT column_name, COUNT(*)
FROM table_name
GROUP BY column_name
HAVING COUNT(*) > 1;
This query finds duplicate entries based on column_name in table_name.

## 17.What is a stored procedure, and why would you use it?
A stored procedure is a set of SQL statements that can be saved and reused. Stored procedures help in reducing code redundancy, improving performance, and securing data operations.


## 18. What is the purpose of the JOIN clause in SQL? Can you list different types of JOINs?
 The JOIN clause is used to combine rows from two or more tables based on a related column. The main types of JOINs are:
INNER JOIN: Returns only records with matching values in both tables.
LEFT JOIN (or LEFT OUTER JOIN): Returns all records from the left table and matched records from the right table.
RIGHT JOIN (or RIGHT OUTER JOIN): Returns all records from the right table and matched records from the left table.
FULL JOIN (or FULL OUTER JOIN): Returns all records when there is a match in either left or right table.


## 19.Explain the difference between DELETE, TRUNCATE, and DROP commands.

DELETE: Used to remove specific rows from a table based on a condition. It can be rolled back if within a transaction.

TRUNCATE: Removes all rows from a table but keeps the table structure. It's faster than DELETE and can't be rolled back.

DROP: Deletes the entire table structure and data permanently, removing it from the database.




## 20. How would you find duplicate records in a MySQL table?

Answer: You can find duplicates using the GROUP BY clause and HAVING clause. For example:

SELECT column_name, COUNT(*)
FROM table_name
GROUP BY column_name
HAVING COUNT(*) > 1;

This query finds records with duplicate values in column_name.


## 21. What are constraints, and can you list some types in MySQL?

Answer: Constraints are rules applied to table columns to enforce data integrity. Types of constraints include:

PRIMARY KEY: Uniquely identifies each row.

FOREIGN KEY: Links two tables and ensures referential integrity.

UNIQUE: Ensures all values in a column are unique.

NOT NULL: Ensures a column cannot contain NULL values.

CHECK: Ensures values meet a specified condition (available in MySQL 8.0+).