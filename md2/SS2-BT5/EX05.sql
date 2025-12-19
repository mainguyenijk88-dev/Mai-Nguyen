CREATE SCHEMA qlbh;

USE qlbh;

CREATE TABLE Products ( 
ProductID INT,
ProductName nVARCHAR (100),
Category  nVARCHAR (50),
Price decimal (10,2),
StockQuantity int
);

USE qlbh;
INSERT INTO Products (`ProductID`,`ProductName`,`Category`, `Price`, `StockQuantity`) VALUES(1, 'T-shirt,', 't-shirt nam', 20000.00,12 ), 
(2, 'jean', 'jean nu', 50000.00,6), (3, 'cap', 'hat', 10000.00,23)



ALTER TABLE Products
MODIFY COLUMN Price decimal (10,2),
MODIFY COLUMN ProductName nVARCHAR (100),
MODIFY COLUMN nVARCHAR (50);

CREATE TABLE orders ( 
 orderID int,
  orderDate Date,
  ProductID int,
  Quantity int,
  totalAmount decimal (10,2)
  );
  
  USE qlbh;
INSERT INTO orders ( orderID, orderDate, ProductID, Quantity,totalAmount) VALUES(1, '2025-12-12', 3, 2, 30000.00), (2, '2025-10-12', 1, 1, 50000.00);

USE qlbh;
UPDATE products
SET Price  = 25000
WHERE ProductID = 1;

UPDATE products
SET Price = 15000
WHERE ProductID = 3;

UPDATE products
SET ProductName = 'T-shirt'
WHERE ProductID = 1;

UPDATE products
SET Price  = 55000
WHERE ProductID = 2;

USE qlbh;
UPDATE orders
SET totalAmount = 55000
WHERE orderID = 2;

USE qlbh;
SELECT * FROM products

USE qlbh;
SELECT * FROM orders

