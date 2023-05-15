# Indexing in mysql
# user cannot see the indexes, used to speed up searches. updating index takes time

use customer;
show tables;
 
select * from person;

#create index index_city_name
#on person(city_name);

create table student1(
id int not null, 
first_name varchar(25),
last_name varchar(25),
age int

);
desc student1;

create index index_age
on student1(age);
create index index_age_first_name
on student1(age, first_name);

alter table student1
drop index index_age_first_name;

desc student1
