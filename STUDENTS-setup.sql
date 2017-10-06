-- aimccoy

CREATE TABLE List (
	LastName VARCHAR(20),
	FirstName VARCHAR(20),
	Grade INTEGER,
	Classroom INTEGER,
	PRIMARY KEY (FirstName, LastName)
);

CREATE TABLE Teachers (
	LastName VARCHAR(20),
	FirstName VARCHAR(20),
	Classroom INTEGER,
	PRIMARY KEY (FirstName, LastName)
);
