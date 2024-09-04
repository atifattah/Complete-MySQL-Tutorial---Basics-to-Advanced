-- LIKE STATEMENT --
-- % and _ --

SELECT * FROM
employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT * FROM
employee_demographics
WHERE first_name LIKE '%er%';

SELECT * FROM
employee_demographics
WHERE first_name LIKE 'A%';

SELECT * FROM
employee_demographics
WHERE first_name LIKE 'a__';

SELECT * FROM
employee_demographics
WHERE first_name LIKE 'a___%';

SELECT * FROM
employee_demographics
WHERE birth_date LIKE '1989%';