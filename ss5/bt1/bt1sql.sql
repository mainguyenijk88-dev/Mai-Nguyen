create schema qlhs;
use qlhs;

create table students(
studentID int primary key,
fullName varchar (50),
dob date,
gender varchar(10),
score decimal(10.2)
);

insert into students (studentID, fullName, dob, gender, score) values
(1, 'Nguyễn Văn A', '2001-05-12', 'Nam', 8.5),
(2, 'Trần Thị B', '2002-07-22', 'Nữ', 9.1),
(3, 'Lê Minh C', '2000-11-15', 'Nam', 7.3),
(4, 'Phạm Quỳnh D', '2001-02-09', 'Nữ', 8.0),
(5, 'Đặng Thị E', '2003-04-10', 'Nữ', 6.9),
(6, 'Vũ Hữu F', '2002-06-30', 'Nam', 7.8),
(7, 'Bùi Lan G', '2000-09-05', 'Nữ', 8.2),
(8, 'Ngô Hồng H', '2001-01-17', 'Nam', 7.5),
(9, 'Hoàng Thùy I', '2003-03-25', 'Nữ', 9.0),
(10, 'Phan Quang J', '2000-12-20', 'Nam', 8.6);


SELECT 
    studentID, UPPER(fullName)
FROM
    students;
    
select 
    fullName as 'Họ tên',
    year(curdate()) - year(dob) as 'Số tuổi'
from students;

select 
    round(avg(score), 1) as 'Điểm trung bình'
from students;

select 
    count(studentID) as 'Tổng số sinh viên',
    max(score) as 'Điểm cao nhất',
    min(score) as 'Điểm thấp nhất'
from students;
