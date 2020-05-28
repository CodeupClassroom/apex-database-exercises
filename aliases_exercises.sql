use employees;

# full_name                   | DOB        |
-- 10001 - Facello, Georgi     | 1953-09-02
select concat(emp_no, ' - ', last_name, ', ', first_name) as 'full_name', birth_date as 'DOB'
from employees limit 10;