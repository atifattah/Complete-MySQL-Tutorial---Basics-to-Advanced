-- WINDOWS FUNCTION

SELECT 
    gender, ROUND(AVG(salary), 2) AS average_salary
FROM
    employee_demographics dem
        JOIN
    employee_salary sal ON dem.employee_id = sal.employee_id
GROUP BY gender;

select gender, AVG(salary) OVER(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;


SELECT dem.employee_id, dem.first_name, gender, salary,
AVG(salary) OVER()
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT gender,
AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

select gender, AVG(salary) OVER(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select dem.first_name, dem.last_name, gender, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select dem.first_name, dem.last_name, gender, salary, sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;
