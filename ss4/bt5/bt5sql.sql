create schema employees;
use employees;

create table employee(
ID int,
fullname varchar(50),
dob date,
department varchar (50),
salary double,
phone int
);

use employees;
insert into employee (id, fullname,dob, department, salary, phone) values (1, 'nguyen minh', '2000-1-31', 'IT', 10.000000, 0123446673),
(2, 'nguyen van anh', '1990-1-31', 'IT', 15.000000, 0123446473),(3, 'nguyen van hanh', '2000-5-31', 'hr', 11.000000, 0123411673),
(4, 'nguyen van an', '2001-1-31', 'hr', 10.000000, 0923446673),(5, 'dao van anh', '1985-1-30', 'IT', 20.000000, 0123426673),
(6, 'tran van anh', '2000-11-30', 'hr', 10.000000, 0123846673),(7, 'mai van anh', '2001-1-3', 'IT', 17.000000, 0123336673),
(8, 'le van anh', '1989-1-1', 'IT', 10.000000, 0123746673),(9, 'nguyen mai' , '1990-1-31', 'IT', 15.000000, 0123126673),
(10, 'nguyen thi anh', '1992-1-31', 'hr', 10.000000, 0125446673),(11, 'phi  van anh', '1988-1-31', 'IT', 12.000000, 0122246673);

use employees;
select * from employee
where `salary` between 15 and 20;

use employees;
select * from employee
where `department`= 'IT';	

use employees;
select * from employee
where `department`= 'hr';

use employees;
select * from employee
where `fullname` like '%anh';

use employees;
insert into employee (id, fullname,dob, department, salary, phone) values (12, 'nguyen minh tu', '1991-1-1', 'IT', 12.000000, null);

use employees;
select * from employee
where `phone` is null;

use employees;
update employee
set phone = 090123456
where id = 12;

use employees;
delete from employee
where `salary` <11;

use employees;
update employee
set salary = `salary`*1.1;
