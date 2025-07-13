-- ISUD

USE AcademyISUD;
GO

-- 1. Кафедри: поля у зворотному порядку
SELECT Name, Financing, Id FROM Departments;

-- 2. Назви груп та рейтинг з псевдонімами
SELECT Name AS [Group Name], Rating AS [Group Rating] FROM Groups;

-- 3. Прізвище + % ставки до надбавки і до суми
SELECT 
  Surname,
  (Salary * 100.0) / Premium AS [Ставка до надбавки %],
  (Salary * 100.0) / (Salary + Premium) AS [Ставка до загальної %]
FROM Teachers;

-- 4. Факультети як один рядок
SELECT 'The dean of faculty ' + Name + ' is ' + Dean AS [Faculty Info]
FROM Faculties;

-- 5. Професори зі ставкою > 1050
SELECT Surname FROM Teachers
WHERE IsProfessor = 1 AND Salary > 1050;

-- 6. Кафедри з фінансуванням <11000 або >25000
SELECT Name FROM Departments
WHERE Financing < 11000 OR Financing > 25000;

-- 7. Усі факультети, крім "Computer Science"
SELECT Name FROM Faculties
WHERE Name <> 'Computer Science';

-- 8. Викладачі, які не є професорами
SELECT Surname, Position FROM Teachers
WHERE IsProfessor = 0;

-- 9. Асистенти з надбавкою від 160 до 550
SELECT Surname, Position, Salary, Premium FROM Teachers
WHERE IsAssistant = 1 AND Premium BETWEEN 160 AND 550;

-- 10. Асистенти: прізвище і ставка
SELECT Surname, Salary FROM Teachers
WHERE IsAssistant = 1;

-- 11. Викладачі, прийняті до 2000 року
SELECT Surname, Position FROM Teachers
WHERE EmploymentDate < '2000-01-01';

-- 12. Кафедри < "Software Development" за алфавітом
SELECT Name AS [Name of Department] FROM Departments
WHERE Name < 'Software Development';

-- 13. Асистенти з загальною зарплатою ≤1200
SELECT Surname FROM Teachers
WHERE IsAssistant = 1 AND (Salary + Premium) <= 1200;

-- 14. Групи 5-го курсу з рейтингом 2–4
SELECT Name FROM Groups
WHERE Year = 5 AND Rating BETWEEN 2 AND 4;

-- 15. Асистенти зі ставкою <550 або надбавкою <200
SELECT Surname FROM Teachers
WHERE IsAssistant = 1 AND (Salary < 550 OR Premium < 200);

-- ✏️ INSERT — приклад додавання викладача
INSERT INTO Teachers (Name, Surname, Position, Salary, Premium, EmploymentDate, IsAssistant, IsProfessor)
VALUES ('Ірина', 'Гончаренко', 'Асистент', 500, 200, '1999-11-20', 1, 0);

-- ✏️ UPDATE — підвищення надбавки для асистентів
UPDATE Teachers
SET Premium = Premium + 50
WHERE IsAssistant = 1;

-- 🗑️ DELETE — видалити групу з рейтингом 0
DELETE FROM Groups
WHERE Rating = 0;