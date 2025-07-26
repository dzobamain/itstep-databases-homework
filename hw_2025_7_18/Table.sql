-- Postgresql
CREATE DATABASE university;

CREATE TABLE Faculties (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Departments (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Building VARCHAR(50),
    Financing DECIMAL(10,2),
    FacultyId INT NOT NULL,
    FOREIGN KEY (FacultyId) REFERENCES Faculties(Id)
);

CREATE TABLE Groups (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Year INT,
    DepartmentId INT NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);

CREATE TABLE Curators (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL
);

CREATE TABLE GroupsCurators (
    Id SERIAL PRIMARY KEY,
    CuratorId INT NOT NULL,
    GroupId INT NOT NULL,
    FOREIGN KEY (CuratorId) REFERENCES Curators(Id),
    FOREIGN KEY (GroupId) REFERENCES Groups(Id)
);

CREATE TABLE Students (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL,
    Rating DECIMAL(4,2)
);

CREATE TABLE GroupsStudents (
    Id SERIAL PRIMARY KEY,
    GroupId INT NOT NULL,
    StudentId INT NOT NULL,
    FOREIGN KEY (GroupId) REFERENCES Groups(Id),
    FOREIGN KEY (StudentId) REFERENCES Students(Id)
);

CREATE TABLE Teachers (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2),
    IsProfessor BOOLEAN
);

CREATE TABLE Subjects (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Lectures (
    Id SERIAL PRIMARY KEY,
    Date DATE,
    SubjectId INT NOT NULL,
    TeacherId INT NOT NULL,
    FOREIGN KEY (SubjectId) REFERENCES Subjects(Id),
    FOREIGN KEY (TeacherId) REFERENCES Teachers(Id)
);

CREATE TABLE GroupsLectures (
    Id SERIAL PRIMARY KEY,
    GroupId INT NOT NULL,
    LectureId INT NOT NULL,
    FOREIGN KEY (GroupId) REFERENCES Groups(Id),
    FOREIGN KEY (LectureId) REFERENCES Lectures(Id)
);

SELECT * FROM Faculties;
SELECT * FROM Departments;
SELECT * FROM Groups;
SELECT * FROM Curators;
SELECT * FROM GroupsCurators;
SELECT * FROM Students;
SELECT * FROM GroupsStudents;
SELECT * FROM Teachers;
SELECT * FROM Subjects;
SELECT * FROM Lectures;
SELECT * FROM GroupsLectures;

