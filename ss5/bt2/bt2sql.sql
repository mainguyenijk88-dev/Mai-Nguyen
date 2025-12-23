create schema qlnv;
use qlnv;

create table employees (
    emp_id int primary key,            -- Khóa chính: ID nhân viên
    full_name varchar(100),            -- Họ và tên nhân viên
    department varchar(50),            -- Phòng ban
    salary decimal(10, 2)              -- Lương (2 chữ số thập phân)
);

insert into employees (emp_id, full_name, department, salary) values
(1, 'Nguyễn Văn A', 'HR', 12000000),
(2, 'Trần Thị B', 'IT', 18000000),
(3, 'Lê Minh C', 'Dev', 15000000),
(4, 'Phạm Quỳnh D', 'HR', 13000000),
(5, 'Đặng Thị E', 'IT', 20000000),
(6, 'Vũ Hữu F', 'Dev', 22000000),
(7, 'Bùi Lan G', 'HR', 11000000),
(8, 'Ngô Hồng H', 'IT', 21000000),
(9, 'Hoàng Thùy I', 'Dev', 25000000),
(10, 'Phan Quang J', 'HR', 11500000),
(11, 'Trần Thị K', 'IT', 16000000),
(12, 'Lê Minh L', 'Dev', 24000000),
(13, 'Vũ Quang M', 'HR', 12500000),
(14, 'Bùi Lan N', 'IT', 19000000),
(15, 'Nguyễn Thị O', 'Dev', 23000000),
(16, 'Phan Quang P', 'HR', 13500000),
(17, 'Trần Thị Q', 'IT', 17500000),
(18, 'Lê Minh R', 'Dev', 18000000),
(19, 'Bùi Lan S', 'HR', 14000000),
(20, 'Ngô Hồng T', 'IT', 16500000);

select 
    department as 'Phòng ban',
    count(emp_id) as 'Số lượng nhân viên',
    avg(salary) as 'Mức lương trung bình'
from employees
group by department;

select 
    department as 'Phòng ban',
    count(emp_id) as 'Số lượng nhân viên'
from employees
group by department
having count(emp_id) > 6;

select 
    department as 'Phòng ban',
    avg(salary) as 'Mức lương trung bình'
from employees
group by department
having avg(salary) > 12000000;
