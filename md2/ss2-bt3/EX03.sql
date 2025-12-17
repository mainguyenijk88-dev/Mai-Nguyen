USE companydb;
INSERT INTO `employees`(EmployeesID, FirstName, lastName, HireDate, Salary, Department) VALUES(1,'nguyen', 'van a', '2022/12/12', 2000000,01);
INSERT INTO `employees`(EmployeesID, FirstName, lastName, HireDate, Salary, Department) VALUES(2,'nguyen', 'hong nhung ', '2022/10/12', 2000000,02),
(3,'le', 'hong nhung ', '2002/10/12', 2000000,03),(4,'nguyen', 'hong ha ', '2012/10/15', 2000000,03);
SELECT*FROM `employees`;
UPDATE `employees`
SET Salary = 2500.000, Department  = 02
WHERE EmployeesID = 1;
SELECT * FROM employees WHERE Department = 2;

 UPDATE employees
 SET salary = 2600.000
 WHERE EmployeesID  = 1;
 
UPDATE employees
 SET salary = 2500.000
 WHERE EmployeesID = 2;
 
DELETE FROM employees
WHERE salary = 2000000;

USE companydb;
SELECT * FROM employees 
