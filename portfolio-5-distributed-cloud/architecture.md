# BrightBank Distributed Database Architecture

## Proposed architecture
- **Primary relational database:** PostgreSQL cluster for core customer/account/ledger data.
- **Standby replica:** streaming replication to a separate availability zone/site for recovery.
- **Read replica:** optional reporting workload replica to reduce load on the primary.
- **Application tier:** stateless services connect through a controlled connection pool.
- **Backups:** encrypted scheduled backups plus point-in-time recovery logs, with periodic restore tests.
- **Monitoring:** database health, replication lag, storage, connections, failed transactions, and backup status.

## Replication
Streaming replication copies changes from the primary to a standby. Synchronous replication can reduce acknowledged-transaction loss but may increase latency and depend on standby availability. Asynchronous replication can improve responsiveness but may leave a replication lag window.

## Sharding
Sharding partitions data across multiple nodes. A possible customer/account shard key must distribute workload evenly and keep common operations manageable. Cross-shard transfers and joins add complexity. Sharding should be considered only when scale and workload justify it.

## Evidence / scope
This is a proposed architecture. If no cloud deployment was performed, label it as a design exercise. Add a diagram or screenshot only if actually created.
