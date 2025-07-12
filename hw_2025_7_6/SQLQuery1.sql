USE HospitalISUD;
GO

/*
-- TABLE
CREATE TABLE Doctors (
    Id INT IDENTITY(8945301,1) PRIMARY KEY,
    Name NVARCHAR(MAX) NOT NULL,
    Surname NVARCHAR(MAX) NOT NULL,
    Phone CHAR(10) NOT NULL,
    Premium MONEY NOT NULL DEFAULT 0 CHECK (Premium >= 0),
    Salary MONEY NOT NULL CHECK (Salary > 0)
);

CREATE TABLE Departments (
    Id INT IDENTITY(8945101,1) PRIMARY KEY,
    Building INT NOT NULL CHECK (Building BETWEEN 1 AND 5),
    Financing MONEY NOT NULL DEFAULT 0 CHECK (Financing >= 0),
    Floor INT NOT NULL CHECK (Floor >= 1),
    Name NVARCHAR(100) NOT NULL UNIQUE CHECK (Name <> '')
);

CREATE TABLE Diseases (
    Id INT IDENTITY(8945201,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL UNIQUE CHECK (Name <> ''),
    Severity INT NOT NULL DEFAULT 1 CHECK (Severity >= 1)
);

CREATE TABLE Examinations (
    Id INT IDENTITY(8945401,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL UNIQUE CHECK (Name <> ''),
    DayOfWeek INT NOT NULL CHECK (DayOfWeek BETWEEN 1 AND 7),
    StartTime TIME NOT NULL CHECK (StartTime BETWEEN '08:00:00' AND '18:00:00'),
    EndTime TIME NOT NULL,
    CONSTRAINT CK_TimeOrder CHECK (EndTime > StartTime)
);

CREATE TABLE Wards (
    Id INT IDENTITY(8945001,1) PRIMARY KEY,
    Building INT NOT NULL CHECK (Building BETWEEN 1 AND 5),
    Floor INT NOT NULL CHECK (Floor >= 1),
    Name NVARCHAR(20) NOT NULL UNIQUE CHECK (Name <> '')
);
GO
*/

-- INSERT
INSERT INTO Doctors (Name, Surname, Phone, Premium, Salary)
VALUES ('Name1', 'Surname1', '0000000001', 100, 9000),
       ('Name2', 'Surname2', '0000000002', 150, 9500),
       ('Name3', 'Surname3', '0000000002', 150, 9500),
       ('Name4', 'Surname4', '0000000002', 150, 9500);

-- UPDATE
UPDATE Doctors
SET Salary = 10000
WHERE Surname = 'Surname1';

-- DELETE
DELETE FROM Doctors
WHERE Surname = 'Surname1' OR Surname = 'Surname2';
GO

-- SELECT
SELECT * FROM Doctors;
SELECT * FROM Departments;
SELECT * FROM Diseases;
SELECT * FROM Examinations;
SELECT * FROM Wards;
