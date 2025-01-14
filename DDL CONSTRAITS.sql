-- database creation
create database sales;
use sales;

-- creating new table under database
create table orders(
order_id int primary key not null unique,
custumer_name varchar(20),
product_category varchar(20),
ordered_item varchar(20),
contact_no varchar(20));

-- 1)add a new column named "order_quantity" to the order table.
alter table orders add column order_quantity int;

-- 2)rename the order table to the sales_orders table ;
rename table orders to sales_orders;

-- 3)insert 10 rows into the sales order table.
insert into sales_orders values(2344,"tharique","phone","s23",9976457874,1);
insert into sales_orders values(2344,"tharique","phone","s23",9976457844,1);
insert into sales_orders values(2347,"adhil","phone","iphone",8176457844,3);
insert into sales_orders values(2348,"neha","phone","poco",9976434544,1);
insert into sales_orders values(2349,"vinu","tv","samsung",9976457244,1);
insert into sales_orders values(2350,"afra","phone","iphone",9976452344,2);
insert into sales_orders values(2351,"remya","tv","lg",8899457844,1);
insert into sales_orders values(2352,"fasal","phone","vivo",9973257844,1);
insert into sales_orders values(2360,"rahul","phone","vivo",9973257844,1);
insert into sales_orders values(2362,"manu","phone","oppo",9973257844,1);


-- to display all the records
select * from sales_orders;

-- 4) retreive custumer_name and ordered_item from the sales_orders table.
select custumer_name,ordered_item from sales_orders;

-- 5)use the update command to change the name of the product for any row
set sql_safe_updates = 0;
update sales_orders set ordered_item = 'iphone16'where ordered_item = 'iphone';

-- 6)delete the sales_order table from the database.
drop table sales_orders;

