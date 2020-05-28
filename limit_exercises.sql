USE employees;

SELECT DISTINCT title FROM titles;

-- List the first 10 distinct last name sorted in descending order.

SELECT DISTINCT last_name from employees
order by last_name desc
limit 10;

-- Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql. Update it to find just the first 5 employees.

SELECT *
FROM employees
WHERE (hire_date LIKE '199%' AND birth_date LIKE '%12-25')
ORDER BY birth_date, hire_date desc
LIMIT 5;

-- Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the query to find the tenth page of results.

SELECT *
FROM employees
WHERE (hire_date LIKE '199%' AND birth_date LIKE '%12-25')
ORDER BY birth_date, hire_date desc
LIMIT 5 OFFSET 45;