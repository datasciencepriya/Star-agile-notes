/* ==============================================================================
   =============================== TCL Commands =================================
			1.COMMIT
            2.SAVEPOINT
            3.ROLLBACK
- Transactions in SQL
- ACID Properties
*/

SET autocommit = OFF;
USE demo1;

CREATE TABLE student(
		first_name VARCHAR(50),
        last_name VARCHAR(50),
        city VARCHAR(100));
        
START TRANSACTION;
INSERT INTO student VALUES ('Amit', 'Sharma', 'Delhi');
INSERT INTO student VALUES ('Akash', 'Bhatt', 'Jaipur');

SELECT * FROM student;
SAVEPOINT A;

INSERT INTO student VALUES ('Hemant', 'Sharma', 'Sikar');
UPDATE student
SET city = 'Jaipur'
WHERE first_name = 'Hemant';

SELECT * FROM student;
ROLLBACK TO A;

SELECT * FROM student;

INSERT INTO student VALUES ('Hemant', 'Sharma', 'Sikar');
SAVEPOINT B;

INSERT INTO student VALUES ('Bhuwan', 'Sharma', 'Jaipur');
SELECT * FROM student;
SAVEPOINT C;

UPDATE student
SET city = 'Bangalore'
WHERE city = 'Jaipur';

SELECT * FROM student;
ROLLBACK TO C;

SELECT * FROM student;

COMMIT; 