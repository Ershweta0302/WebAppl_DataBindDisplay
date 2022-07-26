create database WebAppliApi260722

use WebAppliApi260722

create table Employee
(
Id int primary key identity,
Name varchar(50),
Gender varchar(50),
Email varchar(50),
Phone varchar(50),
Country varchar(50),
Salary int 
)

select * from Employee