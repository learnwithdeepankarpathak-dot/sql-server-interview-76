# SQL Server Interview Series · Season 1

**76 most-asked SQL Server interview questions, from basics to advanced. A new solution goes live with each reel.**

By **Data with Deepankar** · Instagram [@datawithdeepankar](https://www.instagram.com/datawithdeepankar) · YouTube [Deepankar Pathak](https://www.youtube.com/@deepankarpathak983)

![Questions](https://img.shields.io/badge/questions-76-16264a) ![Live](https://img.shields.io/badge/solutions_live-1%2F76-2350d8) ![SQL Server](https://img.shields.io/badge/SQL_Server-T--SQL-c8312b)

---

## How to use this repo

1. Download the full question list: **[SQL_Interview_Sheet_Season1.pdf](SQL_Interview_Sheet_Season1.pdf)**
2. Run **[setup/00_create_database.sql](setup/00_create_database.sql)** once in SSMS. It creates the practice database `SqlInterviewS1`.
3. Try the question yourself first. Then open its folder:
   - the **PDF** explains the answer, the traps and the follow-up questions interviewers ask next
   - the **.sql** file runs in SSMS, with the expected result written next to every step
4. Tick it off and move to the next one.

Every query is **SQL Server (T-SQL)** only.

---

## The 76 questions

### Step 1 · Foundations

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 01 | Difference between DELETE, TRUNCATE and DROP | Easy | [Solution](Q01-delete-truncate-drop/) |
| 02 | DDL, DML, DQL, DCL and TCL with two commands each | Easy | Coming soon |
| 03 | Difference between WHERE and HAVING | Easy | Coming soon |
| 04 | Logical order of execution of a SELECT query | Easy | Coming soon |
| 05 | Primary key vs unique key vs foreign key | Easy | Coming soon |

### Step 2 · Joins

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 06 | INNER, LEFT, RIGHT, FULL, CROSS and SELF joins | Easy | Coming soon |
| 07 | Join row counts with duplicates and NULLs (1,1,2,NULL vs 1,1,3,NULL) | Medium | Coming soon |
| 08 | Customers who have never placed an order | Easy | Coming soon |
| 09 | Products that have never been sold | Easy | Coming soon |
| 10 | NULL with =, COUNT(*), COUNT(column), SUM and AVG | Easy | Coming soon |

### Step 3 · First famous queries

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 11 | Second highest salary (NULL if it does not exist) | Easy | Coming soon |
| 12 | UNION vs UNION ALL, and which is faster | Easy | Coming soon |
| 13 | Find duplicate records (e.g. duplicate emails) | Easy | Coming soon |
| 14 | Employees who earn more than their managers | Easy | Coming soon |
| 15 | Each employee with their manager's name, including the CEO | Easy | Coming soon |

### Step 4 · Grouping & counting

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 16 | Employees per department, including empty departments | Easy | Coming soon |
| 17 | Departments with fewer than 4 (or more than 5) employees | Easy | Coming soon |
| 18 | Male and female count per department, one row each | Easy | Coming soon |
| 19 | Salary bands (Low, Medium, High) with counts | Easy | Coming soon |
| 20 | Top 5 customers by total order value | Easy | Coming soon |

### Step 5 · Join traps & updates

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 21 | Swap gender values with a single UPDATE | Easy | Coming soon |
| 22 | Revenue by city and category across three tables | Easy | Coming soon |
| 23 | Why a WHERE on the right table turns a LEFT JOIN into an INNER JOIN | Medium | Coming soon |
| 24 | Totals doubled after a join: why, and how to fix it | Medium | Coming soon |
| 25 | Subqueries: correlated vs non-correlated | Easy | Coming soon |

### Step 6 · Subqueries & CTEs

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 26 | Employees earning more than their department average | Medium | Coming soon |
| 27 | Customers spending more than the average customer | Medium | Coming soon |
| 28 | Third highest salary without TOP or window functions | Medium | Coming soon |
| 29 | IN vs EXISTS vs JOIN, and the NOT IN + NULL trap | Medium | Coming soon |
| 30 | CTE vs subquery vs temporary table | Medium | Coming soon |

### Step 7 · Ranking

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 31 | RANK vs DENSE_RANK vs ROW_NUMBER with ties | Easy | Coming soon |
| 32 | Nth highest salary as a stored procedure or function | Medium | Coming soon |
| 33 | Highest salary in each department with the employee's name | Easy | Coming soon |
| 34 | Second highest salary in each department | Medium | Coming soon |
| 35 | Top 3 highest-paid employees in each department | Medium | Coming soon |

### Step 8 · Ranking in practice

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 36 | Rank employees by salary within each department | Easy | Coming soon |
| 37 | Salary next to department average and maximum | Easy | Coming soon |
| 38 | Delete duplicates, keeping the lowest ID | Medium | Coming soon |
| 39 | Delete duplicates from a table with no primary key | Medium | Coming soon |
| 40 | Keep only the most recent record per customer | Medium | Coming soon |

### Step 9 · Running totals & growth

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 41 | Running total of sales by date | Easy | Coming soon |
| 42 | Running total per customer | Medium | Coming soon |
| 43 | Difference from the previous day's value | Easy | Coming soon |
| 44 | Month-over-month revenue growth % | Medium | Coming soon |
| 45 | 3-month (or 7-day) moving average | Medium | Coming soon |

### Step 10 · Analytics patterns

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 46 | Product % contribution to category sales | Medium | Coming soon |
| 47 | Third transaction of each user | Medium | Coming soon |
| 48 | First and last order of each customer | Medium | Coming soon |
| 49 | Users with more than 10 purchases last month | Easy | Coming soon |
| 50 | Two users who sent the most messages in a month | Easy | Coming soon |

### Step 11 · Product metrics & reshaping

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 51 | Click-through rate and conversion rate per category | Medium | Coming soon |
| 52 | Customers who bought from every category | Medium | Coming soon |
| 53 | Hires in the last 90 days and hires per year/month | Easy | Coming soon |
| 54 | Rows to columns: monthly sales with Jan, Feb, Mar columns | Medium | Coming soon |
| 55 | Employee names per department as a comma-separated list | Medium | Coming soon |

### Step 12 · Design & transactions

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 56 | Normalization: 1NF, 2NF, 3NF and BCNF | Easy | Coming soon |
| 57 | OLTP vs OLAP, facts, dimensions, star vs snowflake | Easy | Coming soon |
| 58 | ACID properties | Easy | Coming soon |
| 59 | BEGIN TRAN, COMMIT, ROLLBACK and TRY…CATCH | Medium | Coming soon |
| 60 | Stored procedure vs user-defined function | Medium | Coming soon |

### Step 13 · T-SQL toolkit

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 61 | Triggers: AFTER vs INSTEAD OF, inserted and deleted tables | Medium | Coming soon |
| 62 | #temp vs ##global temp vs @table variable | Medium | Coming soon |
| 63 | UPDATE with JOIN | Medium | Coming soon |
| 64 | MERGE (upsert) from staging to target | Medium | Coming soon |
| 65 | Clustered vs non-clustered index, and how many of each | Easy | Coming soon |

### Step 14 · Performance

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 66 | Index seek vs index scan vs key lookup | Medium | Coming soon |
| 67 | When indexes hurt performance | Medium | Coming soon |
| 68 | Non-SARGable conditions: rewrite YEAR(order_date) = 2025 | Hard | Coming soon |
| 69 | Troubleshooting a slow query, step by step | Hard | Coming soon |
| 70 | Deadlocks: detect and prevent | Hard | Coming soon |

### Step 15 · Season finale: hard patterns

| # | Question | Difficulty | Solution |
|---|---|---|---|
| 71 | Isolation levels, SNAPSHOT and RCSI | Hard | Coming soon |
| 72 | Month-over-month retention | Medium | Coming soon |
| 73 | Users who logged in 3 (or 5) consecutive days | Hard | Coming soon |
| 74 | Longest login streak per user | Hard | Coming soon |
| 75 | Day-7 retention per weekly signup cohort | Hard | Coming soon |
| 76 | Full reporting hierarchy with levels under the CEO | Hard | Coming soon |

---

## Want to practise with a real interviewer?

**Mock SQL interviews and 1:1 sessions:** DM **"MOCK"** or **"1:1"** on Instagram [@datawithdeepankar](https://www.instagram.com/datawithdeepankar).

⭐ Star this repo to get notified as new solutions go live.

---

## License

Free to learn from and share with a link back to this repo. Not for resale or re-upload as your own.
See [LICENSE](LICENSE) (CC BY-NC-ND 4.0).

"Asked at" company names in the sheet come from public question banks and candidate interview reports. They are not official company data.
