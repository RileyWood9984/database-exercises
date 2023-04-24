USE employees;
SELECT emp_no,first_name,last_name
FROM employees
WHERE first_name IN('Irena','Vidya','Maya');
SELECT emp_no,first_name,last_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%e';
SELECT emp_no,first_name,last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';