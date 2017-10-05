#Aidan McCoy

DROP TABLE IF EXISTS Albums;
DROP TABLE IF EXISTS Band;
DROP TABLE IF EXISTS Instruments;
DROP TABLE IF EXISTS Performance;
DROP TABLE IF EXISTS Songs;
DROP TABLE IF EXISTS Tracklist;
DROP TABLE IF EXISTS Vocals;

CREATE TABLE Albums (
AID CHAR(5) PRIMARY KEY,
Title VARCHAR(100),
Year VARCHAR(100),
Label VARCHAR(100));

CREATE TABLE Band(
ID CHAR(1) PRIMARY KEY,
FirstName VARCHAR(100),
LastName VARCHAR(100));

CREATE TABLE Instruments(
SongID CHAR(5) PRIMARY KEY,
BandmateID CHAR(5),
Instrument VARCHAR(100));

CREATE TABLE Performance(
SongID CHAR(5) PRIMARY KEY,
Bandmate CHAR(5),
StagePosition VARCHAR(100));

CREATE TABLE Songs(
SongID CHAR(5) PRIMARY KEY,
Title VARCHAR(100));

CREATE TABLE Tracklist(
AlbumID CHAR(5),
Position VARCHAR(10),
SongID CHAR(5),
PRIMARY KEY (AlbumID, SongID));

CREATE TABLE Vocals(
SongID CHAR(5),
Bandmate CHAR(5),
VoxType CHAR(6));