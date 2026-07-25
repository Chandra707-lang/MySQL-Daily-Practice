use world;

-- handle null values

-- if null  tells if null is persent or not

select name,indepyear,indepyear+100,ifnull(indepyear,0) from country;

-- coalesce() it return first not null value

select name,indepyear,lifeexpectancy,coalesce(indepyear,lifeexpectancy,name) from country;

select * from country;

select name, coalesce(indepyear) from country;

-- case statment

select name, population,indepyear, if(indepyear>1947,'After India','before india') from country;

select name, population,indepyear, if(indepyear>1947,'After India',
if(indepyear>1920,'just before india','before india')) from country;

select name,population,indepyear,
case 
when indepyear>1947 then 'after 1947'
when indepyear>=1919 then 'only after 1919'
else 'else condition'
end
from country;

-- country name ,popu create a colum catogry if population 200000 to 5 l avg,popu>5l larg, small

select name,population,
case 
when population between 200000 and 500000 then 'avg'
when population>500000 then 'larg'
else 'small' 
end as category
from country;

-- print the continent name and the no countrys with the category of the continent column if no contry>10
-- small ,15< avg, 15< larg 
select * from country;
select continent, count(*) as NoOfCountry,
case 
when count(*) > 20 then 'larg'
when count(*) > 10 then 'avg'
else 'small' 
end as category 
from country group by continent;

-- sub query  (query within a query)

