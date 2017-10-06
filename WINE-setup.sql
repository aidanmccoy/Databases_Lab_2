-- aimccoy

CREATE TABLE Appelations (
	No INTEGER PRIMARY KEY,
	Appelation VARCHAR(50),
	County VARCHAR(20),
	State VARCHAR(15),
	Area VARCHAR(25),
	isAva VARCHAR(10),
	UNIQUE (Appelation)
);

CREATE TABLE Grapes (
	ID Integer PRIMARY KEY,
	Grape VARCHAR(25),
	Color VARCHAR(10),
	UNIQUE (Grape)
);

CREATE TABLE Wine (
	No INTEGER PRIMARY KEY,
	Grape VARCHAR(25),
	Winery VARCHAR(40),
	Appelation VARCHAR(50),
	State VARCHAR(15),
	Name VARCHAR(60),
	Year INTEGER,
	Price INTEGER,
	Score INTEGER,
	Cases INTEGER,
	Drink VARCHAR(10),
	FOREIGN KEY (Grape) REFERENCES Grapes (Grape),
	FOREIGN KEY (Appelation) REFERENCES Appelations (Appelation)
);
