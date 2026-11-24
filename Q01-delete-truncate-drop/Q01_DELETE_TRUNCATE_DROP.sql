/* =====================================================================
   Data with Deepankar · SQL Interview Series · Season 1
   Q1 of 76 : DELETE vs TRUNCATE vs DROP          (SQL Server / T-SQL)

   Instagram : @datawithdeepankar
   YouTube   : Deepankar Pathak (@deepankarpathak983)

   How to use: run each block one at a time (highlight it, press F5)
   and compare your result with the expected result in the comments.
   ===================================================================== */

-- ---------------------------------------------------------------
-- 0. Practice database (run once)
-- ---------------------------------------------------------------
IF DB_ID('SqlInterviewS1') IS NULL
    CREATE DATABASE SqlInterviewS1;
GO
USE SqlInterviewS1;
GO

-- ---------------------------------------------------------------
-- 1. Setup
-- ---------------------------------------------------------------
DROP TABLE IF EXISTS dbo.Orders;
CREATE TABLE dbo.Orders (
    OrderID  INT IDENTITY(1,1) PRIMARY KEY,
    Customer VARCHAR(50),
    Amount   INT
);
INSERT INTO dbo.Orders (Customer, Amount)
VALUES ('Ram', 500), ('Shyam', 1200), ('Ram', 750);

SELECT * FROM dbo.Orders;
-- Expected: 1 Ram 500 | 2 Shyam 1200 | 3 Ram 750
GO

-- ---------------------------------------------------------------
-- 2. DELETE with WHERE: only the rows you choose
-- ---------------------------------------------------------------
DELETE FROM dbo.Orders WHERE Customer = 'Ram';
SELECT * FROM dbo.Orders;
-- Expected: (2 rows affected), then 2 Shyam 1200
GO

-- ---------------------------------------------------------------
-- Test 1. DELETE everything, then insert: does the ID restart?
-- ---------------------------------------------------------------
DELETE FROM dbo.Orders;
INSERT INTO dbo.Orders (Customer, Amount) VALUES ('Mohan', 300);
SELECT * FROM dbo.Orders;
-- Expected: 4 Mohan 300   -> DELETE keeps the IDENTITY counter
GO

-- ---------------------------------------------------------------
-- Test 2. TRUNCATE, then insert: now does it restart?
-- ---------------------------------------------------------------
TRUNCATE TABLE dbo.Orders;
INSERT INTO dbo.Orders (Customer, Amount) VALUES ('Mohan', 300);
SELECT * FROM dbo.Orders;
-- Expected: 1 Mohan 300   -> TRUNCATE resets the IDENTITY to its seed
GO

-- ---------------------------------------------------------------
-- Test 3. Can TRUNCATE be rolled back? (yes, in SQL Server)
-- ---------------------------------------------------------------
BEGIN TRAN;
    TRUNCATE TABLE dbo.Orders;
    SELECT COUNT(*) AS RowsNow FROM dbo.Orders;   -- Expected: 0
ROLLBACK;
SELECT COUNT(*) AS RowsNow FROM dbo.Orders;       -- Expected: 1
GO

-- ---------------------------------------------------------------
-- Bonus. TRUNCATE has no WHERE
-- ---------------------------------------------------------------
TRUNCATE TABLE dbo.Orders WHERE Customer = 'Mohan';
-- Expected (Messages tab): Msg 156, Incorrect syntax near the keyword 'WHERE'.
GO

-- ---------------------------------------------------------------
-- Follow-up. Restart the ID after a DELETE
-- ---------------------------------------------------------------
DELETE FROM dbo.Orders;
DBCC CHECKIDENT ('dbo.Orders', RESEED, 0);
INSERT INTO dbo.Orders (Customer, Amount) VALUES ('Sita', 900);
SELECT * FROM dbo.Orders;
-- Expected: 1 Sita 900
GO

-- ---------------------------------------------------------------
-- Follow-up. A foreign key blocks TRUNCATE (even if the child is empty)
-- ---------------------------------------------------------------
DROP TABLE IF EXISTS dbo.OrderItems;
CREATE TABLE dbo.OrderItems (
    ItemID  INT PRIMARY KEY,
    OrderID INT REFERENCES dbo.Orders(OrderID)
);
TRUNCATE TABLE dbo.Orders;
-- Expected: Msg 4712, Cannot truncate table 'dbo.Orders' because it is
--           being referenced by a FOREIGN KEY constraint.
DELETE FROM dbo.Orders;          -- works, because no child rows exist
DROP TABLE dbo.OrderItems;       -- clean up the child table
GO

-- ---------------------------------------------------------------
-- The safe-delete habit
-- ---------------------------------------------------------------
INSERT INTO dbo.Orders (Customer, Amount)
VALUES ('Ram', 500), ('Shyam', 1200), ('Ram', 750);

BEGIN TRAN;
    DELETE FROM dbo.Orders WHERE Customer = 'Ram';
    SELECT @@ROWCOUNT AS RowsDeleted;   -- Expected: 2
-- Right number? run:  COMMIT;
-- Wrong number? run:  ROLLBACK;
ROLLBACK;   -- we roll back here so the practice data stays
GO

-- ---------------------------------------------------------------
-- The better way at work: delete in small batches
-- (builds a 20,000-row practice table first)
-- ---------------------------------------------------------------
DROP TABLE IF EXISTS dbo.OrderHistory;
CREATE TABLE dbo.OrderHistory (
    OrderID   INT IDENTITY(1,1) PRIMARY KEY,
    OrderDate DATE NOT NULL,
    Amount    INT
);
WITH n AS (
    SELECT TOP (20000) ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS i
    FROM sys.all_objects a CROSS JOIN sys.all_objects b
)
INSERT INTO dbo.OrderHistory (OrderDate, Amount)
SELECT DATEADD(DAY, -(i % 1000), '2025-06-30'), (i % 50) * 100
FROM n;

SELECT COUNT(*) AS OldRows FROM dbo.OrderHistory WHERE OrderDate < '2024-01-01';

WHILE 1 = 1
BEGIN
    DELETE TOP (4000) FROM dbo.OrderHistory
    WHERE OrderDate < '2024-01-01';

    IF @@ROWCOUNT = 0 BREAK;    -- nothing left, stop
END;

SELECT COUNT(*) AS OldRowsLeft FROM dbo.OrderHistory WHERE OrderDate < '2024-01-01';
-- Expected: 0
GO

-- ---------------------------------------------------------------
-- Test 4. DROP: the table itself is gone
-- ---------------------------------------------------------------
DROP TABLE dbo.Orders;
SELECT * FROM dbo.Orders;
-- Expected (Messages tab): Msg 208, Invalid object name 'dbo.Orders'.
GO

DROP TABLE IF EXISTS dbo.OrderHistory;   -- clean up
GO
