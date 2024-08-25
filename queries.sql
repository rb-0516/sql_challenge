--List employee number, last name, first name, sex, salary of each employee
SELECT employees.emp_no,
	last_name,
	first_name,
	sex,
	salary
FROM Employees
INNER JOIN Salaries on employees.emp_no = salaries.emp_no;

--  List first name, last name, hire date for the employees hired in 1986
SELECT first_name,
	last_name,
	hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with dept number, dept name, employee number, last name, first name
SELECT departments.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT departments.dept_no,
	dept_employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM departments
INNER JOIN dept_employees ON departments.dept_no = 
dept_employees.dept_no
INNER JOIN employees ON dept_employees.emp_no = employees.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name 

SELECT dept_employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM departments
INNER JOIN dept_employees ON departments.dept_no = 
dept_employees.dept_no
INNER JOIN employees ON dept_employees.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 

SELECT dept_employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM departments
INNER JOIN dept_employees ON departments.dept_no = 
dept_employees.dept_no
INNER JOIN employees ON dept_employees.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;