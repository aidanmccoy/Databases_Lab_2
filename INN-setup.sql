-- aimccoy

CREATE TABLE Rooms (
	RoomID CHAR(4) PRIMARY KEY,
	RoomName VARCHAR(100),
	Beds CHAR(1),
	BedType CHAR(1),
	maxOccupancy Char(2),
	BasePrice VARCHAR(10),
	Decor VARCHAR(100)
);

CREATE TABLE Reservations (
	Code CHAR(10) PRIMARY KEY,
	Room CHAR(3),
	CheckIn DATE,
	CheckOut DATE,
	Rate VARCHAR(10),
	LastName VARCHAR(100),
	FirstName VARCHAR(100),
	Adults CHAR(1),
	Kids CHAR(1)
);
