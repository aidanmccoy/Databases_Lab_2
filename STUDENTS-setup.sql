# Aidan McCoy

CREATE TABLE List (
LastName VARCHAR(100),
FirstName VARCHAR(100),
Grade CHAR(2),
Classroom VARCHAR(10),
PRIMARY KEY (FirstName, LastName));

CREATE TABLE Teachers (
LastName VARCHAR(100),
FirstName VARCHAR(100),
Classroom VARCHAR(10),
PRIMARY KEY (FirstName, LastName));
