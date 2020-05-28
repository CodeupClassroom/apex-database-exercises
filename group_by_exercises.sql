use employees;

describe titles;

select distinct title
from titles;

select title, count(*)
from titles
group by title;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
group by first_name, last_name
order by last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name not LIKE '%qu%'
group by last_name
order by last_name;

SELECT count(gender), gender
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
group by gender;