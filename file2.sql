/*
SQL NULL values
SQL update statement
SQL delete Statement
SQL Alter table
-- Add coulmn in existing coulumn
-- 
*/

create database customer;
show databases;
use customer;
# auto_incrememtn if called an sql constraint
create table customer_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar (25),
salary integer,
primary key(id)
);


insert into customer_info(first_name, last_name, salary)
values
('x', 'y', 50000),
('a', 'b', 60000),
('p', 'q', 70000),
('c', 'd', 40000),
('e', 'f', NULL);

select * from customer_info where salary is null;
# sql update statemenet to replace null values
# writing update query
update customer_info set salary=50000 where id=5;
select * from customer_info;

#sql delete statement
delete from customer_info where id=5;

# sql alter table

 # add column in existing table
 
alter table customer_info add email varchar(25);

select * from customer_info;

alter table customer_info add dob date;
select * from customer_info;

# alter table modify coulmn and column type

alter table customer_info modify dob year;
desc customer_info;
select * from customer_info;

# use alter table to drop column

alter table customer_info drop column email;

#drop database customer;



