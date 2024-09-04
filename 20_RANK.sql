-- RANK --

select dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) as row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) as rank_num
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;