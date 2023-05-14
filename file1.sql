#session 1
/*
1. SQL create databases
2. SQL drop databases
3. SQL create table
4. SQL Insert into table
5. SQL Drop table
*/
show databases;
use performance_schema;
show tables;
select * from users;

create database customers;
#drop databse customers;
use customers;

create table info(id integer, first_name varchar(10), last_name varchar(10));
show tables;

select * from info;

insert into info(id, first_name, last_name) values('1', 'prateek', 'Sharma');

drop table info;

show tables;

drop database customers;
