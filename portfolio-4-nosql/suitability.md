# Why a Document Model?

A document model stores related profile attributes and nested account summaries together in a JSON-like document. It can be convenient for flexible customer preferences, profile metadata, and read-heavy applications where related fields are retrieved together.

A relational database remains appropriate for core banking balances and financial ledger transactions because it provides strong relational constraints and mature ACID transaction support. A document store can complement, not automatically replace, the relational core.

## Trade-offs
- **Benefits:** flexible fields, nested structures, convenient retrieval of a profile as one document.
- **Risks:** duplicated data, validation responsibility, document growth, and consistency across services.
- **Suitability:** profile/preferences or channel-facing views; core financial posting should remain carefully controlled.

## Evidence
Record MongoDB version, commands run, result screenshots, and any errors. The JSON file is a model example, not proof of a live database execution.
