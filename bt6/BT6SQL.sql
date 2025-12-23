CREATE SCHEMA qlsp;
use qlsp;
 create table products(
 productID int primary key,
 productName varchar (50),
 category varchar (50),
 price decimal(10.2),
 quantity int
 );
 
 use qlsp;
 insert into products( productID, productName, category, price, quantity) values (1, 'laptop', 'techology', 15000000, 10),
 (2, 'smart phone', 'techology', 10000000, 15), (3, 'tablet', 'techology', 11000000, 12), (4, 'computer', 'techology', 25000000, 10),
 (5, 'mp3', 'techology', 5000000, 10), (6, 'laptop', 'techology', 15000000, 5), (7, 'iphone12', 'techology', 15000000, 100);
 
 use qlsp;
 insert into products( productID, productName, category, price, quantity) values (8, 'laptop', 'laptop', 15000000, 10),
 (9, 'laptop', 'laptop', 12000000, 20);
 
 use qlsp;
 select *from products
 where price between 5000000 and 15000000;
 
 delete from products;
 
 use qlsp;
 insert into products( productID, productName, category, price, quantity) values (1, 'samsung', 'techology', 15000000, 10),
 (2, 'iphone14', 'smart phone',  10000000, 15), (3, 'vio','tablet', 11000000, 12), (4, 'thinkpad','computer', 25000000, 10),
 (5, 'mp3', 'techology', 5000000, 10), (6, 'dell','laptop', 15000000, 5), (7, 'iphone12', 'smart phone',  15000000, 100);
 
 
 use qlsp;
 select * from products
 where  category = 'laptop';
 
 select *from products
 where productName like 'sam%';
 
  select *from products
 where category <> 'smart phone'; 
 
 update products
 set price = price - (price*0.05);
 
 update products
set quantity =0
 where productID = 6;
 
 delete from products
 where quantity = 0;
 
select * from products
 