select JobTitle, count(Jobtitle), Avg(age), avg(Salary)
from EmployeeDemographics
join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle
--having avg(Salary) > 20000
--order by avg(Salary) desc

--select *
--from EmployeeDemographics

--update EmployeeDemographics
--set Age = 20
--where EmployeeID = 1002

--delete from EmployeeDemographics
--where EmployeeID = 1003


--select Avg(Age) as AVGAGE
--from EmployeeDemographics

--With CTE_Employee as
--(Select FirstName, LastName, Gender, Salary,
--Count(Gender) over (Partition by Gender) as totalGender ,
--Avg(Salary)over (Partition by Gender) as AvgSalary
--from EmployeeDemographics
--join EmployeeSalary
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--where Salary > '20000'
--)
--Select *
--From CTE_Employee

--create table #temp_Employee
--(EmployeeID int,
--Jobtitle varchar(100),
--Salary int)

--Select *
--from #temp_Employee

--insert into #temp_Employee values (
--'1000', 'Hr', '45000')

--insert into #temp_Employee
--select *
--from EmployeeSalary

----delete from #temp_Employee
----where EmployeeID = 1000
--drop table if exists #temp_Employee2

create table #Temp_Employee2
(Jobtitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

insert into #Temp_Employee2
select JobTitle, count(Jobtitle), Avg(age), avg(Salary)
from EmployeeDemographics
join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle

Select *


--select *
--from #Temp_Employee2

create table EmployeeErrors 
(EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)
Insert into EmployeeErrors values
('1001', 'Jimbo', 'Halbert'),
('1002', 'Pamela', 'Basel'),
('1003', 'Toby', 'Frel')

--Update EmployeeErrors
--Set EmployeeID = '  1002'
--where EmployeeID = 1002

Select *
from EmployeeErrors
 
 Select Lastname, REPLACE(LastName, 'Frel' , 'Flenderson') as LastNameFix
 From EmployeeErrors

 Select SUBSTRING(Firstname,1,4)
 from EmployeeErrors

 --Select FirstName , Lower(Firstname)
 --from EmployeeErrors

 -- Select FirstName , upper(Firstname)
 --from EmployeeErrors

 Create Procedure Temp_employee
 as
create table #Temp_Employee2
(Jobtitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

create procedure  Test
as
select*
from EmployeeDemographics

exec Temp_employee

