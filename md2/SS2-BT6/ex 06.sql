CREATE SCHEMA dttm
USE dttm;
CREATE TABLE Oders(
orderID INT,
orderDate DATE,
customerID INT);

CREATE TABLE OderDetail(
OderDetailID INT,
OderID INT,
ProductID INT,
Quantity INT,
UnitPrice decimal(10.2)
);

CREATE TABLE Customers(
CustomerID INT  ,
CustomerName nvarchar (100),
email nvarchar (100),
Phone nvarchar (15)
);
ALTER TABLE Customers
CustomerID INT

USE dttm;
INSERT INTO customers (CustomerID , CustomerName, Email, Phone) VALUES (1, 'nguyen van a', 'a@gmail.com', '0123456877'),
 (2, 'le van b','b@gmail.com', '012336877'), (2, 'le van hoang', 'h@gmail.com', '012336887');

USE dttm;
DELETE FROM customers
WHERE CustomerID = 2;

USE dttm;
INSERT INTO customers (CustomerID , CustomerName, Email, Phone) VALUES (2, 'le van b','b@gmail.com', '012336877'), 
(3, 'le van hoang', 'h@gmail.com', '012336887');

USE dttm;
INSERT INTO oders (orderID, orderDate, customerID) VALUES (1, '2025-12-10', 2), (2, '2025-9-10', 1), (3, '2025-11-10', 3);

USE dttm;
INSERT INTO oderDetail (OderDetailID, OderID, ProductID, Quantity, UnitPrice) VALUES (1, 3, 2, 1, 20000), (2, 1, 2, 3, 10000), (3, 1,3, 1, 25000),
(4,2, 3, 1, 20000),(5, 3,2, 1, 10000);

USE dttm;
UPDATE customers
SET Phone = 090123456
WHERE  customerID = 1;

DELETE FROM oders
WHERE orderID = 1;

SELECT c.*,COUNT(o.orderID)  FROM customers as c 
LEFT JOIN oders as o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName, c.email, c.Phone;

CREATE TABLE Products(
ProductID int,
ProductName nvarchar(50),
Category nvarchar(50),
price decimal(10.2),
Quantity int
);
 
USE dttm;
INSERT INTO  Products(ProductID,ProductName,Category, price,Quantity) VALUES (1,'ao phong','quan ao',20000.00, 5), (2,'ao len','quan ao mua dong',50000.00, 10),
(3,'tat chan ','quan ao mua dong',10000.00, 15), (4,'ao phong nam ','quan ao nam',30000.00, 25), (5,'ao phong nu','quan ao nu',20000.00, 35);

SELECT od.OderID,od.OderDetailID, p.ProductName, od.Quantity, od.Quantity * od.UnitPrice  FROM products as p
JOIN oderdetail as od ON p.ProductID = od.ProductID
JOIN oders as o ON od.OderID = o.orderID 







