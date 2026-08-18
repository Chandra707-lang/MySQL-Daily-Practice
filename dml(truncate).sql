-- 17aug (ddl mai create ,alter(add,delet,column name change) ,drop,truncate,update)(dml-update) 


create database testdb6;
-- table structure(ddl)
create table testdb6.employee1(id int);

select * from testdb6.employee1;


drop table testdb6.employee1;-- drop the table(data is removed and also it structured)
select *from testdb6.employee1;

-- ddl(alter)
alter table testdb6.employee1 add column name varchar(20);-- added a column
alter table testdb6.employee1 drop column id;-- dropped a specific column

select*from  testdb6.employee1;

desc testdb6.employee1;
alter table testdb6.employee1 modify column name int;-- changed the data type
alter table testdb6.employee1 add column empid int;-- add a column
desc testdb6.employee1;

alter table testdb6.employee1 add constraint unique(name) ;-- unique constraint

alter table testdb6.employee1 modify column empid int not null ;-- not null on a table column
desc testdb6.employee1;

alter table testdb6.employee1 rename column empid to id1;-- column rename
alter table testdb6.employee1 rename to employee2;-- table rename
desc testdb6.employee2;

-- truncate
select *from testdb6.employee2;
insert into testdb6.employee2 values(100,80);

truncate testdb6.employee2;-- first it drop the table then recreate the table again
select * from testdb6.employee2;

select * from testdb6.employee2;
set sql_safe_updates=0;

-- dml
insert into testdb6.employee2 values(10,199),(13,200),(11,899),(12,5738),(10,10910);
update testdb6.employee2 set name='899';-- will make changes to every row

update testdb6.employee2 set name='7123' where id=199;-- condition
select* from testdb6.employee2; 

delete from testdb6.employee2 where name=10;
select * from testdb6.employee2;
