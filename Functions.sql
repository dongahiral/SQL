use data;
-- Select * from EmpInfo;

-- AND Function --
-- Select * from EmpInfo where city = 'Surat' AND Empname = 'D';

-- OR Function --
-- Select * from EmpInfo where city = 'Surat' OR Empname = 'H';

-- NOT Function --
-- select * from EmpInfo where NOT City = ' pune';

-- Limit Function --
-- SELECT * FROM EmpInfo LIMIT 3;

-- Min Function --
-- Select Min(City) from EmpInfo;

-- Max Function --
-- Select Max(City) from EmpInfo;

-- Sum Function --
-- Select sum(Salary) from EmpInfo;

-- Count Function 
-- Select count(EmpID) from EmpInfo;

-- AVG Function --
-- select avg(Salary) from EmpInfo;

-- IN Operator --
-- SELECT * FROM EmpInfo WHERE City IN ('Pune', 'Surat');

-- NOT IN Operator --
-- SELECT * FROM EmpInfo WHERE City NOT IN ('Pune', 'Surat');

-- BETWEEN Operator --
-- SELECT * FROM EmpInfo WHERE Empname BETWEEN 'A' AND 'D';

-- NOT BETWEEN Operator --
-- SELECT * FROM EmpInfo WHERE Empname NOT BETWEEN 'A' AND 'D';

-- IS NULL Function --
-- select Empname,City,Dept,Salary from EmpInfo where City IS NULL;

-- IS NOT NULL Function --
-- select Empname,City,Dept,Salary from EmpInfo where City IS NOT NULL;

-- Aliases -- 
-- SELECT EmpID AS ID FROM EmpInfo;