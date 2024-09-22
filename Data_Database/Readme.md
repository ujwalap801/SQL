# What is Data?

**Data** refers to raw facts, figures, or information that can be processed, analyzed, and interpreted. Data can represent anything, such as numbers, text, images, or even audio and video. It serves as the foundation for creating information and knowledge when it is structured, organized, and understood in context.

### Types of Data:
- **Structured Data**: Organized in a defined format, such as in tables (e.g., databases, spreadsheets).
- **Unstructured Data**: Not organized in a predefined format, such as text documents, images, and multimedia files.

### Importance of Data:
Data plays a crucial role in various fields, such as business, science, and technology, enabling informed decision-making, analysis, and automation.




# What is a Database?

A **database** is an organized collection of data that is stored and managed electronically, typically on a computer system. Databases are designed to efficiently store, retrieve, and manage large amounts of data. They allow users to perform various operations like adding, modifying, deleting, and querying data.

### Types of Databases:
- **Relational Databases**: Organize data into tables (rows and columns) where relationships between data are established using keys (e.g., MySQL, PostgreSQL).
- **NoSQL Databases**: Handle unstructured or semi-structured data and are more flexible in terms of data organization (e.g., MongoDB, Cassandra).
- **Distributed Databases**: Store data across multiple locations or servers to improve scalability and reliability (e.g., Google Spanner, Amazon Aurora).

### Importance of Databases:
- **Data Management**: Databases provide structured methods for storing and organizing data.
- **Efficiency**: Databases are optimized for fast querying and data manipulation.
- **Scalability**: Modern databases can handle massive amounts of data and support multiple users simultaneously.



CREATE DATABASE edureka;
DROP DATABASE edureka;


# Table Overview

A table is a structured arrangement of data made up of rows and columns. It typically consists of:

## Components

- **Rows**: Horizontal lines of data, each representing a single record or entry.
- **Columns**: Vertical divisions that categorize data, with each column usually labeled with a heading that describes the type of information contained within.

## Usage

Tables are commonly used in:

- Databases
- Spreadsheets
- Reports
- Web pages

They help to organize and present information clearly and efficiently.

## Example

In a table listing students, each row might represent a different student, while columns could include their names, ages, and grades.




# Table Constraints

A table constraint is a rule applied to a table in a database to enforce certain conditions on the data within that table. Constraints help maintain data integrity and ensure the accuracy and reliability of the data. Here are the main types of table constraints:

## Types of Table Constraints

1. **Primary Key Constraint**: 
   - Uniquely identifies each record in a table.
   - Ensures that no two rows have the same primary key value and that the primary key value cannot be null.

2. **Foreign Key Constraint**: 
   - Establishes a link between two tables by ensuring that a value in one table matches a value in another table's primary key.
   - Helps maintain referential integrity.

3. **Unique Constraint**: 
   - Ensures that all values in a column (or a group of columns) are unique across the table.
   - No duplicate values are allowed.

4. **Check Constraint**: 
   - Validates that the values in a column meet a specific condition or criteria.
   - For example, it can enforce that a numeric column only contains positive values.

5. **Not Null Constraint**: 
   - Ensures that a column cannot have a null value.
   - Every row must have a value for that column.




CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age > 0),
    Email VARCHAR(100) UNIQUE,
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

Ex:
CREATE TABLE emp(
id int not null auto_increment,
ename varchar(20),
addres varchar(30),
primary key(id)
);

DROP TABLE emp;
