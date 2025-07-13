USE AcademyISUD;
GO

INSERT INTO Departments (Name, Financing)
VALUES
('Department1', 9500),
('Department2', 14000),
('Department3', 28000),
('Software Development', 17000);

INSERT INTO Faculties (Name, Dean)
VALUES
('Computer Science', 'Dean1'),
('Mathematics', 'Dean2'),
('Engineering', 'Dean3');

INSERT INTO Groups (Name, Rating, Year)
VALUES
('Group1', 3, 5),
('Group2', 5, 4),
('Group3', 0, 2),
('Group4', 2, 5);

INSERT INTO Teachers (Name, Surname, Position, Salary, Premium, EmploymentDate, IsAssistant, IsProfessor)
VALUES
('Name1', 'Surname1', 'Асистент', 500, 200, '1999-12-01', 1, 0),
('Name2', 'Surname2', 'Професор', 1100, 150, '2005-06-15', 0, 1),
('Name3', 'Surname3', 'Доцент', 850, 100, '1998-03-20', 0, 0),
('Name4', 'Surname4', 'Асистент', 450, 180, '2003-05-05', 1, 0),
('Name5', 'Surname5', 'Асистент', 560, 190, '2001-08-10', 1, 0),
('Name6', 'Surname6', 'Професор', 950, 300, '1995-10-12', 0, 1);
