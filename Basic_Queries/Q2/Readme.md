
# Aggregate Functions in SQL

Aggregate functions in SQL are functions that perform a calculation on a set of values and return a single value. They are commonly used with the `GROUP BY` clause to summarize data. Aggregate functions help analyze and generate insights from large datasets by performing operations like counting, summing, averaging, and finding minimum or maximum values.

## Count

The `COUNT` function in SQL is used to return the number of rows that match a specified condition. It is often used in conjunction with the `SELECT` statement to get a count of records in a table or the number of records that meet certain criteria.

### Syntax:

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;


# AVG() Function in SQL

The `AVG()` function in SQL is an aggregate function used to calculate the average value of a numeric column. It sums up all the values in the specified column and divides that sum by the number of non-null values in that column.

## Syntax:

```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;


# SUM() Function in SQL

The `SUM()` function in SQL is an aggregate function used to calculate the total sum of a numeric column. It adds up all the values in the specified column and returns the total.

## Syntax:

```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;


# MIN() Function in SQL

The `MIN()` function in SQL is an aggregate function used to retrieve the smallest value from a specified column. It is commonly used with numeric, date, and string data types.

## Syntax:

```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;


# MAX() Function in SQL

The `MAX()` function in SQL is an aggregate function used to retrieve the largest value from a specified column. It can be used with numeric, date, and string data types.

## Syntax:

```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;


# GROUP BY Clause in SQL

The `GROUP BY` clause in SQL is used to arrange identical data into groups. It is commonly used in conjunction with aggregate functions (like `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`) to perform calculations on each group of data.

## Sample Data

Assume we have the following `Employees` table:

| EmployeeID | Name       | Department | Salary |
|------------|------------|------------|--------|
| 1          | Alice      | HR         | 60000  |
| 2          | Bob        | IT         | 70000  |
| 3          | Charlie    | HR         | 65000  |
| 4          | David      | IT         | 80000  |
| 5          | Eva        | Sales      | 50000  |
| 6          | Frank      | Sales      | 55000  |

## Examples

1. **Counting the Number of Records per Group**

```sql
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM Employees
GROUP BY Department;


Here’s how you can format the GROUP BY clause information along with examples using sample data in a README.md file:

markdown
Copy code
# GROUP BY Clause in SQL

The `GROUP BY` clause in SQL is used to arrange identical data into groups. It is commonly used in conjunction with aggregate functions (like `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`) to perform calculations on each group of data.

## Sample Data

Assume we have the following `Employees` table:

| EmployeeID | Name       | Department | Salary |
|------------|------------|------------|--------|
| 1          | Alice      | HR         | 60000  |
| 2          | Bob        | IT         | 70000  |
| 3          | Charlie    | HR         | 65000  |
| 4          | David      | IT         | 80000  |
| 5          | Eva        | Sales      | 50000  |
| 6          | Frank      | Sales      | 55000  |

## Examples

1. **Counting the Number of Records per Group**

```sql
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM Employees
GROUP BY Department;
Result:

Department	NumberOfEmployees
HR             	2
IT           	2
Sales	        2