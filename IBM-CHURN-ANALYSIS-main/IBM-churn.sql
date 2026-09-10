--OVERALL CHURN RATE
SELECT 
    COUNT(*) AS total,
    SUM(churn) AS churned,
    ROUND(SUM(churn)*100.0 / COUNT(*), 2) AS churn_rate
FROM customers_raw;

--CHURN RATE BY CONTRACT TYPE
-- Analyze churn rate based on contract type
SELECT 
    contract,                                  -- type of contract (monthly, yearly, etc.)
    COUNT(*) AS total_customers,                -- total customers in each contract group
    SUM(churn) AS churned_customers,            -- number of churned customers
    ROUND(SUM(churn)*100.0 / COUNT(*), 2) AS churn_rate  -- churn percentage
FROM customers_raw
GROUP BY contract
ORDER BY churn_rate DESC;                      -- highest churn first

-- Group customers based on tenure and calculate churn rate
SELECT 
    CASE 
        WHEN tenure_months <= 3 THEN '0-3 months'     -- new customers
        WHEN tenure_months <= 12 THEN '3-12 months'   -- mid-term customers
        ELSE '12+ months'                             -- long-term customers
    END AS tenure_group,
    
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(SUM(churn)*100.0 / COUNT(*), 2) AS churn_rate

FROM customers_raw
GROUP BY tenure_group
ORDER BY churn_rate DESC;

-- Identify which payment methods have higher churn
SELECT 
    payment_method,                          -- payment type (electronic check, credit card, etc.)
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(SUM(churn)*100.0 / COUNT(*), 2) AS churn_rate
FROM customers_raw
GROUP BY payment_method
ORDER BY churn_rate DESC;


-- Segment customers based on monthly charges and analyze churn
SELECT 
    CASE 
        WHEN monthly_charges > 80 THEN 'High Value'    -- expensive customers
        WHEN monthly_charges > 50 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS price_segment,

    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(SUM(churn)*100.0 / COUNT(*), 2) AS churn_rate

FROM customers_raw
GROUP BY price_segment
ORDER BY churn_rate DESC;