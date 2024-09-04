-- JOINS -- 

SELECT * FROM
employee_demographics;

SELECT * FROM
employee_salary;

-- INNER JOIN --

SELECT * 
FROM employee_demographics 
INNER JOIN employee_salary 
	ON employee_demographics.employee_id = employee_salary.employee_id
;

SELECT * 
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- OUTER JOIN -- 
-- LEFT OUTER JOIN & RIGHT OUTER JOIN--

-- LEFT JOIN--

SELECT *
FROM employee_demographics as dem
LEFT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- LEFT OUTER JOIN -- 

SELECT *
FROM employee_demographics as dem
LEFT OUTER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- RIGHT JOIN -- 

SELECT *
FROM employee_demographics as dem
RIGHT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- RIGHT OUTER JOIN -- 

SELECT *
FROM employee_demographics as dem
RIGHT OUTER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- SELF JOIN --

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	 ON emp1.employee_id + 1 = emp2.employee_id
;

SELECT 
emp1.employee_id as emp_name1,
emp1.first_name as emp_first_name,
emp1.last_name as emp_last_name,
emp2.employee_id as emp_name2,
emp2.first_name as emp_first_name,
emp2.last_name as emp_last_name
FROM employee_salary emp1
JOIN employee_salary emp2
	 ON emp1.employee_id + 1 = emp2.employee_id
;

-- JOINING MULTIPLE TABLES TOGETHER -- 

SELECT *
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;


SELECT *
FROM parks_departments
;

SELECT *
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id;