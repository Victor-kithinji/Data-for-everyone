Create table employeeDemographics 
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50))
--Create the table
CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int)

INSERT INTO EmployeeDemographics Values
(1001, 'Jim', 'Kithinji', 23, 'Male')
INSERT INTO EmployeeSalary VALUES
(1001, 'Data Engineer', 300000)
--Inserts values into the table



SELECT AVG(Salary)
FROM EmployeeSalary
--Calculates the average of salary in Employees database

SELECT *, FirstName, LastName
FROM EmployeeDemographics
--Select all, FirstName, any entity
SELECT MIN(Salary)
FROM EmployeeSalary
--SELECT Minimum values and maximum value from employee salary
SELECT TOP 5 *
FROM EmployeeDemographics
--Selects the top 5 values from the table
SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics
--Selects the different values in the column 
SELECT COUNT(Gender) as Gender_Count
From EmployeeDemographics
--specifies the number of rows in the column gender in the table
 --AS Sets an alias name for the column gender

 
 SELECT *
 FROM EmployeeDemographics
 WHERE FirstName = 'Victor'
 -- Specify the firstName Values which starts with Victor

 SELECT *
 FROM EmployeeDemographics
 WHERE FirstName <> 'Victor'
 --Specify the FirstName value thats does not start with Victor

 SELECT *
 FROM EmployeeSalary
 WHERE Salary = 300000
 --Specify the table values where salary is 300000

  SELECT *
 FROM EmployeeSalary
 WHERE Salary < 300000 
 --Specify the table values where salary is less than 300000

 SELECT *
 FROM EmployeeSalary
 WHERE Salary <= 300000
 --Specify the table values where salary is less than or equal to 300000

  SELECT *
 FROM EmployeeSalary
 WHERE Salary > 300000
 --Specify the table values where salary is greater than 300000

  SELECT *
 FROM EmployeeSalary
 WHERE Salary >= 300000
 --Specify the table values where salary is greater than or equal to 300000

 SELECT *
 FROM EmployeeDemographics
 WHERE Age <= 32 AND Gender = 'Male'
 -- Specifies the people who are less than or equal to 32 and gender is male
 --Both conditions must be true , ie, returns only people that meets both conditions

 SELECT *
 FROM EmployeeDemographics
 WHERE Age <= 32 OR Gender = 'Male'
 -- Specifies the people who are less than or equal to 32 or gender is male
 -- Any of the condition must be met, i.e, Returns any person thvt meets any of the condition

 SELECT * 
 FROM EmployeeDemographics
 WHERE LastName LIKE 'K%'
 --Returns the people whose last name starts with K

 SELECT * 
 FROM EmployeeDemographics
 WHERE LastName LIKE '%a%'
 --Returns the people whose last name has letter a 

  SELECT * 
 FROM EmployeeDemographics
 WHERE LastName LIKE '%a'
 --Returns the people whose last name ends letter a

 SELECT * 
 FROM EmployeeDemographics
 WHERE LastName LIKE '%KI%n%yua'
 --Returns the people whose last name follow the order ki n yua

  SELECT * 
 FROM EmployeeDemographics
  WHERE age is NULL
  -- Specifies the people whose age is null

 SELECT * 
 FROM EmployeeDemographics
 WHERE age is NOT NULL
 -- Specifies the people whose age is not null/ empty

SELECT * 
FROM EmployeeDemographics
WHERE FirstName IN ('Victor', 'Mary', 'Jim')
--Returns people whose first name are victor, mary and jim

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY GENDER
--returns the unique values in gender column and group all the male and female together respectively and counts values group in both

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY GENDER, Age
-- Specifies thats the number of people with same gender and same age like there are 2 males with age 23

SELECT Gender, Age, COUNT(Gender) as CountGender
FROM EmployeeDemographics
WHERE age >= 22 
GROUP BY GENDER, Age
-- specifies the unique values in gender and age where the age is grater than 28
ORDER BY Age 
-- Specifies  the order in which your results will be displyed, tht is, the reultss cn be displyed in scending or descending order 

