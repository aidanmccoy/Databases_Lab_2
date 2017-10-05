-- aimccoy

CREATE TABLE Makers (
	Id VARCHAR(10) PRIMARY KEY NOT NULL,
	Maker VARCHAR(10) NOT NULL,
	FullName VARCHAR(100) NOT NULL,
	Country VARCHAR(100)
);

CREATE TABLE Names(
	ID VARCHAR(10) PRIMARY KEY NOT NULL,
	Model VARCHAR(100) NOT NULL,
	Description VARCHAR(10000)
);

CREATE TABLE Data (
	Id VARCHAR(10) PRIMARY KEY,
	MPG CHAR(2),
	Cylinders CHAR(2),
	Edispl VARCHAR(4),
	Horsepower CHAR(3),
	Weight VARCHAR(5),
	Accelerate VARCHAR(10),
	Year CHAR(4)
);

CREATE TABLE Continents (
	ContID CHAR(1) PRIMARY KEY,
	Continent VARCHAR(100) NOT NULL
);

CREATE TABLE Countries (
	CountryID CHAR(2) PRIMARY KEY,
	CountryName VARCHAR(100) NOT NULL,
	Continent CHAR(1) NOT NULL
);

CREATE TABLE Models (
	ModelID CHAR(2) PRIMARY KEY,
	Maker CHAR(2),
	Model VARCHAR(100)
);
