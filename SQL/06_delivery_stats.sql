

USE swiggy_analytics;

-- Overall Delivery Statistics
SELECT 
    ROUND(AVG(delivery_duration_min), 2) AS avg_delivery_time,
    ROUND(MIN(delivery_duration_min), 2) AS min_delivery_time,
    ROUND(MAX(delivery_duration_min), 2) AS max_delivery_time,
    COUNT(*) AS total_orders
FROM delivery;