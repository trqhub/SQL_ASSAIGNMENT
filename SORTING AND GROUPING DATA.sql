use sys;

#1 Write an SQL query to print the first three characters of Country_name from the Country table
select substring(country_name,3) from country;

#2 Write an SQL query to concatenate first name and last name from Persons table.
select concat(fname,' ', lname) from persons;

#3 Write an SQL query to count the number of unique country names from Persons table
select count(distinct(country_name)) from persons;

#4 Write a query to print the maximum population from the Country table.
select max(population) from country;

#5 Write a query to print the minimum population from Persons table.
select min(population) from country;

#6 Insert 2 new rows to the Persons table making the Lname NULL
insert into persons (id,fname,populationrating,countryid,country_name) values(22,'KLaus',2,3,'Canada'),(24,'Lukas',3,3,'Canada');
select count (Lname) from persons;

#7 Write a query to find the number of rows in the Persons table
select count(*) from persons;

#8 Write an SQL query to show the population of the Country table for the first 3 rows. (Hint: Use LIMIT)
select country_name,population from country limit 3;

#9 Write a query to print 3 random rows of countries. (Hint: Use rand() function and LIMIT) 
select country_name from country 
order by rand()
limit 3;

#10 List all persons ordered by their rating in descending order
select fname,lname,populationrating from persons
order by populationrating desc;

# 11 Find the total populationrating for each country in the Persons table.
select sum(populationrating),country_name from persons
group by country_name;

#12 Find countries in the Persons table with a total population greater than 50,000
select sum(Population),Country_name from persons
group by Country_name
having sum(Population)>5000000;

#13 List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order.
select country_name,count(id),avg(populationrating) from persons
group by country_name
having count(id)>2
order by avg(populationrating);

