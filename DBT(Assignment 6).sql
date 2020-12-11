create database assignment6;
use assignment6;




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
CREATE FUNCTION FACTORIAL(VAR1 INT) RETURNS INT
BEGIN
DECLARE F1 INT;
SET F1=1;
IF(VAR1 < 0) THEN RETURN 0;
ELSEIF (VAR1 = 1) THEN RETURN 1;
ELSE
WHILE VAR1 <> 0 DO 
SET F1=F1*VAR1;
SET VAR1 = VAR1 - 1;
END WHILE;
END IF;
RETURN F1;
END  $$
SELECT FACTORIAL(5);


DELIMITER $$
CREATE FUNCTION PRIME1(VAR1 INT) RETURNS CHAR(50)
BEGIN
IF(VAR1 = 0 OR VAR1 = 1) THEN RETURN CONCAT(VAR1,' IS ',' NOT A PRIME') ;
ELSEIF (VAR1 % 1 = 0 AND VAR1 % VAR1 = 0) THEN RETURN CONCAT(VAR1,' IS',' IT IS A PRIME NUJMBER');
END IF;
END $$
SELECT PRIME1(3);

DELIMITER $$
CREATE FUNCTION CONVERT_1(VAR1 INT ) RETURNS VARCHAR(500)
BEGIN
DECLARE NUM1 INT;
DECLARE NUM2 INT;
DECLARE TEMP INT;
SET NUM1= VAR1/36;
SET TEMP = VAR1 % 36;
SET NUM2 = TEMP / 12;
SET TEMP = TEMP % 12;
RETURN CONCAT(NUM1, ' YARD ',NUM2,' FOOT ' ,TEMP,' INCHES ' );
END $$
SELECT CONVERT_1(124);


delimiter $$
create function Que04(dept int) returns varchar(20)
begin
update emp set sal=sal+(sal*0.10) where deptno=dept;
return 'UPDATED';
end;$$

SELECT QUE04(30);

delimiter $$
 create function Que05(empn int ,comp int ) returns int
 begin
 declare val int;
 set val=(select sal from emp where empno=empn);
 return (val+comp)*12;
 end;$$
 select Que05(1004,20) as 'updated salary';
 
 
 delimiter $$
create function User_ANNUAL_COMP(p_eno int)returns int
begin
declare annual_compensation int;
declare P_comm int;
declare P_sal int;
set p_sal=(select sal from emp where p_eno=empno);
set p_comm=0.10*p_sal;
set annual_compensation=(p_sal+p_comm)*12;
return annual_compensation;
end $$
select User_ANNUAL_COMP(1000);

delimiter $$
CREATE PROCEDURE USER_QUERY_EMP  (IN P_ENO INT, OUT P_JOB VARCHAR(10), OUT P_SAL INT3 ) 
BEGIN
DECLARE NO INT;
SET NO = (SELECT COUNT(*) FROM EMP WHERE EMPNO=P_ENO);
IF NO=0 THEN 
SELECT 'employee not exists';
SET P_JOB='';
SET P_SAL=0;
ELSE 
SELECT SAL,JOB INTO P_SAL,P_JOB FROM EMP WHERE EMPNO=P_ENO;
END IF;
END$$

CALL USER_QUERY_EMP(1004,@JOB,@SAL);
SELECT @JOB,@SAL

 delimiter $$
 create procedure Que007(inout str varchar(200))
 begin
	if (str='' || isnull(str))  then
	set str= 'no string fount';
    else
    set str= (select reverse(str));
    end if;
 end $$
-- drop procedure que007;
set @str1=null;
call Que007(@str1);
select @str1;

delimiter $$
create procedure Que008()
begin
show databases;
end;$$

call Que008();




































