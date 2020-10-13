USE bank;
-- 2.04 Activity 1
-- Keep working on the bank database and its card table.
-- Queries
--  	Get different card types.
SELECT distinct type 
FROM card;
--      Get transactions in the first 15 days of 1993.
SELECT * 
FROM trans 
WHERE date BETWEEN 930101 AND 930115;
--      Get all running loans.
SELECT * 
FROM loan
WHERE status IN ('C','D');

-- 2.04 Activity 2
-- Queries and questions
--    Find the different values from the field A2 that start with the letter 'K'.
SELECT distinct * 
FROM district WHERE A2 regexp '^K';
--    Find the different values from the field A2 that end with the letter 'K'.
SELECT distinct *
FROM district WHERE A2 regexp 'K$';
--    Discuss the possible use cases of using regular expressions in your query.
SELECT * 
FROM district WHERE A2 regexp 'k';

-- 2.04 Activity 3
-- Queries and questions
--   1. Can you use the following query:
select * from bank.district
where a3 like 'north%M%';

-- instead of:
select * from bank.district
where a3 like 'north_M%';
-- Try both the queries and check the results.
-- the first delivers any district that has north and a "M" anywhere in the field, 
-- while the second one returns only those districts that have a space and a "M" right after north.

 --  2. We looked at the following query in class:
 -- select * from bank.district
-- where a2 regexp 'ch[e-r]';

-- Can you modify the query to print the rows only for those values in the A2 column that starts with 'CH'?
select * from bank.district
where A2 regexp '^ch';

-- 2.04 Activity 4
-- Queries

--   Use the table trans for this query. Use the column type to test: "By default, in an ascending sort, special characters appear first, followed by numbers, and then letters."
SELECT type 
FROM bank.trans 
WHERE type regexp '^[0-9]';
SELECT type 
FROM bank.trans 
ORDER BY type ASC; -- WHERE type NOT regexp '(0-9|a-z)';

-- Again use the table trans for this query. Use the column k_symbol to test: "Null values appear first if the order is ascending."
SELECT k_symbol 
FROM trans
ORDER BY k_symbol ASC;

SELECT *
FROM trans;

-- Pick any table and any column to test: "You can use any column from the table to sort the values even if that column is not used in the select statement." Check the difference by writing the query with and without that column (column used to sort the results) in the select statement.

