/*
MySql Constraints

CREATE TABLE table_name(column1 datatype constraint,
						column2 datatype constraint,
                        column3 datatype constraint);

Constraints:
> NOT NULL      - Null values are not allowed
> UNIQUE        - Duplicate values not allowed
> DEFAULT       - Used to specify a default value
> CHECK         - To apply condition
> PRIMARY KEY   - Uniquely identifies each row
> FOREIGN KEY   - Establishing links between tables
*/

USE demo;
SHOW TABLES;

DROP TABLE IF EXISTS employee;

CREATE TABLE employee(empid INT PRIMARY KEY,
					  badgeid INT UNIQUE,
					  fname VARCHAR(100) NOT NULL,
                      lname VARCHAR(100) NOT NULL,
                      gender CHAR(1),
                      city VARCHAR(100) DEFAULT 'Bangalore',
                      age INT CHECK (age >= 21));
                      
DESC employee;
                      
INSERT INTO employee (empid, badgeid, fname, lname, gender, city, age)
VALUES (101, 10101, 'Avinash', 'Mishra', 'M', 'Delhi', 35);


SELECT * FROM employee;

INSERT INTO employee (empid, badgeid, fname, lname, gender, city, age)
VALUES (101, 10102, 'Archana', 'Sunak', 'F', 'Delhi', 39);      # Duplicate primary key

INSERT INTO employee (badgeid, fname, lname, gender, city, age)
VALUES (10102, 'Archana', 'Sunak', 'F', 'Delhi', 39);      # Primary key can't be null

INSERT INTO employee (empid, badgeid, fname, lname, gender, city, age)
VALUES (102, 10102, 'Archana', 'Sunak', 'F', 'Delhi', 39);

SELECT * FROM employee;

INSERT INTO employee (empid, badgeid, lname, gender, city, age)
VALUES (103, 10103, 'Sunak', 'F', 'Delhi', 39);      # fname can't be null

INSERT INTO employee (empid, badgeid, fname, lname, city, age)
VALUES (103, 10103, 'Tunak', 'Sunak', 'Chennai',  39);

SELECT * FROM employee;

INSERT INTO employee (empid, badgeid ,fname, lname, gender, age)
VALUES (104, 10104, 'Sunak', 'Tunak', 'M', 39);      # Bangalore

SELECT * FROM employee;

INSERT INTO employee (empid, badgeid ,fname, lname, gender,city, age)
VALUES (105, 10105, 'Tunak', 'Tunak', 'M', 'Chandigarh', 20);  # age can't be lesss than 21

INSERT INTO employee (empid, badgeid ,fname, lname, gender,city, age)
VALUES (105, 10105, 'Tunak', 'Tunak', 'M', 'Chandigarh', 22);

SELECT * FROM employee;