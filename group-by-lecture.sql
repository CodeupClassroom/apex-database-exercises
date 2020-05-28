use employees;

describe employees;

select distinct gender from employees limit 10;

select gender, count(gender) as 'results'
from employees
group by gender;


select first_name, count(first_name) as repeats
from employees
group by first_name
order by repeats asc limit 1;