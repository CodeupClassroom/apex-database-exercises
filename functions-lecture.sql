use employees;

-- select concat('Fer', ' ', 'Mendoza') AS 'fullname';
select  birth_date, concat(first_name, ' ', last_name, ' ', emp_no) AS 'fullName', gender, hire_date
from employees
limit 10;

select  birth_date, concat_ws(' ', first_name, last_name, emp_no) AS 'fullName', gender, hire_date
from employees
limit 10;

SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%' limit 10;

SELECT distinct first_name
FROM employees
WHERE first_name NOT LIKE '%a%'
order by first_name;

select now() AS 'today';
select curdate();
select curtime();

select UNIX_TIMESTAMP();
SELECT CONCAT(
               'Teaching people to code for ',
               ((((UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 60) / 60) /24) / 365,
               ' years'
           );