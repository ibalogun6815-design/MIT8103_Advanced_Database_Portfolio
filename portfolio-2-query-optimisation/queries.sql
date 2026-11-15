-- BrightBank | Portfolio 2: Query Processing and Optimisation
-- PostgreSQL-compatible. Run after Portfolio 1 schema and sample data.

-- Q1: Customer accounts
SELECT c.customer_id, c.first_name, c.last_name,
       a.account_number, a.account_type, a.balance
FROM Customers AS c
JOIN Accounts AS a ON a.customer_id = c.customer_id
ORDER BY c.customer_id, a.account_id;

-- Q2: Accounts with balance above 100,000
SELECT account_number, account_type, balance
FROM Accounts
WHERE balance > 100000
ORDER BY balance DESC;

-- Q3: Recent transactions for account 101
SELECT transaction_id, transaction_type, amount, transaction_date
FROM Transactions
WHERE account_id = 101
ORDER BY transaction_date DESC;

-- Q4: Total balance by account type
SELECT account_type, COUNT(*) AS account_count,
       SUM(balance) AS total_balance
FROM Accounts
GROUP BY account_type
ORDER BY account_type;

-- Q5: Customers with more than one account
SELECT c.customer_id, c.first_name, c.last_name,
       COUNT(a.account_id) AS account_count
FROM Customers AS c
JOIN Accounts AS a ON a.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(a.account_id) > 1
ORDER BY account_count DESC;
