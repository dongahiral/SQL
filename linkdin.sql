use data;
create table EmployeeDetail(
EmpID int,
Firstname varchar(50),
Lastname varchar(50),
Salary varchar(50),
Joinigdate datetime,
Department varchar(50),
Gender varchar(30));

drop table EmployeeDetail;

insert into EmployeeDetail values 
(1,'Vikas','Ahlawalt',600000.00,'2013-02-15 11:16:28.290','IT','Male'),
(2,'Nikita','Jain',530000.00,'2014-01-09 17:31:07.793','HR','FeMale'),
(3,'Ashish','Kumar',100000.00,'2014-01-09 10:05:07.793','IT','Male'),
(4,'Nikhil','Sharma',480000.00,'2014-01-09 09:00:07.793','HR','Male'),
(5,'Anish','Kadian',500000.00,'2014-01-09 09:31:07.793','Payroll','Male');

-- To get all employee details from  the table
select * from EmployeeDetail;

-- get only firstname column from the table
select Firstname from EmployeeDetail;

-- get firstname in uppercase as First Name
select upper(Firstname)from EmployeeDetail; 

-- get first name in lower case 
select lower(Firstname) from EmployeeDetail;

-- combine first and last name with include space 
select concat(Firstname,'  ',Lastname)as Name from EmployeeDetail;

-- dispaly emp details whose name is vikas
select * from EmployeeDetail where Firstname = 'Vikas';

-- first name start with letter a
select * from EmployeeDetail where Firstname like 'a%';
select * from EmployeeDetail where Firstname like '%a%';

-- first name contains k
select * from EmployeeDetail where Firstname like '%k%';

-- first name end with h
select * from EmployeeDetail where Firstname like '%h';

-- first name start with any single character between a-p
select * from EmployeeDetail where Firstname like '[a-p]%';

-- first name not start with any single character between a-p
select * from EmployeeDetail where Firstname like '[^a-p]%';

-- whose gender end with le and contain 4 letter. 
select * from EmployeeDetail where Gender like '__le'; 

-- first name start with a and contains 5 letter
select * from EmployeeDetail where Firstname like 'A____';

-- get all data whose first name containing % 
select * from EmployeeDetail where Firstname like '%[%]%';

-- get all unique department from the table
select distinct(Department) from EmployeeDetail;

-- highest salary from the table
select max(Salary) from EmployeeDetail;

-- lowest salary from table
select min(Salary) from EmployeeDetail;

-- convert date in this fromat - 15 Feb 2013
select convert(VARCHAR(20),Joinigdate,106) from EmployeeDetail;

-- convert date in this fromat - 2013/02/15
select convert(VARCHAR(20),Joinigdate,111) from EmployeeDetail;

-- show only time part of joining data
select convert(VARCHAR(20),Joiningdate,108) from EmployeeDetail;

-- get only year part of joining date 
use data;
select YEAR(Joinigdate) from EmployeeDetail;
select MONTH(Joinigdate) from EmployeeDetail; -- for month 

-- get system date
select sysdate();

-- get UTC date
select GETUTCDATE();

-- get the firstnm , current date , joining date and diff between current and join date in month
select Firstname , sysdate() AS CurrentDate,Joinigdate, TIMESTAMPDIFF(MONTH,Joinigdate,sysdate()) AS TotalMonths from EmployeeDetail;

-- get the firstnm , current date , joining date and diff between current and join date in days
select Firstname , sysdate() AS CurrentDate,Joinigdate , datediff(sysdate(),Joinigdate) AS TotalMonths from EmployeeDetail;

-- get all emp whose joining year is 2013
select * from EmployeeDetail where DATEPART(YYYY,Joinigdate)='2013';

-- get all emp whose joining month is january
select * from EmployeeDetail where DATEPART(MM,Joinigdate)='1';

-- get all emp whose joining date between 2013-01-01 and 2013-12-01
select * from EmployeeDetail where Joinigdate between '2013-01-01' and '2013-12-01';

-- get how many emp exist in table 
select count(*) from EmployeeDetail;

-- only one/top record from the table
select *  from EmployeeDetail limit 1;

-- first name vikas , ashish , nikhil
select * from EmployeeDetail where Firstname in('Vikas','Ashish','Nikhil');

-- first name not in  vikas , ashish , nikhil
select * from EmployeeDetail where Firstname not in ('Vikas','Ashish','Nikhil');

-- first name from table after removing white space from the right side
select rtrim(Firstname) as FirstName from EmployeeDetail;

-- -- first name from table after removing white space from the left side
select ltrim(Firstname) as FirstName from EmployeeDetail;

-- dispaly first name and gender as M/F 
select Firstname , case when Gender = 'Male' then 'M' 
when Gender = 'Female' then 'F' end as Gender from EmployeeDetail;

