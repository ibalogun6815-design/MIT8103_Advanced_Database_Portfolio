
-- BrightBank Banking System
-- Portfolio 2: Indexing and Optimisation

-- Index 1: Improve searches by account balance
CREATE INDEX idx_accounts_balance
ON Accounts(balance);

-- Index 2: Improve transaction searches by account
CREATE INDEX idx_transactions_account
ON Transactions(account_id);

-- Index 3: Improve transaction searches by date
CREATE INDEX idx_transactions_date
ON Transactions(transaction_date);

-- Query using the balance index
SELECT account_number, balance
FROM Accounts
WHERE balance > 100000;

-- Query using the account transaction index
SELECT transaction_id, amount, transaction_date
FROM Transactions
WHERE account_id = 101;

-- Query using the transaction date index
SELECT transaction_id, amount
FROM Transactions
WHERE transaction_date >= '2026-01-01'
ORDER BY transaction_date;
