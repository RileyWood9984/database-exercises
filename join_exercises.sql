USE employees;
SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name,' ',e.last_name)AS `Department Manager`
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name,' ',e.last_name)AS `Department Manager`
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE to_date = '9999-01-01'
AND e.gender='f'
ORDER BY d.dept_name;

SELECT t.title, COUNT(t.title) AS 'Total'
FROM titles AS t
JOIN dept_emp AS de
ON t.emp_no=de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE de.dept_no ='d009'
AND t.to_date = '9999-01-01'
GROUP BY title;


SELECT d.dept_name
AS `Department Name`,CONCAT(e.first_name,' ',e.last_name)
AS `Department Manager`, s.salary
AS'Salary'
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
JOIN salaries AS s
ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date ='9999-01-01'
ORDER BY d.dept_name;

SELECT CONCAT(e.first_name,' ',e.last_name)
AS `Employee`,d.dept_name
AS 'Department',CONCAT(emp.first_name,' ',emp.last_name)
AS `Manager`
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
JOIN dept_manager AS dm
ON de.dept_no = dm.dept_no
JOIN employees as emp
ON dm.emp_no=emp.emp_no
WHERE de.to_date='9999-01-01'
AND dm.to_date='9999-01-01'
order by d.dept_no desc;
