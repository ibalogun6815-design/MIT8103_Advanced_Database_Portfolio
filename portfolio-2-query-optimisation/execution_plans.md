# Execution Plans — Evidence Record

## How to capture
In PostgreSQL/pgAdmin Query Tool, run the following before indexes are created:

```sql
EXPLAIN (ANALYZE, BUFFERS)
SELECT account_number, balance
FROM Accounts
WHERE balance > 100000;
```

Then create the indexes in `indexing.sql`, run `ANALYZE Accounts;`, and repeat the same EXPLAIN command. Repeat for the transaction query:

```sql
EXPLAIN (ANALYZE, BUFFERS)
SELECT transaction_id, transaction_type, amount, transaction_date
FROM Transactions
WHERE account_id = 101
ORDER BY transaction_date DESC;
```

## Record actual evidence
- Database engine/version:
- Date tested:
- Dataset row counts (Customers / Accounts / Transactions):
- Query tested:
- Plan before index (paste actual output or screenshot):
- Plan after index (paste actual output or screenshot):
- Actual execution time shown by PostgreSQL (if available):
- Planner used sequential scan, index scan, or another plan:
- Explanation of observed difference:

**Important:** Small tables can legitimately use a sequential scan even when an index exists. Do not claim an index improved speed unless your output supports that conclusion.
