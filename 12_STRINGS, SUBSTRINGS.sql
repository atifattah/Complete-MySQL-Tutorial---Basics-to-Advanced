-- STRING FUNCTIONS --

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2 
;

SELECT UPPER('skyfall');

SELECT LOWER('SKYFALL');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
ORDER BY 2 
;

SELECT TRIM('                 skyfall                 ');


SELECT LTRIM('                 skyfall                 ');

SELECT RTRIM('                 skyfall                 ');

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics;

SELECT 
first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) as birth_month,
SUBSTRING(birth_date, 9, 2) as date_of_birth,
SUBSTRING(birth_date, 1, 4) as birth_year
FROM employee_demographics;