-- ======================================================
-- 📊 DAY 1 SQL PORTFOLIO: DATA FILTERING & GROUP AGGREGATIONS
-- Difficulty: Easy (Real LinkedIn Interview Question)
-- ======================================================

SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id ASC;
