
CREATE SCHEMA odr;
USE odr;
CREATE TABLE Customer(
CustomerID INT ,
CustomerName VARCHAR (50),
Customerphone Int,
CustomerAdress VARCHAR (250)
);


CREATE TABLE Orders (
 orderID INT PRIMARY KEY,
 orderDate DATE NOT NULL, 
 customerID INT NOT NULL references customer(customerID),
 totalAmount INT NOT NULL CHECK(totalAmount >0)
 );
 
 DROP TABLE Orders;
 


Tạo bảng Orders với OrderID là khóa chính và CustomerID là khóa ngoại tham chiếu đến bảng Customers (giả định bảng Customers đã tồn tại).
Thêm ràng buộc CHECK để đảm bảo TotalAmount không âm.