-- SELECT STATEMENT --

SELECT * 
FROM employee_demographics;

SELECT first_name,
last_name,
birth_date,
age,
age + 10
from employee_demographics;

-- PEMDAS

SELECT first_name,
last_name,
birth_date,
age,
(age + 10) * 10 + 10
from employee_demographics;

SELECT DISTINCT first_name, gender
FROM employee_demographics;