SELECT *
FROM EmployeeDemographics
ORDER BY FirstName
--Specifies the order to return people based on their first name.
--the letter are grouped from a-z and numerical from 0-9 and vice versa

 SELECT *
 FROM EmployeeDemographics
 WHERE FirstName = 'Victor'
  Specify the firstName Values which starts with Victor

 SELECT *
 FROM EmployeeDemographics
 WHERE FirstName <> 'Victor'
 Specify the FirstName value thats does not start with Victor

 SELECT *
 FROM EmployeeSalary
 WHERE Salary = 300000
 Specify the table values where salary is 300000

  SELECT *
 FROM EmployeeSalary
 WHERE Salary < 300000 
 Specify the table values where salary is less than 300000

 SELECT *
 FROM EmployeeSalary
 WHERE Salary <= 300000
 Specify the table values where salary is less than or equal to 300000

  SELECT *
 FROM EmployeeSalary
 WHERE Salary > 300000
 Specify the table values where salary is greater than 300000

  SELECT *
 FROM EmployeeSalary
 WHERE Salary >= 300000
 Specify the table values where salary is greater than or equal to 300000

 SELECT *
 FROM EmployeeDemographics
 WHERE Age <= 32 AND Gender = 'Male'
  Specifies the people who are less than or equal to 32 and gender is male
 Both conditions must be true , ie, returns only people that meets both conditions

 SELECT *
 FROM EmployeeDemographics
 WHERE Age <= 32 OR Gender = 'Male'
  Specifies the people who are less than or equal to 32 or gender is male
  Any of the condition must be met, i.e, Returns any person thvt meets any of the condition

 SELECT * 
 FROM EmployeeDemographics
 WHERE LastName LIKE 'K%'
 Returns the people whose last name starts with K

 SELECT * 
 FROM EmployeeDemographics
 WHERE LastName LIKE '%a%'
 Returns the people whose last name has letter a 

  SELECT * 
 FROM EmployeeDemographics
 WHERE LastName LIKE '%a'
 Returns the people whose last name ends letter a

 SELECT * 
 FROM EmployeeDemographics
 WHERE LastName LIKE '%KI%n%yua'
 Returns the people whose last name follow the order ki n yua

  SELECT * 
 FROM EmployeeDemographics
  WHERE age is NULL
   Specifies the people whose age is null

 SELECT * 
 FROM EmployeeDemographics
 WHERE age is NOT NULL
  Specifies the people whose age is not null/ empty

SELECT * 
FROM EmployeeDemographics
WHERE FirstName IN ('Victor', 'Mary', 'Jim')
Returns people whose first name are victor, mary and jim

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY GENDER
returns the unique values in gender column and group all the male and female together respectively and counts values group in both

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY GENDER, Age
 Specifies thats the number of people with same gender and same age like there are 2 males with age 23

SELECT Gender, Age, COUNT(Gender) as CountGender
FROM EmployeeDemographics
WHERE age >= 22 
GROUP BY GENDER, Age
 specifies the unique values in gender and age where the age is grater than 28
ORDER BY Age 
 Specifies  the order in which your results will be displyed, tht is, the reultss cn be displyed in scending or descending order 

SELECT *
FROM EmployeeDemographics
ORDER BY 1 Desc
Specifies the order to return people based on their first name.
the letter are grouped from a-z and numerical from 0-9 and vice versa

Join statements

Inner joins
SELECT * 
FROM EmployeeDemographics
inner JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
 Shows everything that is common in both tables

Full Outer Joins
SELECT * 
FROM EmployeeDemographics
Full outer join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Shows everything in both tables regardless of whether its missing/Null or not

Left outer join
SELECT * 
FROM EmployeeDemographics
Left outer join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Shows everything in the left table and those that overlaps in right table only

