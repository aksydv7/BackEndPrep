show databases;
create database if not exists studentDb;
use studentDb;
show tables;

create table students(
std_id int primary key auto_increment,
std_namme varchar(30) not null,
std_email varchar(30) unique,
std_dob date,
std_registered_on timestamp default current_timestamp);

create table courses(
course_id int primary key auto_increment,
course_name varchar(50) not null,
course_credit_hours int default 3);

create table enrollments(
enroll_id int primary key auto_increment,
std_id int,
course_id int,
enrollment_date date default(current_date),

foreign key (std_id) references students(std_id),
foreign key (course_id) references courses(course_id));

show tables;
select database();

insert into students(std_name,std_email,std_dob) values
("Akash Yadav", "akash@gmail.com",'2000-11-03' ),
("Utkarsha", "utkarsha@gmail.com", '2000-01-17'),
("Himanshu Deshmukh", "himanshudeshmukh@gmail.com", '1999-09-26'),
("Arick", "arick@gmaiil.com", '2014-10-20');

select * from students;

insert into courses(course_id, course_name, course_credit_hours) values
(101, "SQL Masters", 13),(102, "Python Data Structur", 15);

select * from courses;

insert into enrollments(enroll_id, std_id, course_id) values
(1311, 1, 102),(1312, 2, 101), (1313, 2, 102);

select * from enrollments;



desc students;
alter table students change std_namme std_name varchar(30);

desc courses;
alter table courses modify course_name varchar(100);
alter table courses add temp varchar(10);
alter table courses add dummy_data binary;
alter table courses drop dummy_data;
alter table courses modify temp_data varchar(20);
alter table courses change temp temp_data varchar(20);

rename table enrollments to course_enrillments;

show tables;







