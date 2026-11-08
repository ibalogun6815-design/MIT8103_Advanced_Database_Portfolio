-- BrightBank Banking System
-- Portfolio 1: Sample Banking Data
-- All records are fictional and created for academic purposes.

-- Sample Customers
INSERT INTO Customers
(customer_id, first_name, last_name, email, phone, date_of_birth)
VALUES
(1, 'Amina', 'Yusuf', 'amina.yusuf@example.com', '08030000001', '1992-04-15'),
(2, 'David', 'Okafor', 'david.okafor@example.com', '08030000002', '1988-09-22'),
(3, 'Fatima', 'Bello', 'fatima.bello@example.com', '08030000003', '1995-12-10'),
(4, 'John', 'Adeyemi', 'john.adeyemi@example.com', '08030000004', '1990-06-18'),
(5, 'Grace', 'Ibrahim', 'grace.ibrahim@example.com', '08030000005', '1997-02-25');

-- Sample Accounts
INSERT INTO Accounts
(account_id, customer_id, account_number, account_type, balance, account_status)
VALUES
(101, 1, '1000000001', 'Savings', 150000.00, 'Active'),
(102, 1, '1000000002', 'Current', 250000.00, 'Active'),
(103, 2, '1000000003', 'Savings', 85000.00, 'Active'),
(104, 3, '1000000004', 'Savings', 120000.00, 'Active'),
(105, 4, '1000000005', 'Current', 300000.00, 'Active'),
(106, 5, '1000000006', 'Savings', 65000.00, 'Active');

-- Sample Transactions
INSERT INTO Transactions
(transaction_id, account_id, transaction_type, amount, transaction_status, description)
VALUES
(1001, 101, 'Deposit', 50000.00, 'Successful', 'Initial deposit'),
(1002, 101, 'Withdrawal', 10000.00, 'Successful', 'Cash withdrawal'),
(1003, 102, 'Deposit', 100000.00, 'Successful', 'Salary payment'),
(1004, 103, 'Deposit', 25000.00, 'Successful', 'Savings deposit'),
(1005, 104, 'Withdrawal', 5000.00, 'Successful', 'ATM withdrawal'),
(1006, 105, 'Deposit', 75000.00, 'Successful', 'Business income'),
(1007, 106, 'Deposit', 15000.00, 'Successful', 'Savings deposit');
