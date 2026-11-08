
-- BrightBank Banking System
-- Portfolio 1: Sample SQL Queries

-- Query 1: Retrieve all customers
SELECT *
FROM Customers;

-- Query 2: Retrieve all accounts with customer names
SELECT
    Customers.first_name,
    Customers.last_name,
    Accounts.account_number,
    Accounts.account_type,
    Accounts.balance
FROM Customers
JOIN Accounts
    ON Customers.customer_id = Accounts.customer_id;

-- Query 3: Find accounts with balances above 100,000
SELECT
    account_number,
    account_type,
    balance
FROM Accounts
WHERE balance > 100000;

-- Query 4: Retrieve successful transactions
SELECT
    transaction_id,
    account_id,
    transaction_type,
    amount,
    transaction_date
FROM Transactions
WHERE transaction_status = 'Successful';

-- Query 5: Calculate total balance across all accounts
SELECT
    SUM(balance) AS total_bank_account_balances
FROM Accounts;

-- Query 6: Count the number of customers
SELECT
    COUNT(*) AS total_customers
FROM Customers;

-- Query 7: Display each customer and number of accounts
SELECT
    Customers.first_name,
    Customers.last_name,
    COUNT(Accounts.account_id) AS number_of_accounts
FROM Customers
LEFT JOIN Accounts
    ON Customers.customer_id = Accounts.customer_id
GROUP BY
    Customers.customer_id,
    Customers.first_name,
    Customers.last_name;
