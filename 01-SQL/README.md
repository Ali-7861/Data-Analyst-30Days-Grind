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
