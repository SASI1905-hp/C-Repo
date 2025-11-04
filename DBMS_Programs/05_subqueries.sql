-- Subqueries
-- Single row subquery, multiple row subquery, correlated subquery

-- Scalar subquery: Find employees with salary above average
SELECT emp_name, salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Multiple row subquery: Find employees in departments with more than 5 people
SELECT emp_name, dept_id 
FROM employees 
WHERE dept_id IN (SELECT dept_id FROM employees GROUP BY dept_id HAVING COUNT(*) > 5);

-- Correlated subquery: Find employees earning more than their department average
SELECT e.emp_name, e.salary 
FROM employees e 
WHERE e.salary > (SELECT AVG(salary) FROM employees WHERE dept_id = e.dept_id);

-- Subquery in FROM clause: Calculate department-wise statistics
SELECT dept_summary.dept_id, dept_summary.avg_salary, dept_summary.emp_count 
FROM (SELECT dept_id, AVG(salary) AS avg_salary, COUNT(*) AS emp_count 
      FROM employees GROUP BY dept_id) AS dept_summary 
WHERE dept_summary.avg_salary > 50000;

-- Nested subquery: Find highest paid employee in each department
SELECT emp_name, salary, dept_id 
FROM employees e 
WHERE salary = (SELECT MAX(salary) FROM employees WHERE dept_id = e.dept_id);
