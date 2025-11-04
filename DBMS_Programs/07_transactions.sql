-- Transaction Control Language (TCL)
-- COMMIT, ROLLBACK, SAVEPOINT

-- Basic Transaction: Transfer funds between accounts
BEGIN TRANSACTION;
  UPDATE accounts SET balance = balance - 1000 WHERE account_id = 1;
  UPDATE accounts SET balance = balance + 1000 WHERE account_id = 2;
COMMIT;

-- Transaction with error handling
BEGIN TRANSACTION;
  INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
  VALUES (1001, 5, GETDATE(), 5000);
  
  INSERT INTO order_items (order_id, product_id, quantity, price)
  VALUES (1001, 10, 2, 2500);
  
COMMIT;

-- Rollback example
BEGIN TRANSACTION;
  UPDATE employees SET salary = salary * 1.1 WHERE dept_id = 3;
  
  -- If condition not met, rollback
ROLLBACK;

-- Savepoint example
BEGIN TRANSACTION;
  UPDATE employees SET salary = 60000 WHERE emp_id = 1;
  SAVE TRANSACTION sp1;
  
  UPDATE employees SET salary = 65000 WHERE emp_id = 2;
  SAVE TRANSACTION sp2;
  
  -- Rollback to specific savepoint
  ROLLBACK TRANSACTION sp1;
  
COMMIT;

-- Set transaction isolation level
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;
  SELECT * FROM products WHERE product_id = 5;
COMMIT;
