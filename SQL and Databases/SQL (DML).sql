SHOW DATABASES;
USE demo;

DROP TABLE IF EXISTS employee;

SHOW TABLES;

CREATE TABLE employee(first_name VARCHAR(100),
					  last_name VARCHAR(100),
                      age INT,
                      city VARCHAR(100));
                      
DESC employee;

/*==================================================
DML(Data Manipulation Language) Commands:
INSERT
UPDATE
DELETE
*/

/*============================================
INSERT Command : Used to insert data into the table

INSERT INTO table_name
VALUES(value1, value2, value3);

INSERT INTO table_name (column1, column2, column3)
VALUES(value1, value2, value3);

INSERT INTO table_name (column1, column2, column3)
VALUES(value1, value2, value3),
	  (value1, value2, value3),
      (value1, value2, value3);
*/

INSERT INTO employee
VALUES('Archana', 'Sonone', 65, 'Delhi');

SELECT * FROM employee;

INSERT INTO employee (first_name, last_name, age, city)
VALUES('Avinash', 'Mishra', 35, 'Gaziabad');

SELECT * FROM employee;

INSERT INTO employee (first_name, age, city, last_name)
VALUES('Akshay', 30, 'Jodhpur', 'Tiwari');

INSERT INTO employee (first_name, last_name)
VALUES('Jyoti', 'Singh');

SELECT * FROM employee;

INSERT INTO employee (first_name, last_name, age, city)
VALUES('Ajay', 'Kudia', 45, 'Gurugram'),
	  ('Swati', 'Chakka', 29, 'Banaras'),
      ('Arunava', 'Pilai', 38, 'Kolkata');
      
SELECT * FROM employee;

/*====================================================
UPDATE Command : Used to update data inside the table
UPDATE table_name
SET column1 = value1, column2 = value2......
WHERE condition;
*/

SET SQL_SAFE_UPDATES = 0;

UPDATE employee
SET age = 33
WHERE first_name = 'Archana';

SELECT * FROM employee;

UPDATE employee
SET age = 32, city = 'Dehradun'
WHERE first_name = 'Jyoti' and last_name = 'Singh';

SELECT * FROM employee;

UPDATE employee
SET city = 'Bangalore'
WHERE age >= 35;

SELECT * FROM employee;

/*=======================================================
DELETE Command : Used to delete rows from table
DELETE FROM table_name
WHERE condition;
*/

DELETE FROM employee
WHERE first_name = 'Ajay';

SELECT * FROM employee;

DELETE FROM employee
WHERE city = 'Bangalore';

SELECT * FROM employee;