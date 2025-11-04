-- JOIN Queries
-- INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN

-- INNER JOIN: Get employees and their departments
SELECT e.emp_id, e.emp_name, d.department_name 
FROM employees e 
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- LEFT JOIN: All employees with their departments (including those without dept)
SELECT e.emp_id, e.emp_name, d.department_name 
FROM employees e 
LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- RIGHT JOIN: All departments with their employees
SELECT d.department_name, e.emp_name 
FROM employees e 
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- Multiple INNER JOINs: Employee, Department, and Project info
SELECT e.emp_name, d.department_name, p.project_name 
FROM employees e 
INNER JOIN departments d ON e.dept_id = d.dept_id 
INNER JOIN projects p ON e.emp_id = p.emp_id;

-- LEFT JOIN with WHERE clause: Find employees in specific departments
SELECT e.emp_id, e.emp_name, d.department_name 
FROM employees e 
LEFT JOIN departments d ON e.dept_id = d.dept_id 
WHERE d.department_name LIKE '%IT%' OR d.department_name IS NULL;