Right Outer Join
SELECT * 
FROM EmployeeDemographics
Right outer join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Shows everything in the right table and the data that overlaps in left table only

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Salary
FROM EmployeeDemographics
inner join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Displays everything in the selected column that has the same ID as both

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Salary
FROM EmployeeDemographics
inner join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Kennedy'
ORDER BY Salary Desc
Displays the salary of the employees in descending order where the bosses salary named kennedy is not displayed
The boss want to pay cut the highest paid employee beside him

SELECT JobTitle, avg(Salary) as avgSalary
FROM EmployeeDemographics
inner join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Data Engineer'
GROUP BY JobTitle

 Union Statements

 Union
CREate Table WareHouseDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50))

SELECT * 
From EmployeeDemographics
Union all
Select *
From WarehouseDemographics
Order By EmployeeID
 Combines both tables into one by creating more rows since the have same data trype
SELECT EmployeeID, FirstName, Age
From EmployeeDemographics
Union 
Select EmployeeID, JobTitle, Salary
From EmployeeSalary
Order By EmployeeID
Combines both tables based on employeeId since they have different data

SELECT FirstName, Lastname, Age,
Case 
	When age > 30 Then 'Old'
	else 'Young'
End
From EmployeeDemographics
Where Age is NOT NULL
Order by Age
Displays old if the person's age is greter than 30 else young

SELECT FirstName, Lastname, Age,
Case 
	When age > 30 Then 'Old'
	when age Between 27 and 30 then 'young'
	else 'baby'
End
From EmployeeDemographics
Where Age is NOT NULL
Order by Age

Select FirstName, LastName, JobTitle, Salary,
case 
	when JobTitle = 'salesperson' Then Salary + (Salary * 0.20)
	when JobTitle = 'accountant' Then Salary + (Salary * 0.06)
	when JobTitle = 'Data engineer' Then Salary + (Salary * 0.10)
	when JobTitle = 'software Developer' Then Salary + (Salary * 0.05)
	when JobTitle = 'Network Engineer' Then Salary + (Salary * 0.05)
	when JobTitle = 'Data Sciencist' Then Salary + (Salary * 0.10)
	when JobTitle = 'Lecturer' Then Salary + (Salary * 0.10)
End as SalaryAfterRase
From EmployeeDemographics as ED
join EmployeeSalary as ES
	On ED.EmployeeID =ES.EmployeeID
The company gained profit in the previous financial year and asked the accountant to raise salaries for ll the workers depending on the job type

Having Clause
SELECT JobTitle, COUNT(JobTitle) as JobTiTtleCount
FROM EmployeeDemographics
Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Group by JobTitle 
Having count(JobTitle) > 1
Displays all the jobs with more than one count

SELECT JobTitle, avg(Salary) as avgSalary
FROM EmployeeDemographics
Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Group by JobTitle 
Having avg(salary) > 45000
Order by avg(Salary)
Displays the jobtitle with more than avg salary of 45000

updating 
SELECT *
FROM EmployeeDemographics

Update EmployeeDemographics
SET EmployeeID = 1008, FirstName = 'brooke', LastName = 'Kim', Gender = 'FeMale'
Where age = 26 and FirstName = 'Brooke'

DELETE EmployeeDemographics
Where EmployeeID = 1010

Insert into EmployeeDemographics values
(1009, 'Brenda', 'Makena', 30, 'Female')

SELECT FirstName as fname
FROM EmployeeDemographics

SELECT FirstName + ' ' + LastName as FullName
FROM EmployeeDemographics

Select FirstName, LastName, Gender, Salary,
COUNT(Gender) Over (Partition By Gender) as TotalGender
From EmployeeDemographics as Demo
Join EmployeeSalary as sal
	on Demo.EmployeeID = sal.EmployeeID

Select FirstName, LastName, Gender, Salary,
COUNT(Gender)
From EmployeeDemographics as Demo
Join EmployeeSalary as sal
	on Demo.EmployeeID = sal.EmployeeID
Group By FirstName, LastName, Gender, Salary
