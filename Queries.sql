--1)List the following details of each employee: 
--employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, 
	employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

--2)List employees who were hired in 1986.
SELECT *
From employees
WHERE hire_date LIKE '1986%'; 

--3)List the manager of each department w/department number, department name, 
--manager's employee number, last name, first name, start and end employment dates
SELECT departments.dept_no, departments.dept_name, dept_mgr.emp_no, 
		employees.last_name, employees.first_name, dept_mgr.from_date, dept_mgr.to_date
FROM departments 
JOIN dept_mgr ON departments.dept_no = dept_mgr.dept_no
JOIN employees ON dept_mgr.emp_no = employees.emp_no;

--4)List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT d.emp_no, e.last_name, e.first_name, departments.dept_name
FROM dept_emp AS d
JOIN employees AS e
ON d.emp_no = e.emp_no
JOIN departments
ON d.dept_no = departments.dept_no;

--5)List all employees whose first name is 
--"Hercules" and last names begin with "B."
SELECT *
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%';

--6)List all employees in the Sales department, including their
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

--7)List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT  d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
JOIN employees AS e
ON de.emp_no = e.emp_no
WHERE d.dept_name LIKE 'Development'
OR d.dept_name LIKE 'Sales';

--10)In descending order, list the frequency count of employee 
--last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;