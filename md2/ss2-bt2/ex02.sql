CREATE SCHEMA prd;
USE prd;
CREATE TABLE Products (
`ProductID` INT PRIMARY KEY,
`ProductName` VARCHAR (255),
`Category` VARCHAR (255),
`Price` INT,
`StockQuantity` INT
);
USE prd;
INSERT INTO  `Products` (`ProductID`,`ProductName`,`Category`, `Price`) VALUES(1, 'quan ao', 'phu nu', 200)