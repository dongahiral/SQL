use data;
/*-------Create Table------------*/
/*  Create table EmpInfo(
EmpID int,
Empname varchar(30),
City varchar(30),
Dept varchar(55),
Email varchar(48),
Salary varchar(255));*/

/*--------Insert data in table--------------*/
 /*insert into EmpInfo VALUES(1,'A','Surat','HR','a@gmail.com',25000);
insert into EmpInfo VALUES(2,'B','Pune','Manager','b@gmail.com',35000);
insert into EmpInfo VALUES(3,'C','Vapi','Manager','c@gmail.com',45000);
insert into EmpInfo VALUES(4,'D','Surat','HR','d@gmail.com',55000);
insert into EmpInfo VALUES(5,'E','Pune','Director','e@gmail.com',72000);  /*

/*-------Show table with data---------------*/
  Select * from EmpInfo;  

/*-------Update data-----------*/
--  UPDATE EmpInfo SET Empname='H' WHERE City='Pune'; 

/*------Delete Data from table----------*/
/* Delete from EmpInfo where EmpID = 1;  - using delete 1 row */
/* Delete from EmpInfo where EmpID in(1,2) - using delete more row

/*----------truncate--------*/
/* truncate table EmpInfo; */

/*--------Drop table---------*/
/* DROP TABLE EmpInfo; */

/*----------Smallest value of the selected column--------*/
/* Select min(Salary) from EmpInfo; */

/*---------Find Salary where Dept = HR----------*/
/* Select Salary from EmpInfo where Dept = 'HR'; */

/*-------Calculate odd & even records from a table---------*/
/* Select * from EmpInfo where MOD(EmpID,2) = 0; - even number */
/* Select * from EmpInfo where MOD(EmpID,2) = 1; - odd number */

/*-------find distinct values--------*/
/* Select distinct(Dept) from EmpInfo; */

/*--------Assending & Descending order------*/
/* Select * from EmpInfo ORDER BY Empname; - Assending */
/* Select * from EmpInfo ORDER BY Empname DESC; - Descending */