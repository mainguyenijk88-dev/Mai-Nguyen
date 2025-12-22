create schema sinhvien;
use sinhvien;

create table sinhVien(
sinhvienID int primary key,
hoten varchar (50),
ngaysinh date,
gioitinh varchar (10),
email varchar (50)
);

use sinhvien;
insert into sinhVien (sinhvienID, hoten, ngaysinh, gioitinh, email)values (1, 'nguyen van A', '2000-12-12', 'nam', 'a@gmail.com' ),
(2, 'nguyen van b', '2001-12-12','nam', 'b@gmail.com' ),
(3, 'nguyen thi c', '2002-12-12','nu', 'c@gmail.com' ),(4, 'nguyen van d', '2002-1-12', 'nam', 'd@gmail.com' ),
(5, 'nguyen thi e', '2000-12-11','nu', 'e@gmail.com' ); 
insert into sinhVien (sinhvienID, hoten, ngaysinh, gioitinh, email)values (6, 'nguyen van f', '2000-12-2', 'nam', null );

select * from sinhvien;

select `sinhvienID`, `hoten`, `email` from sinhvien;