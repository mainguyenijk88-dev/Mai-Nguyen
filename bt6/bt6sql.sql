create schema htbh;
use htbh;

create table customers(
customer_id int,
customer_name varchar(50)
);
-- Chèn dữ liệu vào bảng customers
INSERT INTO customers (customer_id, customer_name)
VALUES 
(1, 'Nguyen Anh Tu'),
(2, 'Pham Minh Tu'),
(3, 'Tran Thanh Son'),
(4, 'Le Thu Hang'),
(5, 'Ngo Minh Tuan'),
(6, 'Vu Hoang Nam');

create table orders(
order_id int,
order_date date,
customer_id int
);

-- Chèn dữ liệu vào bảng orders
INSERT INTO orders (order_id, order_date, customer_id)
VALUES
(1, '2025-10-01', 2),
(2, '2025-10-05', 1),
(3, '2025-10-06', 3),
(4, '2025-10-07', 4),
(5, '2025-10-10', 6),
(6, '2025-10-12', 5),
(7, '2025-10-15', 6),
(8, '2025-10-18', 5),
(9, '2025-10-20', 3),
(10, '2025-10-22', 4),
(11, '2025-10-25', 5),
(12, '2025-10-30', 6);

create table order_items(
Order_id int,
Customer_id int,
product_name varchar(50),
price decimal(10.2),
quantity int,
total decimal(10.2)
);

-- Chèn dữ liệu vào bảng order_items
INSERT INTO order_items (Order_id, Customer_id, product_name, price, quantity, total)
VALUES
-- Đơn hàng 1 (Khách hàng 2)
(1, 2, 'Laptop', 15000000, 1, 15000000),
(1, 2, 'Điện thoại', 5000000, 1, 5000000),

-- Đơn hàng 2 (Khách hàng 1)
(2, 1, 'Máy tính', 25000000, 1, 25000000),

-- Đơn hàng 3 (Khách hàng 3)
(3, 3, 'Tablet', 7000000, 2, 14000000),
(3, 3, 'Điều hòa', 15000000, 1, 15000000),

-- Đơn hàng 4 (Khách hàng 4)
(4, 4, 'Điện thoại', 10000000, 1, 10000000),
(4, 4, 'Nồi cơm điện', 3000000, 2, 6000000),

-- Đơn hàng 5 (Khách hàng 6)
(5, 6, 'Điều hòa', 12000000, 2, 24000000),
(5, 6, 'Nồi cơm điện', 3000000, 1, 3000000),

-- Đơn hàng 6 (Khách hàng 5)
(6, 5, 'Máy tính', 18000000, 1, 18000000),
(6, 5, 'Laptop', 12000000, 1, 12000000),

-- Đơn hàng 7 (Khách hàng 6)
(7, 6, 'Điện thoại', 5000000, 1, 5000000),

-- Đơn hàng 8 (Khách hàng 5)
(8, 5, 'Điều hòa', 15000000, 1, 15000000),

-- Đơn hàng 9 (Khách hàng 3)
(9, 3, 'Điện thoại', 8000000, 1, 8000000),
(9, 3, 'Tablet', 7000000, 1, 7000000),

-- Đơn hàng 10 (Khách hàng 4)
(10, 4, 'Máy tính', 20000000, 1, 20000000),

-- Đơn hàng 11 (Khách hàng 5)
(11, 5, 'Điện thoại', 5000000, 2, 10000000),

-- Đơn hàng 12 (Khách hàng 6)
(12, 6, 'Laptop', 15000000, 1, 15000000);

-- Hiển thị:mã đơn hàng,tên khách hàng,tổng tiền của đơn hàng

SELECT 
    o.order_id, 
    c.customer_name, 
    SUM(oi.total) AS total_amount
FROM 
    orders o
LEFT JOIN 
    customers c ON o.customer_id = c.customer_id
LEFT JOIN 
    order_items oi ON o.order_id = oi.order_id
GROUP BY 
    o.order_id, c.customer_name;
    
-- Tính: tổng doanh thu của mỗi khách hàng

SELECT 
    c.customer_name, 
    SUM(oi.total) AS total_revenue
FROM 
    customers c
LEFT JOIN 
    orders o ON c.customer_id = o.customer_id
LEFT JOIN 
    order_items oi ON o.order_id = oi.order_id
GROUP BY 
    c.customer_name;
    
    -- Chỉ hiển thị: các khách hàng có tổng doanh thu lớn hơn 25.000.000

SELECT 
    c.customer_name, 
    SUM(oi.total) AS total_revenue
FROM 
    customers c
LEFT JOIN 
    orders o ON c.customer_id = o.customer_id
LEFT JOIN 
    order_items oi ON o.order_id = oi.order_id
GROUP BY 
    c.customer_name
HAVING 
    SUM(oi.total) > 25000000;

-- Hiển thị: khách hàng có doanh thu cao nhất

SELECT 
    c.customer_name, 
    SUM(oi.total) AS total_revenue
FROM 
    customers c
LEFT JOIN 
    orders o ON c.customer_id = o.customer_id
LEFT JOIN 
    order_items oi ON o.order_id = oi.order_id
GROUP BY 
    c.customer_name
ORDER BY 
    total_revenue DESC
LIMIT 1;
