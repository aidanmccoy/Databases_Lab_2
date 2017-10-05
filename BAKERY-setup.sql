-- aimccoy

CREATE TABLE Customers (
	ID CHAR(2) PRIMARY KEY,
	Lastname VARCHAR(100),
	Firstname VARCHAR(100)
);

CREATE TABLE Goods (
	ID CHAR(2) PRIMARY KEY,
	Flavor VARCHAR(100),
	Food VARCHAR(100),
	Price VARCHAR(100)
);

CREATE TABLE Items (
	Receipt VARCHAR(50) PRIMARY KEY,
	Ordinal VARCHAR(100),
	Item CHAR(2)
);

CREATE TABLE Receipts (
	ReceiptNumber VARCHAR(100) PRIMARY KEY,
	Date DATE,
	CustomerID CHAR(2)
);

