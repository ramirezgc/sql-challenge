-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        emp.sex,
        sal.salary
FROM employees as emp
    LEFT JOIN salaries as sal
    ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT  first_name,
        last_name,
        hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31'
ORDER BY hire_date;

-- 3. List the manager of each department with the following information: department number, department name, 
--    the manager's employee number, last name, first name.

SELECT  dept.dept_no,
		dept.dept_name,
		dm.emp_no,
		emp.last_name,
		emp.first_name
FROM departments as dept
	LEFT JOIN dept_manager as dm
	ON (dept.dept_no = dm.dept_no)
	LEFT JOIN employees as emp
	ON (dm.emp_no = emp.emp_no)
ORDER BY emp.emp_no;

-- 4. List the department of each employee with the following information: 
--    employee number, last name, first name, and department name.

SELECT  emp.emp_no,
		emp.last_name,
		emp.first_name,
		dept.dept_name
FROM departments as dept
	LEFT JOIN dept_emp as de
	ON (dept.dept_no = de.dept_no)
	LEFT JOIN employees as emp
	ON (de.emp_no = emp.emp_no)
ORDER BY emp.emp_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT	first_name,
		last_name,
		sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, 
--    last name, first name, and department name.

SELECT  emp.emp_no,
		emp.last_name,
		emp.first_name,
		dept.dept_name
FROM departments as dept
	JOIN dept_emp as de
	ON (dept.dept_no = de.dept_no)
	JOIN employees as emp
	on (de.emp_no = emp.emp_no)
WHERE dept.dept_name = 'Sales'
ORDER BY emp.emp_no;


-- 7. List all employees in the Sales and Development departments, including their employee number, 
--    last name, first name, and department name.

SELECT  emp.emp_no,
		emp.last_name,
		emp.first_name,
		dept.dept_name
FROM departments as dept
	JOIN dept_emp as de
	ON (dept.dept_no = de.dept_no)
	JOIN employees as emp
	on (de.emp_no = emp.emp_no)
WHERE dept.dept_name = 'Sales'
OR dept.dept_name = 'Development'
ORDER BY emp.emp_no;

-- 8. In descending order, list the frequency count of employee last names, i.e.,  
--    how many employees share each last name.

SELECT last_name, COUNT (last_name) as "name_frequency"
FROM employees
GROUP BY last_name
ORDER BY name_frequency DESC;

-- Epilogue

SELECT * FROM employees 
WHERE emp_no = 499942;

