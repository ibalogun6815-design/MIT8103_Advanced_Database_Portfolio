
# BrightBank Database Normalisation

## Introduction

Database normalisation is the process of organising data into related tables to reduce duplication, improve data integrity, and prevent update, insertion, and deletion anomalies.

The BrightBank banking database applies First Normal Form (1NF), Second Normal Form (2NF), and Third Normal Form (3NF).

## 1. First Normal Form (1NF)

A table is in 1NF when:
- Each column contains a single value.
- There are no repeating groups.
- Each record can be uniquely identified.

**BrightBank Application:**

Customer details are stored separately, and each customer has a unique customer_id. Account details are stored in the Accounts table, with each account identified by account_id.

This ensures that customer and account information are stored in structured, atomic fields.

## 2. Second Normal Form (2NF)

A table is in 2NF when:
- It is already in 1NF.
- Every non-key attribute depends on the entire primary key.
- There are no partial dependencies.

**BrightBank Application:**

The Accounts table stores account_type, balance, and account_status against account_id.

Customer information is not repeated in the Accounts table. Instead, customer_id is used as a foreign key to link accounts to the Customers table.

This avoids unnecessary duplication of customer details.

## 3. Third Normal Form (3NF)

A table is in 3NF when:
- It is already in 2NF.
- Non-key attributes depend only on the primary key.
- There are no transitive dependencies.

**BrightBank Application:**

Customer names and contact details are maintained in the Customers table.

Account information is maintained in the Accounts table.

Transaction information is maintained in the Transactions table.

Each table stores attributes relevant to its primary key, reducing duplication and improving consistency.

## Benefits of Normalisation

- Reduces unnecessary data duplication.
- Improves data consistency and integrity.
- Prevents update, insertion, and deletion anomalies.
- Supports easier database maintenance.
- Improves the logical organisation of banking data.

## Conclusion

The BrightBank database design uses normalisation principles to organise customers, accounts, and transactions into related tables. This structure improves data integrity and supports efficient management of banking records.
