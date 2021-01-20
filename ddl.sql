CREATE DATABASE codeDB;

USE SCHEMA codeDB;
GO

CREATE TABLE codeDB.Products
(
  ID long NOT NULL PRIMARY KEY,
  Name varchar(100);
  Price double
  
);

CREATE TABLE codeDB.Orders
(
  ID long NOT NULL  NOT NULL PRIMARY KEY,
  ProductID long FOREIGN KEY REFERENCES Products(ID),
  CusomerID long FOREIGN KEY REFERENCES Customers(ID),
);

CREATE TABLE codeDB.Customers
(
  ID long NOT NULL  NOT NULL PRIMARY KEY,
  FirstName varchar(100),
  LastName varchar(100),
  CardNumber tinyint;
);
