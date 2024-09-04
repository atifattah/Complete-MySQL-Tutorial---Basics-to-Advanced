-- EVENTS --

select *
from employee_demographics;

DELIMITER $$
create event delete_retirees
on schedule every 30 second
do
begin
delete 
from employee_demographics
where age >= 60;
end $$
DELIMITER ;

show variables like 'event%';