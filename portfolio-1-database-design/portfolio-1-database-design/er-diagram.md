
# BrightBank Entity Relationship Diagram

## Database Relationships

```text
+--------------------+
|     CUSTOMERS     |
+--------------------+
| PK customer_id     |
| first_name         |
| last_name          |
| email              |
| phone              |
| date_of_birth      |
+--------------------+
          |
          | 1
          |
          | M
+--------------------+
|      ACCOUNTS      |
+--------------------+
| PK account_id      |
| FK customer_id     |
| account_number     |
| account_type       |
| balance            |
| account_status     |
+--------------------+
          |
          | 1
          |
          | M
+--------------------+
|    TRANSACTIONS    |
+--------------------+
| PK transaction_id  |
| FK account_id      |
| transaction_type   |
| amount             |
| transaction_status |
| transaction_date   |
+--------------------+

## Relationship Explanation

- One customer can own multiple accounts.
- Each account belongs to one customer.
- One account can have multiple transactions.
- Each transaction belongs to one account.

PK = Primary Key
FK = Foreign Key
1 = One
M = Many
```
