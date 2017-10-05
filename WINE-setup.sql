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
	No CHAR(4) PRIMARY KEY,
	Grape VARCHAR(100),
	Winery VARCHAR(100),
	Appelation VARCHAR(100),
	State VARCHAR(100),
	Name VARCHAR(100),
	Year CHAR(4),
	Price VARCHAR(3),
	Score VARCHAR(2),
	Cases VARCHAR(6),
	Drink VARCHAR(5)
);
