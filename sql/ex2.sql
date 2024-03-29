create table Customers(CID int primary key, Name varchar(40),
Gender varchar(5), Age int, Salary int);
create table Orders(ID int primary key, Order_No int, CID int);
create table OrderInfo(Order_No int, Price int);
insert into Customers values(1, 'Jimmy', 'F', 45, 600000);
insert into Customers values(2, 'Pan', 'M', 30, 40000);
insert into Customers values(3, 'Cindy', 'F', 18, 35000);
insert into Customers values(4, 'Joe', 'M', 26, 80000);
insert into Customers values(5, 'Peter', 'M', 26, 45000);
insert into Customers values(6, 'Yuki', 'F', 22, 30000);
insert into Customers values(7, 'Joe', 'M', 50, 42000);
insert into Customers values(8, 'Adam', 'M', 30, 37000);
insert into Customers values(9, 'Lopi', 'F', 28, 60000);
insert into Orders values(1, 7520, 3);
insert into Orders values(2, 3212, 3);
insert into Orders values(3, 2572, 7);
insert into Orders values(4, 7375, 6);
insert into Orders values(5, 7840, 2);
insert into Orders values(6, 1054, 2);
insert into Orders values(7, 8254, 8);
insert into OrderInfo values(1054, 5000);
insert into OrderInfo values(1257, 1000);
insert into OrderInfo values(2572, 500);
insert into OrderInfo values(3212, 4000);
insert into OrderInfo values(7375, 7000);
insert into OrderInfo values(7520, 3200);
insert into OrderInfo values(7840, 2500);
insert into OrderInfo values(8254, 20000);

select * from Customers;
select Customers.Name from Customers;
select C.* from Customers AS C;
select C.CID, C.Name from Customers AS C;

select * from Customers where CID > 6;
select * from Customers where CID > 6 OR Salary >50000;
select * from Customers where CID > 6 AND Salary >50000;

select * from Customers, Orders;
select C.CID, C.Name, O.ID from Customers AS C, Orders AS O;

select C.*, O.* from Customers AS C, Orders AS O WHERE C.CID = O.CID;
select C.*, O.* from Customers AS C, Orders AS O WHERE C.CID <> O.CID;

select C.*, O.* from Customers AS C, Orders AS O WHERE C.CID = O.CID AND C.Salary > 35000;
select C.*, O.* from Customers AS C, Orders AS O WHERE C.CID = O.CID AND 35000 < C.Salary;

select count(c.Name) from Customers AS c, Orders AS o WHERE C.CID = O.CID AND 35000 < C.Salary;
select sum(Customers.Salary) from Customers AS c, Orders AS o WHERE C.CID = O.CID AND 35000 < C.Salary;
