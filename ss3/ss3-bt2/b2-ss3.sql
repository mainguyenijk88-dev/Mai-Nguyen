CREATE DATABASE library_management;
USE library_management

CREATE TABLE books (
bookID int auto_increment primary key,
bookTitle varchar(255),
author varchar(255),
publishedYear int
);

CREATE TABLE readers (
readerID int auto_increment primary key,
readerName varchar(255),
email varchar(255)
);

create table borrowings (
Id int auto_increment primary key,
readerID int,
bookID int,
borrowDate date,
returnDate date,
foreign key (readerID) references readers (readerID),
foreign key (bookID) references books (bookID)
);

alter table borrowings
modify borrowDate date not null;

