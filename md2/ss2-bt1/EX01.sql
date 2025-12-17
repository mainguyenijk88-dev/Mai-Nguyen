CREATE SCHEMA C
USE CompanyDB;
CREATE TABLE Employees (
	`EmployeesID` INT,
    `FirstName` VARCHAR (50), 
    `LastName`VARCHAR (50), 
    `HireDate` DATE,
    `Salary` DOUBLE
    );
    ALTER TABLE Employees
    ADD COLUMN `Salary` DOUBLE;
    
    ALTER TABLE Employees
    ADD COLUMN `Department`INT;
    ALTER TABLE Employees
    MODIFY COLUMN  `Salary`decimal(10, 2);
    