use sys;
#1 Perform inner join, Left join, and Right join on the tables. 
select fname,country.population, area from country
left join persons
on country.id=persons.countryid;

select fname,country.population, area from country
inner join persons
on country.id=persons.countryid;

select fname,country.population, area from country
right join persons
on country.id=persons.countryid;

#2 List all distinct country names from both the Country and Persons tables.
select distinct country_name from country
union
select distinct country_name from persons join
persons on country.id=persons.id;


#3List all country names from both the Country and Persons tables, including duplicates. 
select country.country_name,persons.country_name from country
inner join persons
on country.id+persons.id;

#4 Round the ratings of all persons to the nearest integer in the Persons table.
select round(populationrating),fname from persons;