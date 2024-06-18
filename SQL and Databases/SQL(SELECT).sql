SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS demo1;
USE demo1;

DROP TABLE IF EXISTS employee;

CREATE TABLE employee( empid INT PRIMARY KEY,
					   fname VARCHAR(50) NOT NULL,
                       lname VARCHAR(50),
                       gender CHAR(1),
                       city VARCHAR(100) default 'Jaipur',
                       salary INT,
                       department VARCHAR(50));

DESC employee;

INSERT INTO employee(empid, fname, lname, gender, city, salary, department)
VALUES (101, 'Akshita', 'BC', 'F', 'Delhi', 60000, 'Marketing'),
	   (102, 'Ankit', 'Das', 'M', 'Kolkata', 80000, 'Finance'),
       (103, 'Ankita', 'Gangurde', 'F', 'Pune', 75000, 'Engineering'),
       (104, 'Ankur', 'Varshney', 'M', 'Gaziabad', 90000, 'Research'),
       (105, 'Utkarsh', 'Sharma', 'M', 'Jaipur', 400000, 'Research'),
       (106, 'Madhu','Bagri','F', 'Mumbai',82000,'Engineering'),
	   (107, 'Mahtab', 'Alam','M', 'Hyderabad', 85000,'Marketing'),
       (108, 'Tanya', 'Bajaj','F','Panipat', 80000,'HR'),
	   (109,'Tarun', 'Shah', 'M','Jaipur', 75000,'Finance'),
       (110, 'Rishabh', 'Sharma', 'M', 'Indore',60000,'HR'),
       (111,'Rupa', 'Datta', 'F', 'Pune', 750000, 'Marketing'),
       (112,'Uma', 'Dev', 'F', 'Hyderabad', 50000, 'Finance'),
       (113,'Kumar', 'Sharma', 'M', 'Mumbai', 60000, 'Marketing'),
       (114,'Naresh', 'Avasthi', 'M', 'Pune', 750000, 'Finance'),
       (115,'Paul', 'Dave', 'M', 'Pune', 750000, 'Engineering'),
       (116, 'Kim', 'Yan', 'F', 'Mumbai', 30770, 'Marketing'),
	   (117, 'Sam', 'Das', 'M', 'Jaipur', 22000, 'Management'),
	   (118, 'Omy', 'Shah', 'F', 'Delhi', 45000, 'Finance'),
	   (119, 'Tom', 'Fox', 'M', 'Kanpur', 150000, 'Finance'),
	   (120, 'Jon', 'Cox', 'M', 'Mumbai', 24250, 'HR'),
       (121,'Madhu','BG','F','Bangalore',60000,'R&D'),
	   (122,'Kirti','Binani', 'F','Kolkata',55000,'Finance'),
	   (123, 'Govind', 'Chandak','M','Balasore',80000,'Engineering'),
	   (124, 'Suman','Ch','F','Kolkata',45000,'Accounting'),
	   (125,'Bharat','Bag' ,'M','Bangalore',100000,'Sales'),
       (126, 'Abhishek', 'Kumar', 'M', 'Hyderabad', 60000, 'Marketing'),
       (127, 'Mayank', 'Sharma', 'M', 'Delhi', 75000, 'Accounting'),
       (128, 'Shivangi', 'Shreya', 'F', 'Ranchi', 80000, 'Engineering'),
       (129, 'Rahul', 'Bhalotiya', 'M', 'Jamshedpur', 50000, 'Engineering'),
       (130, 'Dayanidhi', 'Dahima', 'M', 'Delhi', 90000, 'Sales'),
       (131,'Avadhut','Madane','M','Pune',20000,'Finance'),
	   (132,'Rahul','Kokare','M','Baramati',30000,'Accounting'),
       (133,'Suhas','Zunjar','M','Indapur',35000,'Marketing'),
       (134,'Sanjay','Tangade','M','Solapur',25000,'HR'),
       (135,'Vijay','Kokare','M','Sangali',45000,'R&D'),
       (136,'Pallavi','Masetty','F','Hyderabad',75000,'Finance'),
       (137,'Prasun', 'Kumar', 'M', 'Bangalore', 57000, 'Engineering'),
       (138,'Kiran', 'Kumar', 'M', 'Hyderabad', 50000, 'Engineering'),
       (139, 'Arunava', 'Palai', 'M', 'Pune', 50000, 'HR'),
       (140, 'Ajay' , 'Kudiya' , 'M' , 'Thane' , 50000 , 'IT' ),
       (141, 'Priya', 'Dayalan','F','Kanchipuram',25000,'Finance'),
       (142,'Pournima','Bhandare','F','Pune',120000,'Finance'),
       (143, 'Ashwanth', 'Kumar', 'M', 'Chennai', 48000, 'IT'),
       (144,'Raghu','Nayak','M','Chennai',80000,'Accounting'),
       (145,'Abhijeet','Kondpalle','M','Pune',90000,'Marketing'),
       (146, 'Sam', 'Pitroda', 'M', 'Hyderabad', 75000, 'Finance'),
       (147,'Anitha','Krishnamaraju','F','Hyderabad',100000,'IT'),
       (148, 'Jyoti' , 'Singh' , 'F' , 'Varanasi' , 55000 , 'IT'),
       (149, 'Abhay', 'Naik', 'M', 'Mumbai', 70000, 'HR'),
       (150,'Mounika', 'Illa', 'F', 'Hyderabad', 60000, 'IT');
       
