#session 1
/*
1. SQL create databases
2. SQL drop databases
3. SQL create table
4. SQL Insert into table
5. SQL Drop table
*/
show databases;
use information_schema;
show tables;
select * from ENGINES;

create database customers;
# drop database customers;

# now after creating a databse, we need to create a table
create table info(id integer, first_name varchar(10), last_name varchar(10));
show tables;


