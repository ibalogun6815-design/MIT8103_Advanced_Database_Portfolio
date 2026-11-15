-- BrightBank | Portfolio 2: Indexing and Optimisation
-- PostgreSQL-compatible. Run each CREATE INDEX statement once.

-- Index for filtering accounts by balance
CREATE INDEX IF NOT EXISTS idx_accounts_balance
    ON Accounts(balance);

-- Index for transaction lookup by account
CREATE INDEX IF NOT EXISTS idx_transactions_account
    ON Transactions(account_id);

-- Composite index supports account filtering and date ordering
CREATE INDEX IF NOT EXISTS idx_transactions_account_date
    ON Transactions(account_id, transaction_date DESC);

-- Example queries
SELECT account_number, balance
FROM Accounts
WHERE balance > 100000;

SELECT transaction_id, transaction_type, amount, transaction_date
FROM Transactions
WHERE account_id = 101
ORDER BY transaction_date DESC;

-- Compare plans before and after indexes using the commands in execution_plans.md.
-- Indexes consume storage and add write overhead; keep only useful indexes.
