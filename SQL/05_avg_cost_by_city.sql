

USE swiggy_analytics;

-- Average Cost by City
SELECT TOP 10
    city_clean,
    ROUND(AVG(CAST(cost AS FLOAT)), 2) AS avg_cost
FROM restaurants
GROUP BY city_clean
ORDER BY avg_cost DESC;