USE employees;
SELECT first_name, last_name,emp_no,hire_date
FROM employees
WHERE hire_date IN (SELECT hire_date
FROM employees
WHERE emp_no =101010);

SELECT t.title, e.first_name
FROM employees as e
JOIN titles as t
ON e.emp_no = t.emp_no
WHERE e.emp_no IN ( SELECT e.emp_no
FROM employees
WHERE e.first_name IN (SELECT e.first_name
FROM employees
WHERE e.first_name LIKE 'Aamod'));

SELECT e.first_name, e.last_name
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
WHERE e.gender LIKE 'f'
AND dm.to_date ='9999-01-01';

SELECT d.dept_name
FROM departments as d
JOIN dept_manager as dm
ON d.dept_no = dm.dept_no
JOIN employees as e
ON dm.emp_no = e.emp_no
WHERE e.first_name IN(
SELECT e.first_name
WHERE e.gender LIKE 'f'
AND dm.to_date ='9999-01-01');

SELECT e.first_name,e.last_name, e.emp_no
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no
WHERE e.emp_no IN (SELECT emp_no
FROM salaries
ORDER BY salary DESC)
LIMIT 1;