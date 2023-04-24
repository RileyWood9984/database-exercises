USE employees;
SELECT emp_no,first_name,last_name
FROM employees
WHERE first_name='Irena'
   OR first_name='Vidya'
   OR first_name='Maya'
ORDER BY last_name desc, first_name desc;
SELECT CONCAT (first_name,' ',last_name)
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
SELECT datediff(curdate(),hire_date),first_name,last_name,birth_date,hire_date
FROM employees
WHERE birth_date LIKE '%-12-25'
AND hire_date LIKE '199%'
ORDER BY birth_date,hire_date desc;