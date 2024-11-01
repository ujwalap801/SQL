CREATE DATABASE Employee;
use Employee;
 CREATE TABLE customer(
	id INT NOT NULL,
    name varchar(50) NOT NULL,
     acc_type VARCHAR(50) NOT NULL DEFAULT 'Savings'
    );
    
 INSERT INTO customer(id,name)
    VALUES(101,"raju"),(102,"Sham");

SELECT * FROM customer;

In SQL, the DEFAULT keyword is used to specify a default value for a column when no value is provided during an INSERT operation. 
If you don't insert a value into the column, the database will automatically use the default value defined for that column.