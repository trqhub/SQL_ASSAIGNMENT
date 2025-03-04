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
select country_name,avg(populationrating) as avg_rating
from persons
group by country_name
having avg(populationrating) > 3.0;

# 4Find the countries with the same rating as the USA. (Use Subqueries)
select country_name,avg(populationrating) as avg_rating
from persons
group by country_name
having avg(populationrating) =(
select avg(populationrating) from persons where country_name = 'usa');

#5 Select all countries whose population is greater than the average population of all nations.
select country_name,population from country
where population > (select avg(population) from country);

#partB
#Create a database named Product and create a table called Customer with the following fields in the Product database: Customer_Id - Make PRIMARY KEY First_name Last_name Email Phone_no Address City State Zip_code Country
create table customer(
customer_id int primary key,
first_name varchar(30),
last_name  varchar(30),
Email VARCHAR(100),
Phone_no VARCHAR(20),
Address VARCHAR(255),
City VARCHAR(50),
State VARCHAR(50),
Zip_code VARCHAR(10),
Country VARCHAR(50)
);


#1 Create a view named customer_info for the Customer table that displays Customer’s Full name and email address. Then perform the SELECT operation for the customer_info view.
create view custumer_info as
select concat(first_name,' ',last_name) as full_name,
email
from customer;

#2 Create a view named US_Customers that displays customers located in the US
create view us_customers as select * from
Customer
where country = 'us';

#3 Create another view named Customer_details with columns full name(Combine first_name and last_name), email, phone_no, and state.
CREATE VIEW Customer_details AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name,
       Email,
       Phone_no,
       State
FROM Customer;

#4 Update phone numbers of customers who live in California for Customer_details view
update customer
set phone_no = 'new number'
where state = 'california';

#5 Count the number of customers in each state and show only states with more than 5 customers
select state, count(*) as num_customers
from customer
group by state 
having count(*) > 5;

#6 Write a query that returns all the columns from the "customer_details" view, sorted by the "state" column in ascending order.
SELECT *
FROM Customer_details
ORDER BY State ASC;












