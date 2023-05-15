/*
SQL constraints
not null
unique
primary key
foriegn key
check
default
index
*/
#create database customer;
use customer;
# NOT NULL constraint 
create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null, 
age int

);
desc student;

alter table student modify age int not null;

# unique

create table person(
id int not null,
first_name varchar(25) not null, 
last_name varchar(25) not null, 
age int not null, 
unique(id)
);
# i know that id value has to be unique

insert into person values(1, 'k', 'l', 33);
select * from person;

alter table person
add unique(first_name);

desc person; 
# how to drop a uniue constraint

alter table person
add constraint uc_person unique(age, first_name);
desc person;
# drop index
alter table person
drop index uc_person;

-- primary key
create table person1(
id int not null, 
first_name varchar(25) not null,
last_name varchar(25),
age int, 
constraint pk_person primary key(id, last_name)
);
desc person1;


alter table person1
drop primary key


