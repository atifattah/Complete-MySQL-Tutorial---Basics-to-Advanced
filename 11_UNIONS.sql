-- UNIONS --

-- UNION --

SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary;

-- UNION DISTINCT --

SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary;

-- UNION ALL --

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 and gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee'
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;