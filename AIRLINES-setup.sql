-- aimccoy

CREATE TABLE Airlines (
	ID CHAR(2) PRIMARY KEY,
	Airline VARCHAR(100),
	AirlineAbr VARCHAR(10),
	Country VARCHAR(100)
);

CREATE TABLE Airports (
	City VARCHAR(100),
	Code CHAR(3) PRIMARY KEY,
	Name VARCHAR(100),
	Country VARCHAR(100),
	CountryAbr VARCHAR(100)
);

CREATE TABLE Flights (
	Airline VARCHAR(100),
	FlightNo VARCHAR(100) PRIMARY KEY,
	Source CHAR(3),
	Dest CHAR(3)
);
