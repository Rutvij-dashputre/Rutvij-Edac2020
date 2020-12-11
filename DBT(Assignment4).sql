show databases;
use assignment;

show tables;
select * from emp;
select * from dept;
select ename ,dname from emp inner join dept on emp.deptno = dept.dno ;
select * from emp inner join dept on emp.deptno=dept.dno;
select deptno , sum(sal) from emp group by deptno;
select ename ,dname from emp right outer join dept on emp.deptno = dept.dno ;
select ename ,dname from emp right outer join dept on emp.deptno = dept.dno ;
select ename ,dname from emp inner join dept on emp.deptno = dept.dno;
 create table emp1 (emp_no int(3), emp_name varchar(3));
  insert into emp1 values(1,'A');
  insert into emp1 values(2,'B');
   insert into emp1 values(3,'C');
   create table emp2(emp_no int(4), emp_name varchar(4));
   insert into emp2 values(1,'A');
   insert into emp2 values(2,'B');
   insert into emp2 values(4,'D');
   insert into emp2 values(5,'E');
   select * from emp1 union select * from emp2;
   create table Department (
				dept_id int ,
                dept_name varchar(50),
                primary key (dept_id)
);
insert into department values (1	,	"Finance");
insert into department values (2	,	"Training");
insert into department values (3	,   "Marketing");
create table employee(
				empid int(10)	,
                emp_name varchar(20),
                dept_id	int(10) ,
                salary	float,
                manager varchar(30) ,
                constraint dept_id_fk foreign key (dept_id) references department (dept_id)
);
insert into employee values(1 ,	"Arun"	,	1	,	8000	, 4);
insert into employee values(2 ,	"kiran"	,	1	,	7000	, 1);
insert into employee values(3	,"Scott",	1   ,	3000	, 1);
insert into employee values(4	,"Max"	,	2	,   9000	, null);
insert into employee values(5	,"Jack"	,	2	,   8000    , 4);
insert into employee values(6	,"King"	, null  ,   6000    ,  1);

   select * from employee where salary= (select salary from employee where emp_name='arun' 
);

 select * from employee where dept_id= (select dept_id from employee where emp_name='jack' 
);
select emp_name from employee order by salary limit 1 ;


update  employee set salary =15000 where dept_id=(select dept_id where emp_name= 'Max');
  