create database Assignment1;
use Assignment1;

CREATE TABLE Member(
Member_Id int(5) primary key,
Member_Name varchar(30),
Member_address varchar(50),
Acc_Open_Date date,
Membership_type varchar(20),
Penalty_Amount int(7)
);

CREATE TABLE Books(
Book_NO int(6),
Book_Name varchar(30),
Author_Name varchar(30),
Cost int(7),
Category char(10)
);

CREATE TABLE Issue(
Lib_Issue_Id int(10),
Book_No int(6),
Member_Id int(5),
Issue_Date date,
Return_Date date
);

desc Member;
desc Books;
desc Issue;	

ALTER TABLE Member drop COLUMN Penalty_Amount;

INSERT INTO Member VALUES (1, 'Richa Sharma', 'Pune','2005-10-12','Lifetime');
INSERT INTO Member VALUES (2, 'Garishma Sen', 'Pune',CURRENT_DATE(),'Lifetime');
INSERT INTO Member VALUES (3, 'Rina saxena',  'Pune','2008-11-10','Lifetime');
INSERT INTO Member VALUES (4, 'Rahul Gandhi', 'Pune',CURRENT_DATE(),'Lifetime');
INSERT INTO Member VALUES (5, 'Raj Patil', 'Pune','2010-02-12','Lifetime');
SELECT * FROM Member;

INSERT INTO Books VALUE (101,'lET US c','Denis Ritchie',450,'System');
INSERT INTO Books VALUE (102,'Oracle complete Ref','Loni',550,'Database');
INSERT INTO Books VALUE (103,'MAstering SQL','Loni',250,'Database');
INSERT INTO Books VALUE (104,'PL DQL-Ref','ScottUrman',750,'Database');
SELECT * FROM Books;

UPDATE Books
SET Cost = 300 , Category = 'RDBMS'
WHERE Book_NO = 103;

drop table Issue;

CREATE TABLE Issue(
Lib_Issue_Id int(10),
Book_No int(6),
Member_Id int(5),
Issue_Date date,
Return_Date date
);

INSERT INTO Issue VALUES (7001, 101,1,'2006-12-06',NULL);
INSERT INTO Issue VALUES (7002, 102,2,'2006-12-25',NULL);
INSERT INTO Issue VALUES (7003, 104,1,'2006-01-06',NULL);
INSERT INTO Issue VALUES (7004, 101,1,'2006-07-04',NULL);
INSERT INTO Issue VALUES (7005, 104,2,'2006-11-06',NULL);
INSERT INTO Issue VALUES (7006, 101,3,'2006-02-06',NULL);
SELECT * FROM Issue;



