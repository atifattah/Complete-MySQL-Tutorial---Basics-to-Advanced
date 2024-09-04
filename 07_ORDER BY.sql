-- ORDER BY -- 

SELECT * FROM 
employee_demographics;

SELECT * FROM
employee_demographics
ORDER BY first_name;

SELECT * FROM
employee_demographics
ORDER BY first_name DESC;

SELECT * FROM
employee_demographics
ORDER BY gender;

SELECT * FROM
employee_demographics
ORDER BY gender, age DESC;

SELECT * FROM
employee_demographics
ORDER BY 5, 4 DESC;