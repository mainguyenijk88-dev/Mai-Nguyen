create schema qldt;
use qldt;

create table Customers(
customer_id int,
customer_name varchar (50)
);

insert into customers (customer_id, customer_name) values(1, 'nguyen van a'), (2, 'nguyen van b'),(3, 'nguyen van c'),
(4, 'nguyen van e'),(5, 'nguyen van f'),(6, 'nguyen van g'),(7, 'nguyen van d');



create table orders(
 order_id int,
order_date date,
customer_id int
);

insert into orders(order_id, order_date, customer_id) values
(1, '2025-9-30',2),(2, '2025-7-3',5),
(3, '2025-8-30',1),(4, '2025-11-30',6),
(7, '2025-7-30',3),(6, '2025-9-3',7),
(8, '2025-10-30',4);


create table Order_items(
order_id int,
customer_id int,
product_name varchar (50),
quantity int,
price decimal(10.2)
);


insert into order_items(order_id,customer_id,product_name,quantity,price) values(1, 2,'bánh ngọt', 2, 200000 ),
(3,1,'bánh mỳ', 20, 4000 ),(4,2,'bánh bông lan', 200, 2500 ),(5,3,'bánh nướng', 200, 15000 ),(6,1,'bánh trứng', 200, 2000 );

-- Hiển thị:mã đơn hàng,ngày đặt hàng,tên khách hàng

use qldt;
select o.order_id,o.order_date, c.customer_name from orders o join order_items oi on o.order_id = oi.order_id 
join customers c on oi.customer_id = c.customer_id;

-- hiển thị danh sách sp trong mỗi đơn hàng
SELECT * FROM qldt.order_items;

-- tính tổng tiền mỗi đơn hàng


select order_id, sum(price) as 'total' from order_items
group by order_id; 