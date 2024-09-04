-- Common Table Expressions (CTEs) --

WITH CTE_EXAMPLE as
(
select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal, count(salary) as count_sal
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
)
select round(avg(avg_sal), 2) as average_salary
from CTE_EXAMPLE;

WITH CTE_EXAMPLE as
(
select employee_id, gender, birth_date
from employee_demographics 
where birth_date > '1985-01-01'
),
CTE_EXAMPLE2 as
(
select employee_id, salary 
from employee_salary
where salary > 50000
)
select *
from CTE_EXAMPLE
join CTE_EXAMPLE2
	on CTE_EXAMPLE2.employee_id = CTE_EXAMPLE.employee_id;
    
WITH CTE_EXAMPLE (Gender, AVG_SAL, MAX_SAL, MIN_SAL, COUNT_SAL) as
(
select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal, count(salary) as count_sal
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
)
select *
from CTE_EXAMPLE;