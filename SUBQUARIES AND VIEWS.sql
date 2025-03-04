use sys;
#1Find the number of persons in each country.
select country_name, count(*) as num_persons 
from persons
group by country_name;

#2 Find the number of persons in each country sorted from high to low
select country_name,count(*) as num_persons
from persons
group by country_name
order by num_persons desc;

#3 Find out an average rating for Persons in respective countries if the average is greater than 3.0
select country_name,avg(rating) as avg_rating
from persons
group by country_name
having avg
