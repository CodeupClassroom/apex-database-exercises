USE employees;

-- Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT
    d.dept_name as 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
    JOIN dept_manager as dm
        ON e.emp_no = dm.emp_no
    JOIN departments as d
        ON d.dept_no = dm.dept_no
    WHERE dm.to_date > curdate()
ORDER BY d.dept_name;


# Find the name of all departments currently managed by women.
SELECT
    d.dept_name as 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate() AND e.gender = 'F'
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title as Title, count(titles.emp_no) as Count
FROM titles
JOIN dept_emp de ON titles.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE
      titles.to_date > curdate() AND
      d.dept_name = 'Customer Service' AND
      de.to_date > curdate()
GROUP BY titles.title;


-- Find the current salary of all current managers.
SELECT
    d.dept_name as 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
    s.salary as Salary
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries as s
              ON e.emp_no = s.emp_no
WHERE dm.to_date > curdate() AND
      s.to_date > curdate()
ORDER BY d.dept_name;


