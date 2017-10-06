-- aimccoy

CREATE TABLE Rooms (
	RoomID VARCHAR(5) PRIMARY KEY,
	RoomName VARCHAR(30),
	Beds INTEGER,
	BedType VARCHAR(10),
	maxOccupancy INTEGER,
	BasePrice INTEGER,
	Decor VARCHAR(20)
);

CREATE TABLE Reservations (
	Code INTEGER PRIMARY KEY,
	Room VARCHAR(10),
	CheckIn DATE,
	CheckOut DATE,
	Rate NUMERIC(6,2),
	LastName VARCHAR(20),
	FirstName VARCHAR(20),
	Adults INTEGER,
	Kids INTEGER,
	FOREIGN KEY (Room) REFERENCES Rooms (RoomID)
);
