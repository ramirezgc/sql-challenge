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
