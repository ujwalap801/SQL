## SQL `IN` Operator

The `IN` operator in SQL is used to filter records based on whether a column's value matches any value within a specified list. It is a shorthand for multiple `OR` conditions and is useful for simplifying queries when you need to match a column against multiple values.

### Syntax

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name IN (value1, value2, ...);


## SQL `BETWEEN` Operator

The `BETWEEN` operator in SQL is used to filter the result set within a specified range. It selects values that are **inclusive** of both the lower and upper bounds. You can use `BETWEEN` with numeric, date, or even textual data (based on alphabetical order).

### Syntax

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name BETWEEN value1 AND value2;


## SQL Aliases

An **alias** in SQL is a temporary name assigned to a table or column in a query. It is primarily used to make query results more readable and to shorten lengthy table or column names. Aliases are only valid within the context of the query in which they are created and do not affect the actual table or column names in the database.

### Syntax

**Column Alias:**

```sql
SELECT column_name AS alias_name
FROM table_name;


## SQL Table Aliases

A **table alias** in SQL is a temporary name given to a table in a query. Table aliases are useful when:
- You want to refer to a table with a shorter name.
- You are working with multiple tables in a query (such as in `JOIN` operations).
- You want to improve the readability of your queries, especially when tables have long or complex names.

### Syntax

```sql
SELECT column_name
FROM table_name AS alias_name;


Table Aliases
Table aliases are used to give a table a short name, making queries easier to write and read, especially when working with multiple tables or complex queries.

SELECT column_name
FROM table_name AS alias_name;




## SQL `NOT IN` Operator

The `NOT IN` operator in SQL is used to exclude rows where a specified column’s value is **not present** in a list of values. It is the opposite of the `IN` operator, which checks for values **inside** the list.

### Syntax

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name NOT IN (value1, value2, ...);


## SQL `LIKE` Condition

The **`LIKE`** condition in SQL is used to search for a specified pattern in a column. It is typically used in `WHERE` clauses to filter records that match a particular pattern. The `LIKE` operator is often used with **wildcards** to make the pattern more flexible.

### Syntax

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;

% -  denotes zero or many characters
_ - denotes one character

SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'A%';



## SQL CASE Expression

The **CASE** expression in SQL allows you to perform conditional logic within your queries. It can be used to evaluate a list of conditions and return a specific value based on the first condition that is met. The `CASE` expression can be utilized in `SELECT`, `UPDATE`, `DELETE`, and `ORDER BY` clauses.

### Syntax

There are two types of `CASE` expressions: **simple** and **searched**.

#### Simple CASE Expression

```sql
CASE column_name
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ...
    ELSE result_default
END



EX:


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2)
);

INSERT INTO employees (employee_id, first_name, last_name, department_id, salary) VALUES
(1, 'John', 'Doe', 1, 25000),
(2, 'Jane', 'Smith', 2, 50000),
(3, 'Mike', 'Johnson', 3, 80000),
(4, 'Emily', 'Davis', 1, 30000),
(5, 'Alex', 'Brown', 2, 75000),
(6, 'Sarah', 'Wilson', 3, 120000);


SELECT employee_id, first_name, last_name,
CASE department_id
    WHEN 1 THEN 'Sales'
    WHEN 2 THEN 'HR'
    WHEN 3 THEN 'IT'
    ELSE 'Other'
END  AS department_name
FROM employees;



employee_id	first_name	last_name	department_name
1	           John  	Doe	       Sales
2	           Jane	     Smith	       HR
3	           Mike	     Johnson	   IT
4	          Emily	      Davis	     Sales
5	           Alex	       Brown	HR
6	          Sarah	       Wilson	IT