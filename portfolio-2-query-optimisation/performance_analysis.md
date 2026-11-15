# Query Performance Analysis

## Aim
Compare PostgreSQL query plans before and after indexing, using the same query and dataset.

## Method
1. Load the BrightBank schema and fictional sample records.
2. Record table row counts.
3. Run `EXPLAIN (ANALYZE, BUFFERS)` for the selected query before adding indexes.
4. Create the relevant index and run `ANALYZE` on the table.
5. Repeat the query and plan capture.
6. Compare scan type, estimated/actual rows, execution time, and buffer activity where shown.

## Results (complete only from your own run)
| Query | Before: plan/time | After: plan/time | Observation |
|---|---|---|---|
| Balance filter | [paste actual] | [paste actual] | [explain] |
| Account transactions | [paste actual] | [paste actual] | [explain] |

## Discussion
Indexes can reduce the amount of data searched for selective conditions and can support ordering. They also require storage and can slow inserts/updates. The PostgreSQL planner chooses a plan based on statistics, table size, and estimated cost; an index is not guaranteed to be used.

## Conclusion
[State what your actual execution plans demonstrated. If the sample is too small to show a benefit, explain this limitation rather than inventing a speed improvement.]
