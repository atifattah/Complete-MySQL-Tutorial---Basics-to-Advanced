-- STORED PROCEDURES --

select *
from employee_salary
where salary >= 50000;

create procedure higher_salaries ()
select * 
from employee_salary
where salary >= 50000;

create procedure higher_salaries2 ()
select * 
from employee_salary
where salary >= 50000;
select * 
from employee_salary
where salary >= 10000;

DELIMITER $$
create procedure higher_salaries3 ()
BEGIN
	select * 
	from employee_salary
	where salary >= 50000;
	select * 
	from employee_salary
	where salary >= 10000;
END $$
DELIMITER ;

call higher_salaries3;

DELIMITER $$
create procedure higher_salaries4 ()
BEGIN
	select * 
	from employee_salary
	where salary >= 50000;
	select * 
	from employee_salary
	where salary >= 10000;
END $$
DELIMITER ;

call higher_salaries4;

DELIMITER $$
create procedure higher_salaries5 (huggymuffin INT)
BEGIN
	select salary
	from employee_salary
	where employee_id = huggymuffin
    ;
END $$
DELIMITER ;

call higher_salaries5(1);