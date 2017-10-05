-- aimccoy

CREATE TABLE Campuses (
	ID VARCHAR(10) PRIMARY KEY,
	Campus VARCHAR(100) NOT NULL,
	Location VARCHAR(100) NOT NULL,
	County VARCHAR(100) NOT NULL,
	Year CHAR(4) NOT NULL
);

CREATE TABLE Fees (
	Campus VARCHAR(10) NOT NULL,
	Year CHAR(4) NOT NULL,
	CampusFee VARCHAR (10) NOT NULL,
	PRIMARY KEY (Campus, Year)
);

CREATE TABLE Degrees (
	Year CHAR(4) NOT NULL,
	Campus VARCHAR(10) NOT NULL,
	Degrees VARCHAR(10) NOT NULL,
	PRIMARY KEY (Campus, Year)
);

CREATE TABLE DiscEnroll (
	Campus VARCHAR(10) NOT NULL,
	Discipline VARCHAR(100) NOT NULL,
	Year CHAR(4) NOT NULL,
	Undergraduate VARCHAR(10),
	Graduate VARCHAR(10),
	PRIMARY KEY (Campus, Discipline, Year)
);

CREATE TABLE Disciplines (
	ID VARCHAR(10) PRIMARY KEY,
	Name VARCHAR(100) NOT NULL
);

CREATE TABLE Enrollments (
	Campus VARCHAR(10) NOT NULL,
	Year CHAR(4) NOT NULL,
	TotalEnrollment_AY VARCHAR(10) NOT NULL,
	FTE_AY VARCHAR(10),
	PRIMARY KEY (Campus, Year)
);

CREATE TABLE Faculty (
	Campus VARCHAR(10) NOT NULL,
	Year CHAR(4) NOT NULL,
	NumFac VARCHAR(10) NOT NULL,
	PRIMARY KEY (Campus, Year)
);


