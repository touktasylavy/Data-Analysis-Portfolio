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
    DATE_TRUNC('month', transaction_date)::date AS month_start,
    COUNT(*) AS transactions,
    SUM(transaction_value) AS revenue,
    ROUND(AVG(transaction_value),2) AS avg_transaction_value
FROM clean_tx
WHERE transaction_value IS NOT NULL
GROUP BY month_start
ORDER BY month_start;