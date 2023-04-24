USE employees;
SELECT DISTINCT title FROM titles;
SELECT  first_name,last_name FROM employees
WHERE last_name LIKE 'e%'
AND last_name like '%e'
GROUP BY first_name, last_name;
SELECT COUNT(last_name) AS Total, last_name FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
SELECT COUNT(gender) AS Total, gender FROM employees
WHERE first_name='Irena'
   OR first_name='Vidya'
   OR first_name='Maya'
GROUP BY gender;