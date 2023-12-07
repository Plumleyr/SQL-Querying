-- Comments in SQL Start with dash-dash --
SELECT app_name FROM analytics WHERE id = '1880';
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
SELECT category, COUNT(category) FROM analytics GROUP BY category;
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
SELECT app_name,reviews,rating FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;
SELECT category,AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC;
SELECT app_name, min_installs, rating FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating DESC;
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews >= 10000 ORDER BY rating DESC;
SELECT app_name, price, reviews FROM analytics WHERE price BETWEEN .10 AND 1.00 ORDER BY reviews DESC LIMIT 10;
SELECT app_name, last_updated FROM analytics ORDER BY last_updated ASC LIMIT 1;
SELECT app_name, MAX(price) FROM analytics GROUP BY app_name ORDER BY MAX(price) DESC LIMIT 1;
SELECT SUM(reviews) FROM analytics;
SELECT category, COUNT(app_name) FROM analytics GROUP BY category HAVING COUNT(app_name) > 300;
SELECT app_name, reviews, min_installs, min_installs/reviews FROM analytics WHERE min_installs >= 100000 ORDER BY min_installs/reviews DESC LIMIT 1;