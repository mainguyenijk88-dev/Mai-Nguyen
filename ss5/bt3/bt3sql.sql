CREATE SCHEMA pdmn;
use pdmn;
 create table products(
 productID int primary key,
 productName varchar (50),
 category varchar (50),
 price decimal(10.2),
 quantity int
 );
 
insert into products( productID, productName, category, price, quantity) values 
(1, 'samsung', 'techology', 15000000, 10),
 (2, 'iphone14', 'smart phone',  10000000, 15), 
 (3, 'vio','tablet', 11000000, 12), 
 (4, 'thinkpad','computer', 25000000, 10),
 (5, 'mp3', 'techology', 5000000, 10), 
 (6, 'dell','laptop', 15000000, 5), 
 (7, 'iphone12', 'smart phone',  15000000, 100),
(8, 'soni', 'mp3', 15000000, 10),
 (9, 'iphone13', 'smart phone',  10000000, 15), 
 (10, 'vio','tablet', 11000000, 12), 
 (11, 'macbook','computer', 25000000, 10),
 (12, 'mp3', 'techology', 5000000, 10),
 (13, 'dell','laptop', 15000000, 5),
 (14, 'iphone12', 'smart phone',  15000000, 100);

--hiển thị các sp có giá cao hơn trung bình của tất cả sản phẩm
SELECT productID, productName, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

SELECT category, productName, price
FROM products
WHERE (category, price) IN (
    SELECT category, MAX(price)
    FROM products
    GROUP BY category
);

SELECT category, productName, price
FROM products
WHERE (category, price) IN (
    SELECT category, MAX(price)
    FROM products
    GROUP BY category
);

SELECT DISTINCT category
FROM products
GROUP BY category
HAVING MAX(price) > 20000000;

