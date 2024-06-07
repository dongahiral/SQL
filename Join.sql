use data;
 /* Create table Customers(
CustID int,
Custname varchar(30),
Contactname varchar(30),
Country varchar(30));  */

 /* Create table Orders(
OrdID int,
CustID int,
Orderdate DATE); */

/* insert into Customers VALUES(1,'Anna','Anna H','Maxico');
   insert into Customers VALUES(2,'Barko','bko','India');
   insert into Customers VALUES(3,'Darko','dko','Maxico');
   insert into Customers VALUES(4,'munnar','naar','USA');
   insert into Customers VALUES(5,'Alza','za','UK');  */

/* insert into Orders values(10308 , 2, '1996-09-18');
insert into Orders values(10309 , 55, '1996-09-19');
insert into Orders values(10310 , 77, '1996-09-20');
insert into Orders values(10311 , 35, '1996-09-21');
insert into Orders values(10312 , 95, '1996-09-22'); */

-- select * from Orders;
-- select * from Customers;

-- INNER JOIN --
/* SELECT Orders.OrdID, Customers.Custname, Orders.Orderdate
FROM Orders
INNER JOIN Customers ON Orders.CustID=Customers.CustID; */

-- OUTER JOIN --

-- LEFT JOIN --
/* SELECT Customers.Custname, Orders.OrdID
FROM Customers
LEFT JOIN Orders ON Customers.CustID = Orders.CustID
ORDER BY Customers.Custname; */

-- RIGHT JOIN --
/* SELECT Customers.Custname, Orders.OrdID
FROM Customers
RIGHT JOIN Orders ON Customers.CustID = Orders.CustID
ORDER BY Customers.Custname; */

