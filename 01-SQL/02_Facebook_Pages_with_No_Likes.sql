-- ======================================================
-- 📊 DAY 2 SQL PORTFOLIO: ADVANCED CORRELATED SUBQUERIES
-- Platform Focus: DataLemur (Real Facebook Interview Question)
-- Level: DataLemur Easy (Standard Structural Interview Logic)
-- ======================================================

-- Problem: Identify Facebook pages that have generated zero user likes.
SELECT page_id
FROM pages
WHERE NOT EXISTS (
  SELECT page_id 
  FROM page_likes AS likes
  WHERE likes.page_id = pages.page_id
)
ORDER BY page_id;
