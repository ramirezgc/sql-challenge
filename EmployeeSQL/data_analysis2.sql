SELECT  first_name,
        last_name,
        hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31'
ORDER BY hire_date;
