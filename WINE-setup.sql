-- aimccoy

CREATE TABLE Appelations (
	No CHAR(2) PRIMARY KEY,
	Appelation VARCHAR(100),
	County VARCHAR(100),
	State VARCHAR(100),
	Area VARCHAR(100),
	isAva char(1)
);

CREATE TABLE Grapes (
	ID CHAR(2) PRIMARY KEY,
	Grape VARCHAR(100),
	Color VARCHAR(100)
);

CREATE TABLE Wine (
	No CHAR(2) PRIMARY KEY,
	Grape VARCHAR(100),
	Winery VARCHAR(100),
	Appelation VARCHAR(100),
	State VARCHAR(100),
	Name VARCHAR(100),
	Year CHAR(4),
	Price VARCHAR(10),
	Score VARCHAR(10),
	Cases VARCHAR(10),
	Drink VARCHAR(100)
);
