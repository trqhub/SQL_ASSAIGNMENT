create database sales;
use sales
create table manager(manager_id int primary key,firstname varchar (20) not null,lastname varchar (20) ,dob date,age int check(age>18), gender varchar(1),department varchar(20),salary int not null);

#1
insert into Manager values(2,'Sherin','T','2003-10-9',21,'F','Finance',17500),
(12,'Melvin','kumar','1990-5-9',30,'M','HR',30000),
(15,'Babu','k','1980-2-18',44,'M','IT',155000),
(107,'Arun','Thomas','2004-1-1',21,'M','Finance',15000),
(51, 'Arjun', 'Kumar', '1998-05-15', 26, 'M', 'HR', 32000),
(661, 'Priya', 'Sharma', '1999-08-22', 25, 'F', 'IT', 28000),
(41, 'Ravi', 'Verma', '2001-01-10', 23, 'M', 'IT', 25000),
(61, 'Sneha', 'Iyer', '1997-11-05', 27, 'F', 'Finance', 35000),
(21, 'Manoj', 'Desai', '2000-04-18', 24, 'M', 'IT', 19000);
insert into Manager values(35,'Aalia','Nazrin','1995-8-5',29,'F','Finance',25000);

select * from manager;

#2
select firstname,lastname, dob,manager_id from manager;

#3
select firstname,lastname,salary*12 as annual_salary from manager;

#4
select * from manager
where firstname not like 'aalia';

#5
select * from manager
where salary>25000 and department like 'IT';

#6
select * from manager
where salary >=1000 and salary<=30000;

