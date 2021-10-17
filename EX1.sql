SELECT 
   e.gender, d.dept_name, AVG(s.salary) as average_salary
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender, dept_name
ORDER BY average_salary DESC, dept_name, gender;