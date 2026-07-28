-- sub query  (query within a query)
-- subquery is also known as nested query in which a query is present in another query

create database corr_db;
use corr_db;

create table employee_c ( id int, name varchar(20), salary int);

insert into employee_c values(1, 'a', 100), (2,'b',250), (3,'c',400),(4,'d',300);

-- highest salary kya hai
select max(salary) from employee_c;

select * from employee_c where salary=400;

select min(salary) from employee_c;
select * from employee_c where salary = 100;

--- - outer query
-- (inner query)-- nested query subquery

select max(salary) from employee_c; -- 400

select *

insert into employee_c values(5, 'aman', 250);

select * from employee_c where salary=(select salary from employee_c where name = 'b' );



 use world;
 select * from city;
-- get the name of the city where the district of the city same for the city abu dhabi ,
-- get all the columns from the city tables where the population is the maximum ,
-- get the district and the name of the city where the country code is same for herad,
-- get the district city and  the population for all the countries where amsterdam and sort this data by this population

select name from city
where district = (select district from city where name = 'Abu dhabi');

select * from city 
where population = (select max(population) from city);

select district , name from city 
where countrycode = (select countrycode from city where name = 'herad');


select district ,name ,population from city
where countrycode = (select countrycode from city where name = 'amsterdam');
order by population ASC;
