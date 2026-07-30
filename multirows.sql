-- multirows--
drop database corr_db;
create database corr_db;
use corr_db; 
create table employee_c ( id int, name varchar(20), salary int);

insert into employee_c values(1, 'a', 100), (2,'b',250), (3,'c',400), (4, 'd', 100), (
5, 'a', 300);

select * from employee_c;

select * from employee_c
where salary in (select salary from employee_c where name = 'a');

select * from employee_c
where salary = any (select salary from employee_c where name ='a');


#select * from employee_c where salary > 100. or salary >300