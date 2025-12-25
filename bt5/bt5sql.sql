CREATE SCHEMA kqht;
use kqht;

create table scores(
student_id int,
subject_name varchar(50),
score int
);

insert into scores (student_id, subject_name, score) values
-- Sinh viên 1
(1, 'Toán', 8.5),
(1, 'Văn', 7.8),
(1, 'Ngoại ngữ', 9.0),

-- Sinh viên 2
(2, 'Toán', 6.5),
(2, 'Văn', 7.0),
(2, 'Ngoại ngữ', 6.8),

-- Sinh viên 3
(3, 'Toán', 9.0),
(3, 'Văn', 8.5),
(3, 'Ngoại ngữ', 8.8),

-- Sinh viên 4
(4, 'Toán', 7.2),
(4, 'Văn', 6.9),
(4, 'Ngoại ngữ', 7.5),

-- Sinh viên 5
(5, 'Toán', 8.0),
(5, 'Văn', 8.2),
(5, 'Ngoại ngữ', 7.9),

-- Sinh viên 6
(6, 'Toán', 5.8),
(6, 'Văn', 6.5),
(6, 'Ngoại ngữ', 6.0);

-- tính điểm trung bình mỗi sinh viên 
select 
    student_id as 'Mã sinh viên',
    round(avg(score), 2) as 'Điểm trung bình'
from scores
group by student_id;

-- chỉ hiển thị điểm trung bình của sv có điểm >=7.0

SELECT 
    student_id,
    ROUND(AVG(score), 2) AS diem_trung_binh
FROM scores
GROUP BY student_id
HAVING AVG(score) >= 7.0;

-- hiển thị điểm cao nhất trong toàn bộ danh sách

SELECT 
    student_id,
    ROUND(AVG(score), 2) AS diem_trung_binh
FROM scores
GROUP BY student_id
ORDER BY diem_trung_binh DESC
LIMIT 1;

-- Hiển thị các sinh viên có: điểm trung bình cao hơn điểm trung bình chung của tất cả sinh viên

SELECT 
    student_id,
    ROUND(AVG(score), 2) AS diem_trung_binh
FROM scores
GROUP BY student_id
HAVING AVG(score) > (
    SELECT AVG(score)
    FROM scores
);
