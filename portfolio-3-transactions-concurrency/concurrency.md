# Transactions, Isolation, and Concurrency

## ACID in BrightBank
- **Atomicity:** both sides of a transfer succeed together or are rolled back.
- **Consistency:** constraints and application rules keep data valid.
- **Isolation:** concurrent transactions are controlled to avoid interference.
- **Durability:** committed changes survive a successful commit.

## Isolation demonstration
PostgreSQL supports `READ COMMITTED` by default and also `REPEATABLE READ` and `SERIALIZABLE`.

Session A (test database):
```sql
BEGIN;
SELECT balance FROM Accounts WHERE account_id = 101;
-- Pause here while Session B performs an update and commits.
SELECT balance FROM Accounts WHERE account_id = 101;
COMMIT;
```

Session B:
```sql
BEGIN;
UPDATE Accounts SET balance = balance - 100
WHERE account_id = 101;
COMMIT;
```

At `READ COMMITTED`, Session A can see a newly committed value on its second statement. At `REPEATABLE READ`, Session A retains its transaction snapshot. Record what your actual two-session test shows.

## Concurrency controls
Row locks (`SELECT ... FOR UPDATE`), transaction isolation, conditional updates, and application-level checks can protect account operations. Deadlocks must be handled by retrying a failed transaction safely.

## Evidence
Attach screenshots/output from the two sessions and state the database engine and isolation level. Do not claim a concurrency test was run unless it was.
