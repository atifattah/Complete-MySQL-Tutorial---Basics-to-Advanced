-- ROW NUMBER --

select dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER()
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER(PARTITION BY gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;