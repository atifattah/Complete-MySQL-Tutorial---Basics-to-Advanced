-- CONCAT --

SELECT first_name, last_name,
CONCAT(first_name, " ", last_name) as full_name
FROM employee_demographics;