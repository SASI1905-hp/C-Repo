-- Select Queries Examples
-- SELECT basic examples
SELECT * FROM employees;
SELECT emp_id, emp_name, salary FROM employees;
SELECT emp_name, department FROM employees WHERE salary > 50000;
SELECT DISTINCT department FROM employees;
SELECT emp_name FROM employees ORDER BY salary DESC;
SELECT TOP 5 emp_name, salary FROM employees;
SELECT COUNT(*) as total_employees FROM employees;
SELECT SUM(salary) as total_salary FROM employees;
SELECT AVG(salary) as avg_salary FROM employees;
SELECT department, COUNT(*) FROM employees GROUP BY department;
SELECT department, SUM(salary) FROM employees GROUP BY department HAVING SUM(salary) > 100000;
SELECT e.emp_name, d.dept_name FROM employees e JOIN departments d ON e.dept_id = d.dept_id;
SELECT * FROM employees WHERE emp_name LIKE 'A%';
SELECT * FROM employees WHERE emp_id IN (1, 2, 3);
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 60000;
