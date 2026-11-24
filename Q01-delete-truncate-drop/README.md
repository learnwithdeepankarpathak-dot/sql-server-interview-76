# Q01 · DELETE vs TRUNCATE vs DROP

**Step 1 · Foundations** · Easy · Relevance 90% · Reported at TCS, Infosys · SQL Server (T-SQL)

> What is the difference between DELETE, TRUNCATE and DROP?

**The short answer:** DELETE removes the rows you choose. TRUNCATE removes every row but keeps the table. DROP removes the table itself.

## Files

| File | What's inside |
|---|---|
| [Q01_DELETE_TRUNCATE_DROP.pdf](Q01_DELETE_TRUNCATE_DROP.pdf) | 4-page notes: the idea, SSMS tests with results, cheat sheet, production way, interview traps and follow-ups |
| [Q01_DELETE_TRUNCATE_DROP.sql](Q01_DELETE_TRUNCATE_DROP.sql) | Run it block by block in SSMS. The expected result is written next to every step |

## Try it yourself first

The Orders table has IDs 1 to 5. You run `DELETE FROM dbo.Orders;` and insert one new order. What ID does it get? What if you had used `TRUNCATE` instead?

The answer is at the bottom of page 4 of the PDF.

---

[← Back to all 76 questions](../README.md) · Instagram [@datawithdeepankar](https://www.instagram.com/datawithdeepankar) · YouTube [Deepankar Pathak](https://www.youtube.com/@deepankarpathak983)
