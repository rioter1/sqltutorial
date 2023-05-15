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
create table customer_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar (25),
salary integer,
primary key(id)
);

select * from customer_info;

insert into customer_info(first_name, last_name_salary)
values
('x', 'y', 50000),
('a', 'b', 60000),
('p', 'q', 70000),
('c', 'd', 40000),
('e', 'f', NULL);

select * from customer_info;

drop database customer;

