/* =====================================================================
   Data with Deepankar · SQL Interview Series · Season 1
   Run this ONCE in SSMS before any question's .sql file.
   It creates the practice database used by all 76 solutions.
   ===================================================================== */

IF DB_ID('SqlInterviewS1') IS NULL
    CREATE DATABASE SqlInterviewS1;
GO

USE SqlInterviewS1;
GO

SELECT DB_NAME() AS CurrentDatabase;   -- Expected: SqlInterviewS1
