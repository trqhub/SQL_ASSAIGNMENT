#1 Add a new column called DOB in Persons table with data type as Date
use sys;
alter table persons
add DOB date;

#2 Write a user-defined function to calculate age using DOB.
delimiter //
create function age(dob date)
returns int
deterministic
begin
return timestampdiff(year,dob,curdate());
end //
delimiter ;
select fname, age(dob) as age from persons;

#3  Write a select query to fetch the Age of all persons using the function that has been created.
select fname,lname,Dbo.calculate(DOB) as age from persons;

#4 Find the length of each country name in the Country table.
select country_name, length(country_name) as counrty_length from country;


#6 Extract the first three characters of each country's name in the Country table. 
select country_name,left(country_name,3) as exractname from country;

#7 Convert all country names to uppercase and lowercase in the Country table.
select country_name, upper(country_name) from country;
select country_name, lower(country_name) from country;