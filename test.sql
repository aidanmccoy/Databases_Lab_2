DROP TABLE IF EXISTS Student;

DROP TABLE IF EXISTS Department;



CREATE TABLE Department (

  Code VARCHAR(5) PRIMARY KEY,

  Name VARCHAR(100) NOT NULL,

  ChairID CHAR(9) NOT NULL,

  DateEstablished DATE,

  UNIQUE (Name, ChairID)   -- candidate key

);



CREATE TABLE Student (

  StudentID CHAR(9),

  SSN CHAR(9) NOT NULL UNIQUE,

  FirstName VARCHAR(100),

  LastName VARCHAR(100),

  DateEnrolled DATE,

  MajorCode VARCHAR(5) NOT NULL,

  MinorCode VARCHAR(5),

  PRIMARY KEY (StudentID),

  FOREIGN KEY (MajorCode) REFERENCES Department (Code),

  FOREIGN KEY (MinorCode) REFERENCES Department (Code)

);




INSERT INTO Department (Code, Name, ChairID, DateEstablished) VALUES

('CSC', 'Computer Science', 'CL', '1940-05-01');

INSERT INTO Department (Code, Name, ChairID, DateEstablished) VALUES

('SE', 'Software Engineering', 'IV', '2001-02-10');

INSERT INTO Department (Code, Name, ChairID, DateEstablished) VALUES

('PHYS', 'Physics', 'DS', '1904-10-31');



INSERT INTO Student (StudentID, SSN, FirstName, LastName, DateEnrolled, MajorCode, MinorCode) VALUES

('000000001', '123121234', 'Piper', 'Smith', '2017-09-01', 'CSC', 'PHYS');

INSERT INTO Student (StudentID, SSN, FirstName, LastName, DateEnrolled, MajorCode, MinorCode) VALUES

('000000002', '213214321', 'Victor', 'Iskra', '2016-05-15', 'SE', NULL);
