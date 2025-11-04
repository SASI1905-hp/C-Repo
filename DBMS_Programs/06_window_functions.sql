-- Window Functions (Analytic Functions)
-- ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD, SUM OVER

-- ROW_NUMBER: Assign sequential row numbers
SELECT emp_name, salary, dept_id,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;

-- ROW_NUMBER partitioned by department
SELECT emp_name, salary, dept_id,
       ROW_NUMBER() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS dept_row_num
FROM employees;

-- RANK and DENSE_RANK: Handle ties differently
SELECT emp_name, salary, dept_id,
       RANK() OVER (ORDER BY salary DESC) AS rank_val,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_val
FROM employees;

-- LAG and LEAD: Access previous and next row values
SELECT emp_name, salary,
       LAG(salary) OVER (ORDER BY salary) AS prev_salary,
       LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM employees;

-- SUM OVER: Running total
SELECT emp_name, salary, dept_id,
       SUM(salary) OVER (PARTITION BY dept_id ORDER BY emp_id) AS running_total
FROM employees;

-- AVG OVER: Moving average
SELECT emp_name, salary,
       AVG(salary) OVER (ORDER BY emp_id ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
FROM employees;
