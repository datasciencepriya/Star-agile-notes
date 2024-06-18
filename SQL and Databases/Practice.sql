CREATE DATABASE practice;
USE practice;

CREATE TABLE employee2(
			empid INT PRIMARY KEY,
            empname VARCHAR(100),
            empage INT,
            deptid INT,
            salary INT);
            
CREATE TABLE department(
			deptid INT,
            deptname VARCHAR(100),
            HOD VARCHAR(100));
            
INSERT into employee2 values(1,'Aman', 30,101,100000);
INSERT into employee2 values(2,'Anand', 35,104,110000);
INSERT into employee2 values(3,'Vishal', 28,103,90000);
INSERT into employee2 values(4,'Bhuvan', 40,101,120000);
INSERT into employee2 values(5,'Geetha', 26,103,130000);
INSERT into employee2 values(6,'Shalini', 31,104,80000);
INSERT into employee2 values(7,'Shyam', 37,106,80000);
INSERT into employee2 values(8,'Shubham', 31,107,60000);

INSERT into department values(101,'Marketing', 'Abhijeet');
INSERT into department values(102,'Sales', 'Byju Ravindran');
INSERT into department values(103,'Research', 'Srinivas');
INSERT into department values(104,'Engineering', 'Muttuswamy');
INSERT into department values(105,'HR', 'Srivalli');

/*=========================================================================================*/

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
       
       
SELECT * FROM employee;
SELECT * FROM employee2;
SELECT * FROM department;

# employees from employee table with salary more than 90000
SELECT * FROM employee
WHERE salary > 90000;

# employees from employee table living in Jaipur, Delhi or Pune
SELECT * FROM employee
WHERE city IN ('Jaipur', 'Delhi', 'Pune');

# employees from employee table living in Jaipur, Delhi or Pune in descending order of salary
SELECT * FROM employee
WHERE city IN ('Jaipur', 'Delhi', 'Pune')
ORDER BY salary DESC;

# Male employees from employee table living in Jaipur, Delhi or Pune in descending order of salary
SELECT * FROM employee
WHERE city IN ('Jaipur', 'Delhi', 'Pune') AND gender = 'M';

# Employees with top five highest salaries
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 5;

# employees with top five salaries in Finance department
SELECT * FROM employee
WHERE department = 'Finance'
ORDER BY salary DESC
LIMIT 5;

# employee with second highest salary
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 1,1;

# employee with second lowest salary in Research department
SELECT * FROM  employee 
WHERE department = 'Research'
ORDER BY salary ASC
LIMIT 1,1;

# Averge salary of the employee table
SELECT AVG(salary) as average_salary from Employee;

# Max salary from employee table
SELECT MAX(salary) as maximum_salary from employee;

# Number of employees in each department
SELECT department ,COUNT(*) as num_of_employees FROM employee
GROUP BY department;

# Number of employees in each department
SELECT department ,COUNT(*) as num_of_employees FROM employee
GROUP BY department
ORDER BY num_of_employees DESC;

# Average salary in each department in descending order
SELECT department, AVG(salary) as average_salary FROM  employee
GROUP BY department
ORDER BY average_salary DESC;

# Average salary of males in each department in descending order
SELECT department, AVG(salary) as average_salary FROM employee
WHERE gender = 'M'
GROUP BY department
ORDER BY average_salary DESC;

# departments with average salary more than 100000
SELECT department, AVG(salary) as average_salary FROM employee
GROUP BY department
HAVING average_salary > 100000;

# departments with average male salary more than 100000 in desc order
SELECT department, AVG(salary) as average_male_salary FROM employee
WHERE gender = 'M'
GROUP BY department
HAVING average_male_salary > 100000
ORDER BY average_male_salary DESC;

# max salary from each city in descending order
SELECT city, MAX(salary) as max_salary FROM employee
GROUP BY city
ORDER BY max_salary DESC;

# Average male and female salary in each department
SELECT department, gender, AVG(salary) as average_salary from employee
GROUP BY department, gender
ORDER BY department, gender;

# employees having salary more than average salary
SELECT * FROM employee
WHERE salary > (SELECT AVG(salary) from employee);

# departments having average salary more than the average employee salary
SELECT department, AVG(salary) as average_salary FROM employee
GROUP BY department
HAVING average_salary > (SELECT AVG(salary) FROM employee);