-- aimccoy

CREATE TABLE Customers (
	ID INTEGER PRIMARY KEY,
	Lastname VARCHAR(15),
	Firstname VARCHAR(15)
);

CREATE TABLE Goods (
	ID VARCHAR(20) PRIMARY KEY,
	Flavor VARCHAR(20),
	Food VARCHAR(20),
	Price NUMERIC(5,2)
);

CREATE TABLE Items (
	Reciept VARCHAR(50),
	Ordinal VARCHAR(100),
	Item CHAR(2)
);

CREATE TABLE Receipts (
	RecieptNumber VARCHAR(100) PRIMARY KEY,
	Date DATE,
	CustomerID CHAR(2)
);

