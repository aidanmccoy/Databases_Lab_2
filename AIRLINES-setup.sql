-- aimccoy

CREATE TABLE Airlines (
	Id INTEGER NOT NULL PRIMARY KEY,
	Airline VARCHAR(22),
	Abbreviation VARCHAR(13),
	Country VARCHAR(5)
);

CREATE TABLE Airports (
	City VARCHAR(22),
	AirportCode CHAR(5) PRIMARY KEY,
	AirportName VARCHAR(50),
	Country VARCHAR(16),
	CountryAbbrev VARCHAR(5)
);

CREATE TABLE Flights (
	Airline INT NOT NULL,
	FlightNo INTEGER PRIMARY KEY,
	SourceAirport VARCHAR(6),
	DestAirport VARCHAR(6),
	FOREIGN KEY (Airline) REFERENCES Airlines (Id),
	FOREIGN KEY (SourceAirport) REFERENCES Airport (AirportCode),
	FOREIGN KEY (DestAirport) REFERENCES Airport (AirportCode)
);
