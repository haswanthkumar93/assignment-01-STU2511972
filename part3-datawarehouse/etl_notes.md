## ETL Decisions

### Decision 1 — Standardizing Date Formats
Problem: Dates were stored in multiple formats such as 01-01-2023 and 2023/01/01.
Resolution: Converted all date values to the YYYY-MM-DD format to keep them consistent across the dataset.

### Decision 2 — Handling NULL Values
Problem: Some records had missing values in important fields like store or product.
Resolution: Filled NULLs with default placeholder values where appropriate, and removed rows that were too incomplete to be useful.

### Decision 3 — Fixing Category Casing
Problem: Category names appeared with inconsistent casing such as electronics, Electronics, and ELECTRONICS.
Resolution: Standardized all category entries to the single value Electronics for uniform reporting.