-- aimccoy

CREATE TABLE Customers (
	ID INTEGER PRIMARY KEY,
	Lastname VARCHAR(15) NOT NULL,
	Firstname VARCHAR(15) NOT NULL
);

CREATE TABLE Goods (
	ID VARCHAR(20) PRIMARY KEY,
	Flavor VARCHAR(20) NOT NULL,
	Food VARCHAR(20) NOT NULL,
	Price NUMERIC(5,2) NOT NULL
);

CREATE TABLE Receipts (
	RecieptNumber INTEGER PRIMARY KEY,
	Date DATE NOT NULL,
	CustomerID INTEGER NOT NULL
);

CREATE TABLE Items (
	Reciept INTEGER NOT NULL,
	Ordinal INTEGER NOT NULL,
	Item VARCHAR(20) PRIMARY KEY
	FOREIGN KEY Reciept REFERENCES Receipts (RecieptNumber),
	FOREIGN KEY Item REFERENCES Goods (ID)
);

