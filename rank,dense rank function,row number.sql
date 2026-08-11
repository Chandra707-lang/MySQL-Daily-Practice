create database windows10db;
 use windows10db;

 
 select * from employee_performance;
 
 select employee_id,employee_name,location,sales_amount,salary,row_number() over(partition by location) from employee_performance;
 
 select employee_id,employee_name,location,sales_amount,salary,rank() over(partition by sales_amount) from employee_performance;
 
  select employee_id,employee_name,location,sales_amount,salary,rank() over(order  by sales_amount) from employee_performance;
 
  select employee_id,employee_name,location,sales_amount,salary,rank() over(order by salary ) from employee_performance;
  
select employee_id,employee_name,location,sales_amount,salary,rank() over(partition by location order by salary desc) from employee_performance;
    
  select employee_id,employee_name,location,sales_amount,salary,dense_rank() over(partition by location order by salary desc) from employee_performance;
  
  select employee_id,employee_name,location,sales_amount,salary,rank() over(partition by location order by sales_amount desc) from employee_performance;
  
  