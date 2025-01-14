-- commands to create database
create database school;
use school;
create table students(rollno int primary key,name varchar(20),marks int,grade varchar(30));

-- desc shows the details of students inside the table
desc students;

-- alter is used to add new column inside already create table
alter table students add division varchar(10);

-- drop column is used to delete a column from existing table
alter table students drop column division;

-- ranaming the table
rename table students to students_details;

-- create another table in same database 
create table  students_full_details(phone_no int primary key,email_id varchar(20));

-- modify the data type in one of column
alter table students_full_details modify phone_no varchar(25);

-- add row detais to  students_contact_detais table
insert into students_full_details values( 8114355677,"tinku@gmail.com");
insert into students_full_details values( 8814875567,"tom123@gmail.com");
insert into students_full_details values( 9814875557,"anu@gmail.com");
insert into students_full_details values( 9914875560,"vivek@gmail.com");

select * from students_full_details;


-- truncate is used to remove all rows 
truncate table students_full_details;

-- drop command is used to delete table
drop table students_full_details;

insert into students_details values(1,"tharique",98,"5std");
insert into students_details values(2,"tom",94,"7std");
insert into students_details values(3,"emil",98,"9std");
insert into students_details values(4,"rony",91,"5std");

-- assaignment question--
-- 1) use the command to display the table
select * from students_details;

-- 2) add a column named contact to student table
alter table students_details add column contact int;

-- 3) remove the grade column from student table 
alter table students_details drop column grade;

-- 4)rename table to classten
 rename table students_details to classten;
 
-- 5)delete all rows from table
 truncate table students_details;
 
-- 6) remove the table from database
 drop table students_details;
 

