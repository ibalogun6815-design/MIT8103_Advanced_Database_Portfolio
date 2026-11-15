-- BrightBank | Portfolio 3: Transactions and Concurrency
-- PostgreSQL demonstration. Use a disposable test database.

-- Scenario 1: COMMIT (illustrative deposit)
BEGIN;
UPDATE Accounts
SET balance = balance + 1000
WHERE account_id = 101;
-- Inspect the change in this session before committing:
SELECT account_id, balance FROM Accounts WHERE account_id = 101;
COMMIT;

-- Scenario 2: ROLLBACK (change is discarded)
BEGIN;
UPDATE Accounts
SET balance = balance - 500
WHERE account_id = 101;
SELECT account_id, balance FROM Accounts WHERE account_id = 101;
ROLLBACK;
-- Verify the balance returned to its pre-transaction value.

-- Scenario 3: Atomic transfer illustration
-- Preconditions: source account 101 and destination account 103 exist;
-- source has sufficient funds. Run only in a test database.
BEGIN;
UPDATE Accounts
SET balance = balance - 2000
WHERE account_id = 101 AND balance >= 2000;
-- Check that exactly one source row was updated before proceeding.
UPDATE Accounts
SET balance = balance + 2000
WHERE account_id = 103;
-- In a real application, verify both row counts and handle errors.
-- If any step fails, ROLLBACK; otherwise COMMIT.
COMMIT;

-- NOTE: This simplified demonstration is not a complete transfer service.
-- Production transfers require robust validation, row-count checks,
-- idempotency, appropriate locking, ledger entries, and error handling.
