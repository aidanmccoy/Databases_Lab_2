-- aimccoy

CREATE TABLE Airlines (
	Id CHAR(2) PRIMARY KEY,
	Airline VARCHAR(100),
	Abbreviation VARCHAR(10),
	Country VARCHAR(100)
);

CREATE TABLE Airports (
	City VARCHAR(100),
	AirportCode CHAR(5) PRIMARY KEY,
	AirportName VARCHAR(100),
	Country VARCHAR(100),
	CountryAbbrev VARCHAR(100)
);

CREATE TABLE Flights (
	Airline VARCHAR(100),
	FlightNo VARCHAR(2000) PRIMARY KEY,
	SourceAirport CHAR(3),
	DestAirport CHAR(3)
);
