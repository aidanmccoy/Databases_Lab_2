-- aimccoy

CREATE TABLE Albums (
	AId INTEGER PRIMARY KEY,
	Title VARCHAR(50),
	Year INTEGER,
	Label VARCHAR(25),
	Type VARCHAR(10)
);

CREATE TABLE Band(
	Id INTEGER PRIMARY KEY,
	Firstname VARCHAR(15),
	Lastname VARCHAR(15)
);

CREATE TABLE Songs(
	SongId INTEGER PRIMARY KEY,
	Title VARCHAR(50)
);

CREATE TABLE Instruments(
	SongId INTEGER,
	BandmateId INTEGER,
	Instrument VARCHAR(20),
	FOREIGN KEY (SongId) REFERENCES Songs (SongId),
	FOREIGN KEY (BandmateId) REFERENCES Band (Id),
	PRIMARY KEY (SongId, BandmateId, Instrument)
);

CREATE TABLE Performance(
	SongId INTEGER,
	Bandmate INTEGER,
	StagePosition VARCHAR(10)
	FOREIGN KEY (SongId) REFERENCES Songs (SongId),
	FOREIGN KEY (Bandmate) REFERENCES Band (Id),
	PRIMARY KEY (SongId, Bandmate, StagePosition)
);

CREATE TABLE Tracklist(
	AlbumId INTEGER,
	Position INTEGER,
	SongId INTEGER,
	PRIMARY KEY (AlbumID, SongID),
	FOREIGN KEY (AlbumId) REFERENCES Albums (AId),
	FOREIGN KEY (SongId) REFERENCES Songs (SongId)
);

CREATE TABLE Vocals(
	SongID INTEGER,
	Bandmate INTEGER,
	Type VARCHAR(10),
	FOREIGN KEY (SongID) REFERENCES Songs (SongId),
	FOREIGN KEY (Bandmate) REFERENCES Band (Id),
	PRIMARY KEY (SongID, Bandmate, Type)
);
