
-- BrightBank Banking System
-- Portfolio 2: Query Processing and Optimisation

-- Query 1: Retrieve customers with their account details
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.account_number,
    a.account_type,
    a.balance
FROM Customers c
JOIN Accounts a
    ON c.customer_id = a.customer_id;

-- Query 2: Find accounts with balances above 100,000
SELECT
    account_number,
    balance
FROM Accounts
WHERE balance > 100000;

-- Query 3: Retrieve transactions for a particular account
SELECT
    transaction_id,
    transaction_type,
    amount,
    transaction_date
FROM Transactions
WHERE account_id = 101
ORDER BY transaction_date DESC;

-- Query 4: Calculate total balance by account type
SELECT
    account_type,
    SUM(balance) AS total_balance
FROM Accounts
GROUP BY account_type;

-- Query 5: Identify customers with multiple accounts
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(a.account_id) AS account_count
FROM Customers c
JOIN Accounts a
    ON c.customer_id = a.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
HAVING COUNT(a.account_id) > 1;
