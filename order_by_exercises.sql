USE employees;
SELECT emp_no,first_name,last_name
FROM employees
WHERE first_name='Irena'
   OR first_name='Vidya'
   OR first_name='Maya'
ORDER BY last_name desc, first_name desc;
SELECT emp_no,first_name,last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e'
ORDER BY emp_no desc;
SELECT emp_no,first_name,last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';
SELECT emp_no,first_name,last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';