-- INSERT, UPDATE, DELETE Examples
INSERT INTO employees (emp_id, emp_name, salary) VALUES (101, 'John', 50000);
INSERT INTO employees VALUES (102, 'Alice', 60000, 'IT');
INSERT INTO employees (emp_name, salary) SELECT name, wage FROM temp_employees;
UPDATE employees SET salary = 55000 WHERE emp_id = 101;
UPDATE employees SET salary = salary * 1.1 WHERE department = 'IT';
DELETE FROM employees WHERE emp_id = 101;
DELETE FROM employees WHERE salary < 40000;
CREATE TABLE backup AS SELECT * FROM employees;
TRUNCATE TABLE employees;
INSERT INTO employees SELECT * FROM backup;
