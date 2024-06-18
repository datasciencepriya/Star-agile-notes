/* ==================== Joins ========================
Used to extract data from two or more tables
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL JOIN
 ==================================================== */
 
 
 USE demo1;
 
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

SELECT * FROM employee2;
SELECT * FROM department;

/* =============================== INNER JOIN ================================= */
SELECT employee2.empid, employee2.empname, employee2.deptid, department.deptname, department.HOD
FROM employee2 INNER JOIN department
ON employee2.deptid = department.deptid;

/* =============================== LEFT JOIN ================================== */
SELECT employee2.empid, employee2.empname, employee2.deptid, department.deptname, department.HOD
FROM employee2 LEFT JOIN department
ON employee2.deptid = department.deptid;

/* ============================== RIGHT JOIN ================================== */
SELECT employee2.empid, employee2.empname, employee2.deptid, department.deptname, department.HOD
FROM employee2 RIGHT JOIN department
ON employee2.deptid = department.deptid;

/* ============================== FULL JOIN ==================================== */
SELECT employee2.empid, employee2.empname, employee2.deptid, department.deptname, department.HOD
FROM employee2 LEFT JOIN department
ON employee2.deptid = department.deptid
UNION
SELECT employee2.empid, employee2.empname, employee2.deptid, department.deptname, department.HOD
FROM employee2 RIGHT JOIN department
ON employee2.deptid = department.deptid;



/* =======================
Stored Procedures
Triggers
======================== */