SELECT * FROM employee;    -- Select all records with all columns (* : all columns)

SELECT fname FROM employee;
SELECT empid, fname, lname, salary FROM employee;

SELECT department FROM employee;
SELECT DISTINCT department FROM employee;      -- Distinct values
SELECT DISTINCT city FROM employee; 

/* =============== WHERE ================= */
SELECT * FROM employee;

SELECT * FROM employee
WHERE department = 'Finance'; 

SELECT empid, fname, lname, department FROM employee
WHERE department = 'Finance';

SELECT * FROM employee
WHERE salary >= 100000;

SELECT * FROM employee
WHERE salary >= 100000 and department = 'Finance';      -- and

SELECT * FROM employee
WHERE city = 'Jaipur' or city = 'Delhi';          -- or

SELECT * FROM employee
WHERE salary >= 80000 and salary <= 150000;

SELECT * FROM employee
WHERE salary BETWEEN 80000 and 150000;           -- BETWEEN

SELECT * FROM employee
WHERE (city ='Delhi' OR city = 'Jaipur') and department = 'Finance';

SELECT * FROM employee
WHERE city = 'Jaipur' or city = 'Pune' or city = 'Delhi' or city = 'Mumbai';

SELECT * FROM employee
WHERE city IN ('Jaipur', 'Delhi', 'Pune', 'Mumbai');    -- IN

SELECT * FROM employee
WHERE city NOT IN ('Jaipur', 'Delhi', 'Pune', 'Mumbai');  -- NOT IN
          
SELECT * FROM employee
WHERE city IN ('Jaipur', 'Delhi') and department = 'Finance';    

SELECT * FROM employee
WHERE fname LIKE 'A%';        -- First name Starting with A   

SELECT * FROM employee
WHERE fname LIKE '%t';        -- First name ending with t

SELECT * FROM employee
WHERE city LIKE '%pur';       -- City ending with pur

/*================ ORDER BY =================== */
SELECT * FROM employee
ORDER BY salary;          -- By default ascending order

SELECT * FROM employee
ORDER BY salary ASC;     -- ASC : Ascending order

SELECT * FROM employee
ORDER BY salary DESC;     -- DESC : Descending order

SELECT * FROM employee
ORDER BY fname;           -- Alphabetical order

SELECT * FROM employee
ORDER BY fname DESC;      -- Reverse alphabetical order

SELECT * FROM employee
ORDER BY salary DESC, fname ASC;

-- Employees in finance department in descending order of their salary
SELECT * FROM employee
WHERE department = 'Finance'
ORDER BY salary DESC;

-- Male employees in finance department in descending order of their salary
SELECT * FROM employee
WHERE department = 'Finance' and gender = 'M'
ORDER BY salary DESC;

SELECT * FROM employee
WHERE department = 'Finance' and gender = 'M' and salary > 80000
ORDER BY salary DESC;


/* ================== LIMIT ===================== */
SELECT * FROM employee
LIMIT 5;                  -- Only extract 5 records

SELECT * FROM employee
LIMIT 10;

SELECT * FROM employee
WHERE gender = 'M'
LIMIT 5;

-- Extract employees having top 3 highest salaries
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 3;

-- Extract employees having lowest 3 salaries
SELECT * FROM employee
ORDER BY salary ASC
LIMIT 3;

-- Employee with highest salary
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 1;

-- Employee with lowest salary
SELECT * FROM employee
ORDER BY salary ASC
LIMIT 1;

-- Employees with top 3 highest salaries in finance department
SELECT * FROM employee
WHERE department = 'Finance'
ORDER BY salary DESC
LIMIT 3;

-- LIMIT a,b (skip a number of records and extract the next b number of records)
SELECT * FROM employee
LIMIT 3,2;

-- Extrat the employee having second highest salary
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 1,1;

