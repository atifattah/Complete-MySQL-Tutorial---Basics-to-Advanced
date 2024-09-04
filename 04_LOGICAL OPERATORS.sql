-- LOGICAL OPERATORS --
-- AND OR NOT OPERATORS --

SELECT * FROM
employee_demographics
WHERE birth_date > '1985-01-01'
and gender = 'male'
;

SELECT * FROM
employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

SELECT * FROM
employee_demographics
WHERE (first_name = 'Leslie' and age = 44) OR age > 55;
