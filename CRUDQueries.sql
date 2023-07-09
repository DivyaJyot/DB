CREATE database scalar_contest;
use scalar_contest;
CREATE TABLE Customers(
id INT ,
first_name varchar(10),
last_name varchar(20),
age INT);

Insert into Customers (id, first_name,last_name,age)
values (1, 'divya','jyoti', 20),
(2 , 'sneh', 'jyoti', 30),
(3, 'Saumya', 'jyoti', 90),
(4,'Ravi', 'jyoti', 40),
(5, 'Sohav', 'jyoti', 26),
(6, 'Rohan', 'jyoti', 35);

CREATE TABLE Products(
id INT,
name varchar(10),
price INT,
qty INT);

Insert into Products (id, name,price,qty)
values (10, 'tablet',20000, 1),
(20 ,'laptop',120000, 1),
(30,'mobile',8000, 1),
(40,'mouse',1000, 1),
(50,'joystick',200, 1),
(60,'tablet',20000, 1);

CREATE TABLE Orders(
id INT,
cid INT,
pid INT,
qty INT);

Insert into Orders (id, cid,pid,qty)
values (100, 1,20, 3),
(200 ,2,10,4),
(300,1,30, 1),
(400,3,10, 1),
(500,3,40, 1),
(600,3,50, 1);

!-- -----------------------------------------------------

SET sql_safe_updates=0
SELECT * FROM Customers;
DELETE c2  FROM Customers c1  JOIN Customers c2 
WHERE c1.id= c2.id AND c1.first_name = c2.first_name;

SELECT * FROM Products;
SELECT * FROM Orders;