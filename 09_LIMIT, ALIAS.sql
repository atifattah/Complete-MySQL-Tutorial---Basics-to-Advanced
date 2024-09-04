-- LIMIT & ALIAS --

SELECT * FROM
employee_demographics
LIMIT 3;

SELECT * FROM
employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

-- ALIASING --

SELECT gender,  AVG(age) as average_age
from employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;