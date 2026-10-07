# 01 - SQL - 30 Days Grind

## Day 1  - Data Filtering & Group Aggregations
**Level:** Easy - LinkedIn Interview Question

### Problem
Find candidates who have ALL 3 skills: Python, Tableau, PostgreSQL

### File
- `01_Linkedin_Data_Science_Skills_Sql_Problem.sql` - Main Query

### Logic Used
1.  `WHERE skill IN (...)` - Filter only required 3 skills
2.  `GROUP BY candidate_id` - Group by each candidate
3.  `HAVING COUNT(DISTINCT skill) = 3` - Ensure candidate has all 3 skills
4.  `ORDER BY ASC` - Sorted output

#### OUTPUT
Successfully filtered candidates who are proficient in all 3 tech stacks.



## Day 2 - Facebook Pages NO Likes

### Problem : Find the IDs of all Facebook pages that have generated zero users Likes.

### Verified Files: 02_Facebook_pages_with_No_Likes.sql
### Logic Used: Correlated Subquery using the NOT EXIST Clause to structurally scan the exclude matched page records for high-speed performance.

#### OUTPUT : A Distinct list of unliked pages IDs sorted in Ascending Order.



## DAY 3 - NY_Times_Laptop_VS_mobile_viewership

### Problem : Write a query that calculates the total viewership for laptop and mobile devices where mobile is defined as the sum of tablet and phone viewership. output the total viewership for laptop as laptop views and the total viewership for mobile devices as mobile views.

### Verified Files : 03_NY_Times_Laptop_vs_mobile_viewership.sql
### Logic used :
1. CASE WHEN DEVICE_TYPE = 'laptop' - Filter & Count only laptop viewership
2. CASE WHEN DEVICE_TYPE IN ('tablet', 'phone') - Combine tablet+phone as mobile
3. SUM( CASE WHEN....THEN 1 ELSE 0 END )- Conditional Counting for each Category
4. FROM Viewership - Direct aggregation without GROUP BY as we need total Summary

   #### OUTPUT : A Single row with 2 column - total laptop_views and total mobil_views where mobile is sum of tablet and phone.
