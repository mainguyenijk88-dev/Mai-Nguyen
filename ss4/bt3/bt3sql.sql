use sinhvien;
select * from sinhvien
where year (`ngaysinh`)   between 2000 and 2002;

use sinhvien;
select * from sinhvien
where `gioitinh` = 'nam';

use sinhvien;
select * from sinhvien
where `sinhvienID` in (1,4,5);

use sinhvien;
select * from sinhvien;
select `sinhvienID`,`hoten`,`ngaysinh` from `sinhvien`;


