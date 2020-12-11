use assignment;
Create table EMP ( EMPNO numeric(4) not null, ENAME varchar(30) not null, JOB varchar(10), MGR numeric(4), 
HIREDATE date, SAL numeric(7,2), DEPTNO numeric(2) ); 
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO ) values(1000,  'Manish' , 'SALESMAN', 1003,
  '2020-02-18', 600,  30) ;
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1001,  'Manoj' , 'SALESMAN', 1003,
  '2018-02-18', 600,  30) ;
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) values(1002 , 'Ashish', 'SALESMAN',1003 ,
  '2013-02-18',  750,  30 );
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO ) values(1004,  'Rekha', 'ANALYST', 1006 , 
  '2001-02-18', 3000,  10);
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO) values(1005 , 'Sachin', 'ANALYST', 1006 , 
  '2019-02-18', 3000, 10 );
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO ) values(1006,  'Pooja',  'MANAGER'  ,  
  null    , '2000-02-18' ,6000, 10 );
  
Create table dept (dno numeric(4) not null, dname varchar(10) not null,area varchar(30));
Insert into dept(dno,dname,area) values(10,'Store','Mumbai');
Insert into dept(dno,dname,area) values(20,'Purchase','Mumbai');
Insert into dept(dno,dname,area) values(30,'Store', 'Delhi');
Insert into dept(dno,dname,area) values(40,'Marketing','Pune');
Insert into dept(dno,dname,area) values(50,'Finance','Delhi');
Insert into dept(dno,dname,area) values(60,'Accounts','Mumbai');

delimiter $$
create procedure Que01(in val1 int, in val2 int)
Begin 
select val1+val2;
select val1*val2;
select val1-val2;
select val1/val2;
end;$$
call Que01(20,10);
drop procedure Que01;





delimiter $$
create procedure Que02(inout str varchar(10))
begin
set str=(select reverse(str));
end $$

set	@str='databse';
select @str;
call Que02(@str);
select @str as rev;
-- drop procedure Que02;




delimeter $$
create procedure Que03()
begin
select empno,ename,sal from emp order by sal desc limit 5;
end$$



delimiter $$
create procedure Que04()
begin
create table emp_test(e_id integer ,e_name varchar(20),e_joining_date date);
end $$
call Que04;



delimiter $$
create procedure Que05()
begin
insert into dept(deptno,dname,area) values (60,'education','pune');
end $$

select * from dept;


delimiter $$
create procedure Que06(in value int,out sqr int,out cu int)
begin
declare val1 int;
set sqr= power(val1,2);
set cu= power(val1,3);
end $$

call Que06(2,@sqr,@cu);
select @sqr;
select @cu;

-- drop procedure Que06;



delimiter $$
CREATE PROCEDURE Que07(OUT ANS INT)
BEGIN
DECLARE NUM int;
SET NUM=2;
SELECT NUM  INTO ANS ;
END $$

CALL Que07(@ANS);
SELECT @ANS;


delimiter $$
create procedure Que08(in x int, out str varchar (50))
begin
select concat(e.ename , 'is from', d.dname) into str from emp e inner join dept d on d.dno=e.deptno where e.deptno=x and e.empno=1004;
end $$  
call Que08(10,@str);
select @str;
