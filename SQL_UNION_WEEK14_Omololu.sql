SELECT*
FROM [SQL Tutorial].dbo.EmployeeDemographics
SELECT*
FROM [SQL Tutorial].dbo.EmployeeSalary

SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION ALL
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeSalary
ORDER BY EmployeeID