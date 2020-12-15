CREATE DATABASE ASSIGNMENT9;
USE ASSIGNMENT9;

CREATE TABLE employee(
empid int(20),
emp_name varchar(20),
dept_id int(20),
salary int(20),
manager int(20),
constraint PK_EMPLOYEE_empid primary key(empid)
);
INSERT INTO employee (empid,emp_name,dept_id,salary) values (1,'Arun',1,8000);
INSERT INTO employee (empid,emp_name,dept_id,salary) values (2,'kiran',1,7000);
INSERT INTO employee (empid,emp_name,dept_id,salary) values (3,'scott',1,3000);
INSERT INTO employee (empid,emp_name,dept_id,salary) values (4,'max',2,9000);
INSERT INTO employee (empid,emp_name,dept_id,salary) values (5,'jack',2,8000);
INSERT INTO employee (empid,emp_name,dept_id,salary) values (6,'king',null,6000);
INSERT INTO employee (empid,emp_name,dept_id,salary) values (7,'SCMAX',null,6000);
INSERT INTO employee (empid,emp_name,dept_id,salary) values (8,'NAGESHNG',null,6000);
INSERT INTO employee (empid,emp_name,dept_id,salary) values (9,'NAGEioSHNeaG',null,6000);
SELECT emp_name FROM employee WHERE emp_name REGEXP '^SC'; 
SELECT  emp_name FROM employee WHERE  emp_name REGEXP 'NG$';
SELECT emp_name FROM employee WHERE emp_name REGEXP 'io|ea';
SELECT emp_name FROM employee WHERE emp_name REGEXP '[s,d]';

CREATE TABLE tutorial (
id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY, 
title VARCHAR(200), 
description TEXT, 
FULLTEXT(title,description)
) ;
INSERT INTO tutorial (title,description) VALUES
('SQL Joins','An SQL JOIN clause combines rows from two or more tables. It creates a set of rows in a temporary table.'),
('SQL Equi Join','SQL EQUI JOIN performs a JOIN against equality or matching column(s) values of the associated tables. An equal sign (=) is used as comparison operator in the where clause to refer equality.'),
('SQL Left Join','The SQL LEFT JOIN, joins two tables and fetches rows based on a condition, which is matching in both the tables and the unmatched rows will also be available from the table before the JOIN clause.'),
('SQL Cross Join','The SQL CROSS JOIN produces a result set which is the number of rows in the first table multiplied by the number of rows in the second table, if no WHERE clause is used along with CROSS JOIN.'),
('SQL Full Outer Join','In SQL the FULL OUTER JOIN combines the results of both left and right outer joins and returns all (matched or unmatched) rows from the tables on both sides of the join clause.'),
('SQL Self Join','A self join is a join in which a table is joined with itself (which is also called Unary relationships), especially when the table has a FOREIGN KEY which references its own PRIMARY KEY.');

SELECT description FROM tutorial WHERE description REGEXP '[left right]';
SELECT * FROM tutorial WHERE MATCH (title,description)AGAINST('JOIN RIGHT' IN NATURAL LANGUAGE MODE); 
SELECT * FROM tutorial WHERE MATCH (title,description)AGAINST('+JOIN - RIGHT' IN BOOLEAN MODE); 




