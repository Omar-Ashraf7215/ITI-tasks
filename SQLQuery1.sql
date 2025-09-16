--create database Sunshine;

--alter database Sunshine modify name = BrightStars;

--sp_renameDB 'BrightStars', 'MoonLight';
--alter database MoonLight set single_user with rollback immediate;

--drop database MoonLight;

--create database PearlySoft;

--use PearlySoft;

--create table Branches
--(
--	Code int,
--	Name varchar(25),
--	City nvarchar(30),
--	Address nvarchar(max)
--);

--sp_rename 'dbo.Branches',
--'LocalBranches';

--alter table LocalBranches add Budget int;

--sp_rename 'LocalBranches.Budget' , 'AnnualBudget';

--alter table LocalBranches alter column AnnualBudget decimal(18,2);

--alter table LocalBranches drop column City;

--drop table LocalBranches;

--create table LocalBranches
--(
--	Code int,
--	Name nvarchar(20),
--	Address nvarchar(max),
--	AnnualBudget decimal(18,2)
--)

--sp_help LocalBranches;

--insert into LocalBranches (Code, Name, Address, AnnualBudget)
--values(1010, 'Cairo 1','37 Alzohoor st', 175000);

--insert into LocalBranches values(1040,'Hurghada 1', '15 Ahmed Farid st.', 165000);

--insert into LocalBranches(Name, AnnualBudget)values('Hurghada 2', 185000);
--insert into LocalBranches(Code, Address) values(1090, '25 Alshorouk st.');

--insert into LocalBranches (Name, Code, AnnualBudget,Address)
--					values ('Luxor',1030, 192000, '29 Nile st.');

--insert into LocalBranches values(1020,'Giza 1', '35 Ali Saad st.',21500),
--								(1060,'Aswan','12 Alnasr st.',197500),
--								(1050,'Cairo 2','19 Algomhoria st.',235000),
--								(null,'Giza 2',null,225000);

--delete from LocalBranches where Code = 1080;

--insert into LocalBranches values(1080, N'القاهره 3 ', N'49 ش محمد سعيد ', 245000);

--select * from LocalBranches;

--select Name, AnnualBudget from LocalBranches;


--update LocalBranches set Name = 'Luxor 1' , AnnualBudget = 235000 where Code = 1030;

--delete from LocalBranches where Code = 1060;

--create unique  clustered index ix_LocalBranchesCode on LocalBranches (Code asc);

--insert into LocalBranches values(1060 , 'Giza 2' , '24 Alshorouk st.' , 188000);
--insert into LocalBranches values(1070 , 'Alexandria' , '15 Sedki st.' , 212000) ;

--sp_helpindex LocalBranches;
--select * from LocalBranches;

--drop index LocalBranches.ix_LocalBranchesCode;
--sp_helpindex LocalBranches;
--select * from Employees where Position = 'Developer';
--select FullName , Position, Country from Employees where Position = 'Developer';

--select * from Employees where Position != 'Developer';
--select * from Employees where Position <> 'Developer';

--select * from Employees where Position = 'Developer' and Country = 'Egypt';
--select * from Employees where Salary >= 10500 and Salary <= 12500;

--select * from Employees where Salary between 10500 and 12500;
--select * from Employees where Salary not between 10500 and 12500;

--select * from Employees where Country = 'Kuwait' or Country = 'Oman';

--select * from Employees where Country in('Kuwait','Oman');
--select * from Employees where Country not in('Kuwait','Oman');

--select FullName as Employee, Position as Job, Country from Employees;
--select FullName as [Full Name], Position as Job, Country from Employees;
--select FullName as 'Full Name', Position as Job, Country from Employees;

--select FullName +'(' +Position +')'as Employees from Employees;

--select * from Employees where FullName like '%Amr Ayman Aly';
--select * from Employees where FullName like 'Amr Ayman Aly%';

--select * from Employees where FullName like 'Ba%';
--select * from Employees where FullName like '%an';
--select * from Employees where FullName like '%am%';

--select * from Employees where FullName like '_sama Mostafa Omar';
--select * from Employees where FullName like 'Amr Ayman Al_';

--select * from Employees where FullName like '[mowz]%';
--select * from Employees where FullName not like '[mowz]%';
--select * from Employees where FullName like '[^mowz]%';

--select * from Employees where FullName like '%[dn]';
--select * from Employees where FullName not like '%[dn]';
--select * from Employees where FullName like '%[^dn]';

--select * from Employees where FullName like '%[ywu]';
--select * from Employees where FullName not like '%[ywu]';

--select * from Employees  order by FullName asc;
--select * from Employees  order by FullName;
--select * from Employees  order by FullName desc;
--select * from Employees  order by Salary asc;
--select * from Employees  order by Salary desc;

--select * from Employees order by Country asc , FullName asc ;
--select * from Employees order by Country asc , Salary desc ;

--select top 3 * from Employees;
--select top 3 * from Employees  order by Salary desc;
--select top 3 * from Employees  order by Salary asc;

--select distinct Country from Employees;
--select distinct Position from Employees;
--select distinct Position, Country  from Employees;

--select distinct top 3 Salary from Employees  order by Salary desc;
--select * from Employees;

--select sum(Salary) as 'Total Salaries' from Employees;
--select sum(Salary) as 'Egypt Salaries' from Employees where Country = 'Egypt' ;
--select sum(Salary) as 'Less than 10000 Salaries' from Employees where Salary < 10000;

--update Employees set Salary = null where Id in(2070,2120); 
--select count(Salary) as 'Number of Salaries' from Employees;
--select count(Salary) as 'Number of less than 10000 Salaries' from Employees where Salary < 10000;
--select count(*) as 'Number of Employees' from Employees;

--select AVG(Salary) as 'Average Salary' from Employees;
--select AVG(Salary) as 'Egypt Average Salary' from Employees where Country = 'Egypt';

--select MAX(Salary) as 'Maximum Salary' from Employees;
--select MIN(Salary) as 'Minimum Salary' from Employees;
