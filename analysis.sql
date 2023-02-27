-- 1. What is the average score and number of installs per android version?

SELECT androidversion, AVG(score) AS avg_score, SUM(installs) AS total_installs
FROM mytable
GROUP BY androidversion;

-- 2. What is the total number of installs for each developer?

SELECT developer, SUM(installs) AS total_installs
FROM mytable
GROUP BY developer;

-- 3. What is the average rating and number of reviews per developer?

SELECT developer, AVG(ratings) AS avg_rating, SUM(reviews) AS total_reviews
FROM mytable
GROUP BY developer;

-- 4. What are the top 10 apps with the highest number of installs?

SELECT developer, SUM(installs) AS total_installs
FROM mytable
GROUP BY developer
ORDER BY total_installs DESC
LIMIT 10;

-- 5. What is the average score and number of installs for apps released in each year?

SELECT EXTRACT(YEAR FROM released) AS year, AVG(score) AS avg_score, SUM(installs) AS total_installs
FROM mytable
GROUP BY EXTRACT(YEAR FROM released);

-- 6. What is the total number of installs for each android_version?

SELECT androidversion, SUM(installs) AS total_installs
FROM mytable
GROUP BY androidversion;

-- 7. What is the average score and number of installs for apps released by each developer?

SELECT developer, AVG(score) AS avg_score, SUM(installs) AS total_installs
FROM mytable
GROUP BY developer;

-- 8. What is the average rating and number of reviews for apps released in each year?

SELECT EXTRACT(YEAR FROM released) AS year, AVG(ratings) AS avg_rating, SUM(reviews) AS total_reviews
FROM mytable
GROUP BY EXTRACT(YEAR FROM released);

-- 9. What are the top 5 developers with the highest average score for their apps?

SELECT developer, AVG(score) AS avg_score
FROM mytable
GROUP BY developer
ORDER BY avg_score DESC
LIMIT 5;

-- 10. What is the total number of installs for apps released in each month of the year?

SELECT EXTRACT(MONTH FROM released) AS month, SUM(installs) AS total_installs
FROM mytable
GROUP BY EXTRACT(MONTH FROM released);