-- first name from table prifixed with hello
select 'Hello'+ Firstname from EmployeeDetail;

-- whose salary greater than 600000
select * from EmployeeDetail where Salary > 600000;

-- whose salary less than 700000
select * from EmployeeDetail where Salary < 500000;

-- whose salary betwwn 500000 to 600000
select * from EmployeeDetail where Salary between 500000 and 600000;

-- 2nd highest salary 
select max(Salary) from EmployeeDetail where Salary <(select Max(Salary) from EmployeeDetail);

-- get dept & dept wise total salary from the table
select Department , SUM(Salary) as TotalSalary from EmployeeDetail group by Department;

-- get dept & dept wise total salary from the table and display in ascending order
select Department , sum(Salary) as TotalSalary from EmployeeDetail group by Department order by Sum(Salary) ASC;

-- get dept & dept wise total salary from the table and display in descending order
select Department , sum(Salary) as TotalSalary from EmployeeDetail group by Department order by Sum(Salary) DESC;

-- get dept, total no of dept, total salary from table
select Department , Count(*) as Deptcount,SUM(Salary) as Total from EmployeeDetail group by Department;

-- get dept wise avg salary from table order by salary asc
select Department, avg(Salary) as AvgSalary from EmployeeDetail group by Department order by sum(Salary) ASC;

-- get dept wise maximum salary from table order by asc
select Department , max(Salary) as MaxSalary from EmployeeDetail group by Department order by sum(Salary) ASC;

-- get dept wise minimum salary from table order by asc
select Department, min(Salary) as MinSalary from EmployeeDetail group by Department order by sum(Salary) ASC;

-- create new table 
create table ProjectDetail(
ProjectDetailID int,
EmployeeDetailID int,
ProjectName varchar(50));

insert into ProjectDetail values (1,1,'Task Track'),(2,1,'CLP'),(3,1,'Survey Management'),(4,2,'HR Managment'),(5,3,'Task Track'),
(6,3,'GRS'),(7,3,'DDS'),(8,4,'HR Managment'),(9,6,'GL Managment');

select * from ProjectDetail;

-- fetch project name assign to more than one employee
select ProjectName, count(*) as noofEmp from ProjectDetail group by ProjectName having count(*)>1;

-- inner join 
select Firstname , ProjectName from EmployeeDetail inner join ProjectDetail on EmployeeDetail.EmpID=ProjectDetail.EmployeeDetailID 
order by Firstname;

-- left outer join
select Firstname, ProjectName from EmployeeDetail left outer join ProjectDetail on EmployeeDetail.EmpID=ProjectDetail.EmployeeDetailID
order by Firstname;

-- get firstname,projectname from table , of project is not assign then display - No Projefct Assigned
select Firstname,isnull(ProjectName,'-No Project Assigned') from EmployeeDetail left outer join ProjectDetail on 
EmployeeDetail.EmpID=ProjectDetail.EmployeeDetailID order by Firstname;

-- get all name they have not matching any emp in left tbl 
select Firstname, ProjectName From EmployeeDetail right outer join ProjectDetail on 
EmployeeDetail.EmpID=ProjectDetail.EmployeeDetailID order by Firstname;

-- get all record from both table 
select Firstname,ProjectName from EmployeeDetail Full outer join ProjectDetail on 
EmployeeDetail.EmpID=ProjectDetail.EmployeeDetailID order by Firstname;

-- find emp who has not assigned any project
select Firstname,isnull(ProjectName,'-No Project Assigned') As PName from EmployeeDetail left outer join ProjectDetail
on EmployeeDetail.EmpID=ProjectDetail.EmployeeDetailID where ProjectName is null;

-- find project name which is not assigned to any emp
select ProjectName from EmployeeDetail right outer join ProjectDetail on
EmployeeDetail.EmpID=ProjectDetail.EmployeeDetailID where Firstname is null;

-- fetch empname & project who has assign more than one project 
select EmpID,Firstname,ProjectName from EmployeeDetail inner join ProjectDetail on 
EmployeeDetail.EmpID=ProjectDetail.EmployeeDetailID 
where EmpID in(select EmployeeDetailID from ProjectDetail group by EmployeeDetailID having count(*)>1);

-- fetch projectname on which more than one emp are working along with empname
select ProjectName,Firstname from ProjectDetail inner join EmployeeDetail on 
ProjectDetail.EmployeeDetailID = EmployeeDetail.EmpID where ProjectName in 
(select ProjectName from ProjectDetail group by ProjectName having count(1)>1);

-- first letter upper case and other lower case 
use data;
select upper(SUBSTRING(Firstname,1,1))+lower(SUBSTRING(Firstname,2,LEN(Firstname)-1))as FName;

use data;
select Count(*) from EmployeeDetail;
select Count(1) from EmployeeDetail;