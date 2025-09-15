
WITH clean_tx AS (
    SELECT
        TransactionID,
        CustomerID,
        TransactionDate::date AS transaction_date,
        TransactionValue::numeric AS transaction_value,
        COALESCE(ProductCategory,'Unknown') AS product_category,
        COALESCE(CustomerGender,'Unknown') AS customer_gender,
        COALESCE(CustomerAgeGroup,'Unknown') AS customer_age_group,
        COALESCE(Region,'Unknown') AS region
    FROM Orders
    WHERE TransactionID IS NOT NULL
)
SELECT
  COUNT(*)                          AS transactions,
  COUNT(DISTINCT CustomerID)        AS unique_customers,
  SUM(transaction_value)            AS total_revenue,
  ROUND(AVG(transaction_value),2)   AS avg_transaction_value
FROM clean_tx
WHERE transaction_value IS NOT NULL;


