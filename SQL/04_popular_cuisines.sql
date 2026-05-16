

USE swiggy_analytics;

-- Most Popular Cuisines
SELECT TOP 10
    cuisine,
    COUNT(*) AS total_restaurants
FROM restaurants
GROUP BY cuisine
ORDER BY total_restaurants DESC;