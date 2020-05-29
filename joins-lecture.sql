use apex_db;

select a.first_name, a.last_name, q.content
from quotes as q
join authors as a on a.id = q.author_id;

select a.first_name, a.last_name, q.content
from quotes as q
left join authors as a on a.id = q.author_id;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);


select u.id, u.name, u.email, r.name
from users as u
join roles as r on u.role_id = r.id;

select *
from users u
left join roles r on u.role_id = r.id;

select *
from users u
right join roles r on u.role_id = r.id;


use employees;


-- Let us try to find the full name and department for the employee with an employee id of 10001:


select concat(e.first_name, ' ', e.last_name) as 'fullname', d.dept_name
from employees as e
join dept_emp as de on de.emp_no = e.emp_no
join departments as d on d.dept_no = de.dept_no
where e.emp_no = 10001;
