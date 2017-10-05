-- aimccoy

CREATE TABLE Albums (
	AId CHAR(5) PRIMARY KEY,
	Title VARCHAR(100),
	Year VARCHAR(100),
	Label VARCHAR(100),
	Type VARCHAR(100)
);

CREATE TABLE Band(
	Id CHAR(1) PRIMARY KEY,
	Firstname VARCHAR(100),
	Lastname VARCHAR(100)
);

CREATE TABLE Instruments(
	SongId CHAR(5) PRIMARY KEY,
	BandmateId CHAR(5),
	Instrument VARCHAR(100)
);

CREATE TABLE Performance(
	SongId CHAR(5) PRIMARY KEY,
	Bandmate CHAR(5),
	StagePosition VARCHAR(100)
);

CREATE TABLE Songs(
	SongId CHAR(5) PRIMARY KEY,
	Title VARCHAR(100)
);

CREATE TABLE Tracklist(
	AlbumId CHAR(5),
	Position VARCHAR(10),
	SongId CHAR(5),
	PRIMARY KEY (AlbumID, SongID)
);

CREATE TABLE Vocals(
	SongID CHAR(5),
	Bandmate CHAR(5),
	Type CHAR(6)
);