-- Extrat the employee having fifth highest salary
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 4,1;

-- Extrat the employee second lowest highest salary
SELECT * FROM employee
ORDER BY salary ASC
LIMIT 1,1;



/* ================= Aggregate Functions ====================== 
COUNT()    -   Returns number of rows
SUM()      -   Returns the sum
AVG()      -   Returns the average
MIN()      -   Returns the minimum value
MAX()      -   Returns the maximum value
*/

SELECT Count(*) FROM employee;    -- Number of employees

SELECT COUNT(*) FROM employee     -- Number of male employees
WHERE gender = 'M';

SELECT COUNT(*) FROM employee     -- NUmber of female employees
WHERE gender = 'F';

SELECT COUNT(*) FROM employee     -- Number of employees in Finance department
WHERE department = 'Finance';

SELECT COUNT(*) FROM employee    -- Number of employees having salary > 100000
WHERE salary > 100000;


SELECT SUM(salary) FROM employee;  -- Sum of salaries

SELECT SUM(salary) FROM employee   -- Sum of salaries of employees in engineering department
WHERE department = 'Engineering';

SELECT AVG(salary) FROM employee;  -- Average salary of all employees

SELECT AVG(salary) FROM employee   -- Average salary of male employees
WHERE gender = 'M';

SELECT AVG(salary) FROM employee   -- Average salary of female employees
WHERE gender = 'F';

SELECT AVG(salary) FROM employee   -- Average salary in finance department
WHERE department = 'Finance';

SELECT MIN(salary) FROM employee;  -- Minimum salary

SELECT MIN(salary) FROM employee   -- Minimum salary in engineering department
WHERE department = 'Engineering';

SELECT MIN(salary) FROM employee
WHERE gender = 'F'and department = 'Marketing';

SELECT MAX(salary) FROM employee;   -- Maximum salary

SELECT MAX(salary) FROM employee
WHERE department = 'Research';

SELECT MAX(salary) FROM employee
WHERE gender = 'F'and department = 'Marketing';

SELECT Count(*) as No_of_employees FROM employee;  -- alias


/* ======================= GROUP BY ==================== */

SELECT department, COUNT(*) FROM employee    -- Number of employees in each department
GROUP BY department;

SELECT department, AVG(salary) FROM employee  -- Average salary in each department
GROUP BY department;

SELECT department, AVG(salary) as avg_salary FROM employee  -- Average salary in each department
GROUP BY department;

-- Average salary in each department in descending order
SELECT department , AVG(salary) as avg_salary FROM employee
GROUP BY department
ORDER BY avg_salary DESC;

-- Department having top 3 average salaries
SELECT department, AVG(salary) as avg_salary FROM employee
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 3;

-- Top 3 cities with highest number of employees
SELECT city, COUNT(*) as num_of_employees FROM employee
GROUP BY city
ORDER BY num_of_employees DESC
LIMIT 3;

-- Top 3 departments with highest number of female employees
SELECT department, count(*) as female_employees FROM employee
WHERE gender = 'F'
GROUP BY department
ORDER BY female_employees DESC
LIMIT 3;

-- Top 3 departments having highest average salaries for female employees
SELECT department, AVG(salary) as avg_salary FROM employee
WHERE gender = 'F'
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 3;

/* ============= HAVING ================ */
-- Extract average salary in each department
SELECT department, AVG(salary) as avg_salary FROM employee
GROUP BY department;

-- Extract departments having average salary more than 100000
SELECT department, AVG(salary) as avg_salary FROM employee
GROUP BY department
HAVING avg_salary > 100000; 

-- Extract departments having average female salaries more than 80000
SELECT department, AVG(salary) as avg_salary FROM employee
WHERE gender = 'F'
GROUP BY department
HAVING avg_salary > 80000;

-- Extract departments having average male salaries more than 80000 in descending order
SELECT department, AVG(salary) as avg_salary FROM employee
WHERE gender = 'M'
GROUP BY department
HAVING avg_salary > 80000
ORDER BY avg_salary DESC;


/*=================================================
SELECT     -------------------
WHERE      -------------------
GROUP BY   -------------------
HAVING     -------------------
ORDER BY   -------------------
LIMIT      -------------------
================================================ */



/* ========================== SUB QUERIES ========================*/
-- Extract employees having salary greater than the average salary
SELECT AVG(salary) FROM employee;

SELECT * FROM employee
WHERE salary > 111480;

SELECT * FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

SELECT MAX(salary) FROM employee;

SELECT MAX(salary) FROM employee
WHERE salary != 750000;

SELECT MAX(salary) FROM employee
WHERE salary != (SELECT MAX(salary) FROM employee);     # Second maximum