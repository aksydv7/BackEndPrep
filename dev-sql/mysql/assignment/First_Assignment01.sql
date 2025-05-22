show databases;
create database student_management_system;
use student_management_system;
select database();

create table students(
student_id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
date_of_birth date,
email varchar(100) unique,
enrollment_date date default (current_date));

insert into students(first_name, last_name, date_of_birth, email) values
("Akash", "Yadav", '2000-11-03', "akash@gmail.com"),
("Utkarsha", "Shirpurkar", '2000-01-17', "utkarsha@gmail.com"),
("Eric", "Shirpurkar", '2024-01-05', "eric@gmail.com");

select * from students;

create table courses (
course_id INT primary key auto_increment,
course_name varchar(100) not null,
course_code varchar(20) unique,
credit_hours INT not null,
department varchar(50));

insert into courses(course_name,course_code,credit_hours,department) values
("SQL_Masters",'010','4',"Database"),
("Python", '011', '5', "Programming"),
("Java", '012', '8', "Programming"),
("Linux", '013','3', "Operating_System"),
("Networking", '014', '2', "Computer_Science");

create table enrollments (
enrollment_id INT primary key auto_increment,
student_id INT,
course_id INT,
enrollment_date date default (current_date),
grade char(2),

foreign key (student_id) references students(student_id),
foreign key (course_id) references courses(course_id));

create table instructors(
instructor_id INT primary key auto_increment,
instructor_name varchar(50) not null,
instructor_experience INT,
instructor_expertise varchar(50),
instructor_degree varchar(100),
instructor_dob date);

create table departments(
department_id int primary key unique,
department_name varchar(100) not null,
department_faculty_count int);


insert into departments(department_id,department_name,department_faculty_count)values
(101, "Programming", 4),
(102, "Database", 3),
(103, "Linux", 1);

select * from departments;

alter table courses add instructor_id int;
desc courses;
alter table courses add foreign key(instructor_id) references instructors(instructor_id);

alter table courses drop instructor_id;








