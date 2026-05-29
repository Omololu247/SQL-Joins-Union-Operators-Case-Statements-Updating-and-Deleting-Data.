SELECT*
FROM [SQL Tutorial].dbo.EmployeeDemographics
SELECT*
FROM [SQL Tutorial].dbo.EmployeeSalary


SELECT FirstName, LastName, Age,
CASE
WHEN Age >30 THEN 'OLD'
ELSE 'YOUNG'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age


SELECT FirstName, LastName, Age,
CASE
	WHEN Age >30 THEN 'OLD'
	WHEN Age BETWEEN 27 AND 30 THEN 'YOUNG'
	ELSE 'BABY'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age



SELECT FirstName, LastName, Age,
CASE
	WHEN Age >32 THEN 'OLD'
	WHEN Age BETWEEN 30 AND 32 THEN 'YOUNG'
	ELSE 'BABY'
END AS AgeGrouping
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age


SELECT FirstName, LastName, Age,
CASE
WHEN Age = 38 THEN 'Stanley'
	WHEN Age >32 THEN 'OLD'
	ELSE 'BABY'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age


SELECT  FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE  Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT EmployeeID, SUM(Salary) AS TotalSalary
FROM [SQL Tutorial].dbo.EmployeeSalary
GROUP BY EmployeeID;

SELECT AVG(salary) AS Avgsalary
FROM [SQL Tutorial].dbo.EmployeeSalary;