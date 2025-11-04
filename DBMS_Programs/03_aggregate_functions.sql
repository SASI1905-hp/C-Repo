-- Aggregate Functions Queries
-- COUNT, SUM, AVG, MAX, MIN operations

-- Count total number of employees
SELECT COUNT(*) AS total_employees FROM employees;

-- Sum of all salaries
SELECT SUM(salary) AS total_salary FROM employees;

-- Average salary of employees
SELECT AVG(salary) AS average_salary FROM employees;

-- Maximum salary
SELECT MAX(salary) AS highest_salary FROM employees;

-- Minimum salary
SELECT MIN(salary) AS lowest_salary FROM employees;

-- Count employees by department
SELECT department, COUNT(*) AS employee_count 
FROM employees 
GROUP BY department;

-- Average salary by department
SELECT department, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department 
HAVING AVG(salary) > 50000;

-- Total salary and count grouped by department
SELECT department, COUNT(*) AS emp_count, SUM(salary) AS total_salary 
FROM employees 
GROUP BY department 
ORDER BY total_salary DESC;
