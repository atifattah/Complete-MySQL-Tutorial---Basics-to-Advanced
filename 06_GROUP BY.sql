-- GROUP BY -- 

SELECT gender FROM
employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT * FROM
employee_salary;


SELECT occupation, salary FROM
employee_salary
GROUP BY occupation, salary;