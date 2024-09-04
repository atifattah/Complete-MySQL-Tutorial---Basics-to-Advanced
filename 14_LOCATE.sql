-- LOCATE --

SELECT LOCATE('e', 'Alexander');

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;