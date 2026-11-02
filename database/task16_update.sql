-- =====================================================
-- Task 16 — UPDATE: изменение данных
-- =====================================================
USE PracticeDB;

-- === ДО ===
SELECT EmployeeId, EmployeeName, Salary, HireDate, DepartmentId
FROM Employees ORDER BY EmployeeId;

BEGIN TRANSACTION;

-- UPDATE 1: отдел 1 +10%
UPDATE Employees SET Salary = Salary * 1.10 WHERE DepartmentId = 1;

-- UPDATE 2: нанятые до 2022 +5000
UPDATE Employees SET Salary = Salary + 5000 WHERE HireDate < '2022-01-01';

-- UPDATE 3: HireDate одного сотрудника (Id 4)
UPDATE Employees SET HireDate = '2023-03-01' WHERE EmployeeId = 4;

-- === ПОСЛЕ ===
SELECT EmployeeId, EmployeeName, Salary, HireDate, DepartmentId
FROM Employees ORDER BY EmployeeId;

COMMIT;