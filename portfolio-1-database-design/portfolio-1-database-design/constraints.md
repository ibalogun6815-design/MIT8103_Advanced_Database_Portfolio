
# BrightBank Database Constraints and Integrity

## Introduction

Database constraints are rules applied to tables to maintain data accuracy, consistency, and integrity. The BrightBank database uses several constraints to protect customer, account, and transaction records.

## 1. Primary Key Constraints

Primary keys uniquely identify each record in a table.

**BrightBank Application:**

- Customers: customer_id
- Accounts: account_id
- Transactions: transaction_id

These keys prevent duplicate record identifiers and allow records to be uniquely referenced.

## 2. Foreign Key Constraints

Foreign keys establish relationships between tables and prevent records from referencing non-existent parent records.

**BrightBank Application:**

- Accounts.customer_id references Customers.customer_id.
- Transactions.account_id references Accounts.account_id.

This ensures that every account belongs to an existing customer and every transaction relates to an existing account.

## 3. Unique Constraints

Unique constraints prevent duplicate values in specified columns.

**BrightBank Application:**

- Customers.email is unique.
- Accounts.account_number is unique.

This prevents customers from sharing the same registered email address and prevents duplicate account numbers.

## 4. NOT NULL Constraints

NOT NULL constraints ensure that essential fields cannot be left empty.

**BrightBank Application:**

- Customers.first_name and Customers.last_name.
- Accounts.account_number and Accounts.account_type.
- Transactions.transaction_type and Transactions.amount.

These constraints ensure that important customer, account, and transaction information is provided.

## 5. CHECK Constraints

CHECK constraints validate data against specified conditions.

**BrightBank Application:**

- Transactions.amount must be greater than zero.
- Transactions.transaction_type must be Deposit, Withdrawal, or Transfer.

These rules prevent invalid transaction amounts and unsupported transaction classifications.

## Benefits of Database Constraints

- Prevent invalid records.
- Maintain referential integrity.
- Reduce duplicate information.
- Improve database reliability.
- Support accurate banking records.

## Conclusion

The BrightBank database applies primary key, foreign key, unique, NOT NULL, and CHECK constraints to maintain data integrity and enforce basic validation rules across customers, accounts, and transactions.
