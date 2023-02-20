--welcome to sql server--
CREATE DATABASE MADHU_2601
create proc table_
as
begin
print 'welcome to sql server'
end
exec table_
create  table DEPARTMENT
(
id int primary key identity,
Departmentname varchar(50),
Location varchar(100),
Department_head varchar(50)
)
insert into DEPARTMENT values
('it','london','ARJUN'),
('payroll','delhi','SOWMIYA'),
('hr','newyork','GEETHA')
create table Employee
(
Id int primary key identity,
name varchar(50),
Gender varchar(50),
Salary int,
DepartmentId int foreign key references DEPARTMENT(id)
)
insert into Employee values
('tom','male',3300,1),
('pam','female',4400,2),
('john','male',5000,3),
('sam','male',4000,2)
select * from Employee

-----2nd question--
create proc table2(@gender varchar(50),@departmentid int)
as
begin
select name,Gender,Salary from Employee 
where @gender=Gender and @DepartmentId=DepartmentId
end
exec table2 'male',2
drop proc table2

---3rd question---

create proc hexa(@gender varchar(10),@departmentid int,@totalcount int output )
as 
begin
select name,gender,salary from Employee
where @gender=Gender and @DepartmentId=DepartmentId
select @totalcount=@@rowcount
end
declare @count int;
exec hexa @gender='male',@departmentid=2,@totalcount=@count output
select @count as'number of employees'
select * from Employee

----4th question---

create proc Hexa2(@gender varchar(50))
as 
begin
select count(gender) from Employee
where @gender=gender
end
 
 exec hexa2 'male'
 drop proc adding_numbers

 ---5th question---
 create proc adding_numbers(@num1 int=0,@num2 int=0 ,@num3 int=0)
 as
 begin
 declare @result int
 set @result=@num1+@num2+@num3
 select @result as [sum]
 end

 exec adding_numbers 10,11