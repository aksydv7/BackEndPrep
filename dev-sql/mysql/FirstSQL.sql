create database InfyDb;
create database if not exists InfyDb;
use InfyDb;
show tables;
create table employee(
EmpID INT primary key auto_increment,
Empname varchar(100) not null,
EmailID varchar(100) unique,
DOB date,
registered_on timestamp default current_timestamp);

create table Projects(
Project_ID INT primary key auto_increment,
Project_Name varchar(200) not null,
Credit_hours INT default 3);

create table EmployeeProjects(
EMP_proj_ID INT primary key auto_increment,
Emp_ID INT,
Project_ID INT,
Project_date date default (current_date),

foreign key (Emp_ID) references employee (EmpID),
foreign key (Project_ID) references Projects (Project_ID)
);

insert into employee (Empname, EmailID, DOB) values
("Akash", "akash03@gmail.com", '2001-01-05'),
("Utkarsha", "utkarsha17@gmail.com", '2000-01-17'),
("Eric", "eric00@gmail.com", '2024-12-17'),
("Laxman", "laxman05@gmail.com", '1970-08-05'),
("Maya", "maya17@gmail.com", '1982-05-17');

select * from employee;

insert into Projects (Project_Name, Credit_hours) values
("FNBO", 9),
("Northern Trust", 10);

select * from Projects;

insert into EmployeeProjects (Emp_ID, Project_ID) values
(1,1),
(2,2),
(3,1),
(3,2),
(4,2),
(5,1);

select * from EmployeeProjects;

desc employees;
show databases;
use infydb;

alter table employee add temp INT;
alter table employee modify temp INT(10);
alter table employee change temp emp_temp varchar(20);
rename table employee to Employees;

