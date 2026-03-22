section 1.1
## Anomaly Analysis

### Insert Anomaly
In the orders_flat.csv dataset, a new product cannot be inserted without creating an order.
For example, inserting a new product requires values for order_id, customer_id, and sales_rep_id even if no order exists.
This is because all entities are stored in a single table.

### Update Anomaly
In the dataset, sales_rep_id "SR01" has inconsistent office_address values:
- One row contains "Nariman Point"
- Another row contains "Nariman Pt"

This means updating the address requires modifying multiple rows, which can lead to inconsistencies.

### Delete Anomaly
If a customer appears in only one row and that row is deleted, all customer information (such as name, email, and city) is lost.
This leads to unintended data loss.


## Normalization Justification

The argument that keeping all data in a single table is simpler is misleading, as it introduces significant data integrity and maintenance issues. In the given dataset, customer, product, order, and sales representative information are all stored together, leading to redundancy and anomalies.

For instance, the sales_rep_id "SR01" appears multiple times with inconsistent office_address values such as "Nariman Point" and "Nariman Pt". This demonstrates an update anomaly, where modifying a single piece of information requires changes across multiple rows, increasing the likelihood of inconsistencies.

Additionally, product and customer data are duplicated in every order entry. This redundancy not only wastes storage but also leads to insert anomalies, as new products or customers cannot be added independently without creating an associated order.

The dataset also suffers from delete anomalies. If a row representing a customer's only order is removed, all associated customer information is lost, even though it may still be needed.

By normalizing the data into separate tables such as Customers, Products, Orders, and Sales_Reps, each entity is stored independently. This eliminates redundancy, enforces data consistency through keys and relationships, and ensures that updates, insertions, and deletions do not produce unintended side effects. Therefore, normalization is essential for maintaining a reliable and scalable database design.