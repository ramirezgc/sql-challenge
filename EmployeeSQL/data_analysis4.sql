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
