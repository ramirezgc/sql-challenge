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
		