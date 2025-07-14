CREATE DATABASE School;
GO

USE School;
GO

-- Tables
CREATE TABLE Faculties (
    Id INT PRIMARY KEY,
    Name VARCHAR(255),
    Dean VARCHAR(255)
);

CREATE TABLE Departments (
    Id INT PRIMARY KEY,
    Name VARCHAR(255),
    Financing DECIMAL(10, 2),
    FacultyId INT,
    FOREIGN KEY (FacultyId) REFERENCES Faculties(Id)
);

CREATE TABLE Teachers (
    Id INT PRIMARY KEY,
    Name VARCHAR(255),
    Surname VARCHAR(255),
    Position VARCHAR(100),
    Salary DECIMAL(10, 2),
    Premium DECIMAL(10, 2),
    EmploymentDate DATE,
    IsProfessor BIT,
    IsAssistant BIT,
    DepartmentId INT,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);

CREATE TABLE Groups (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Rating DECIMAL(3, 2),
    Year INT,
    FacultyId INT,
    FOREIGN KEY (FacultyId) REFERENCES Faculties(Id)
);

-- Test data
INSERT INTO Faculties (Id, Name, Dean) VALUES
(1, 'NameF1', 'Dr. Dean1'),
(2, 'NameF2', 'Dr. Dean2');

INSERT INTO Departments (Id, Name, Financing, FacultyId) VALUES
(1, 'NameD1', 100000.00, 1),
(2, 'NameD2', 75000.00, 2);

INSERT INTO Teachers (Id, Name, Surname, Position, Salary, Premium, EmploymentDate, IsProfessor, IsAssistant, DepartmentId) VALUES
(1, 'NameT1', 'SurnameT1', 'Position', 5000.00, 500.00, '2020-09-01', 1, 0, 1),
(2, 'NameT2', 'SurnameT2', 'Position', 4000.00, 400.00, '2020-08-02', 1, 0, 2);

INSERT INTO Groups (Id, Name, Rating, Year, FacultyId) VALUES
(1, 'No1', 4.75, 2023, 1),
(2, 'No2', 4.60, 2022, 2);
