

In SQL, a clause is a part of a statement that specifies a particular condition or operation to be performed on the data
# SQL SELECT Query

The `SELECT` query in SQL is used to retrieve data from one or more tables. You can specify which columns to return, filter the results, and sort them as needed. It is one of the most basic queries used to manipulate a database.

## Syntax

```sql
SELECT column1, column2, ..., columnN
FROM table_name;



# SQL WHERE Clause

The `WHERE` clause in SQL is used to filter records(row) that meet specific criteria. It can be used in conjunction with the `SELECT`, `UPDATE`, and `DELETE` statements to specify conditions for selecting or modifying data.The WHERE clause is a powerful tool for filtering data in SQL, allowing you to retrieve only the records that meet specified conditions

## Syntax

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;


## Common Operators

=: Equal to
<> or !=: Not equal to
>: Greater than
<: Less than
>=: Greater than or equal to
<=: Less than or equal to
LIKE: Used for pattern matching
IN: Checks if a value matches any value in a list
BETWEEN: Checks if a value is within a range



## AND operator

The AND operator in SQL is used to combine multiple conditions in a WHERE clause. It allows you to filter records based on multiple criteria, ensuring that all conditions must be true for a record to be included in the results

Synatx:
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2;


## 
The OR operator in SQL is used to combine multiple conditions in a WHERE clause. It allows you to filter records based on multiple criteria, where at least one of the conditions must be true for a record to be included in the results.

Synatx:
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2;



# The NOT operator in SQL is used to negate a condition in a WHERE clause or other conditional expressions. It reverses the logical state of a condition, meaning that if the condition is true, NOT makes it false, and vice versa

Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;


# SQL INSERT INTO Statement

The `INSERT INTO` statement in SQL is used to add new records (rows) to a table. You can insert data into specific columns or into all columns of a table.

#Synatx:
1.Inserting Data into Specific Columns

INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);

2.Inserting Data into All Columns
INSERT INTO table_name
VALUES (value1, value2, ...);
