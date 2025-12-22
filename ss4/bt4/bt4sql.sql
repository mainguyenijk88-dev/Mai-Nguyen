use sinhvien;
insert into sinhVien (sinhvienID, hoten, ngaysinh, gioitinh, email)values (7, 'le van A', '2003-12-12', 'nam', null ),
(8, 'tran thi b', '2004-12-12','nam', null );

use sinhvien;
select * from sinhvien
where  email is null;

use sinhvien;
select * from sinhvien
where  email is not null;

use sinhvien;
select * from sinhvien
WHERE `hoten` like 'ng%';

use sinhvien;
update sinhvien
set `gioitinh` = 'nu'
where sinhvienID = 8;

use sinhvien;
select * from sinhvien
where `gioitinh`  <> 'nam';

