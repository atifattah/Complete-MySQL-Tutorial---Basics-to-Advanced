-- CASE STATEMENTS --

-- DEMOGRAPHIC DATA --

SELECT 
first_name ,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door" 
END as Age_Group
FROM employee_demographics;

SELECT 
    first_name,
    last_name,
    age,
    CASE
        WHEN age <= 30 THEN 'Young'
        WHEN age BETWEEN 31 AND 50 THEN 'Old'
        WHEN age >= 50 THEN 'On Death\'s Door'
    END AS age_group
FROM
    employee_demographics;
    
-- SALARY TABLE --    

-- Pay Inrease and Bonus % --

-- < 50000 = 5 %
-- > 50000 = 7 %
-- Finance = 10 % Bonus

SELECT 
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary < 50000 THEN salary + (salary * 0.05)
        WHEN salary >= 50000 THEN salary + (salary * 0.07)
    END AS New_Salary,
    CASE
		WHEN dept_id = 6 then salary + (salary * 0.10)
	END AS Bonus
FROM
    employee_salary;