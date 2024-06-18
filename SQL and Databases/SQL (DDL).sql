SHOW DATABASES;      -- Shows all the available databases

/*======== DDL(Data Definition Language) Commands ===========
CREATE
ALTER
DROP
TRUNCATE
*/

/* Creating a database:
CREATE DATABASE database_name;
*/

CREATE DATABASE demo1;
SHOW DATABASES;

/* Deleting a database:
DROP DATABASE database;
*/

DROP DATABASE demo1;
SHOW DATABASES;

/*
IF EXISTS
IF NOT EXISTS
*/

CREATE DATABASE demo;
CREATE DATABASE demo;   -- Error
SHOW DATABASES;     -- Will not execute

CREATE DATABASE IF NOT EXISTS demo;   -- No error
SHOW DATABASES;     -- Executes

DROP DATABASE demo;
DROP DATABASE demo;   -- Error
SHOW DATABASES;       -- Will not execute

DROP DATABASE IF EXISTS demo;   -- No error
SHOW DATABASES;       -- Executes

/*=====================================================================================
TO create a table first select a database where the table is to be created:
USE database_name;

Creating Tables:
CREATE TABLE table_name(column1 datatype,
						column2 datatype, 
                        column3 datatype);
*/
/* ================================
		MySQL Data Types
   ================================*/
/* A database table contains multiple columns with specific data types such as numeric or string or date. 
MySQL provides more data types other than just numeric and string. Each data type in MySQL 
can be determined by the following characteristics:

> The kind of values it represents.
> The space that takes up and whether the values are a fixed-length or variable length.

Data types are grouped into five categories:
1. Numeric Data Types
2. String Data Types
3. Date and Time data types
4. Spatial Data Types
5. JSON Data Types
*/

CREATE DATABASE demo;
USE demo;

CREATE TABLE student(first_name VARCHAR(50),
					 last_name  VARCHAR(50),
                     age INT,
                     city VARCHAR(100));
                     
SHOW TABLES;      -- Shows all the tables present in the selected database
DESC student;     -- Describes the schema (structure) of a table

/* Deleting a table:
DROP TABLE table_name
*/

CREATE TABLE temp(name VARCHAR(100));
SHOW TABLES;

DROP TABLE temp;
SHOW TABLES;

/*===========================================================================
Alter Command : Used to alter the schema of the database
ALTER TABLE table_name
..........................;

Add a column                       : ADD column_name datatype;
Drop a column                      : DROP COLUMN column_name;
Change the name of a column        : RENAME COLUMN current_name TO new_name;
Change the data type of a column   : MODIFY column_name new_datatype;
Change name of the table           : RENAME to new_name;
*/

ALTER TABLE student
ADD dob DATE;                    -- Adding a column

DESC student;

ALTER TABLE student
DROP COLUMN dob;                 -- Dropping a column

DESC student;

ALTER TABLE student
RENAME COLUMN city TO address;   -- Renaming column

DESC student;

ALTER TABLE student
MODIFY address VARCHAR(200);     -- Modifying the datatype

ALTER TABLE student
RENAME TO employee;              -- Renaming the table

SHOW TABLES;

/*=================== TRUNCATE vs DROP ======================== */
INSERT INTO employee VALUES('Ankit', 'Saxena', 35, 'Delhi');
INSERT INTO employee VALUES('Bhuwan','Sharma', 45, 'Jaipur');

SELECT * FROM employee;

TRUNCATE TABLE employee;   -- Deletes the data inside the table
SELECT * FROM employee;
SHOW TABLES;

DROP TABLE employee;      -- Delete the table itself
SHOW TABLES;