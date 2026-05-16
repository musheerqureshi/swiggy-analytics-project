USE swiggy_analytics;

-- Average Rating by City
SELECT TOP 10
    city_clean,
    ROUND(AVG(CAST(rating AS FLOAT)), 2) AS avg_rating,
    COUNT(*) AS total_restaurants
FROM restaurants
GROUP BY city_clean
ORDER BY avg_rating DESC;