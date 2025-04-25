/*
	BUS691 - Homework 5.
*/

---------------------------------------------------------------------
-- Chapter 2 (Single-table queries)
---------------------------------------------------------------------

-- 1. Write a query  to pull  all products that have the letter “A” in the productname column.
--		Show columns: productid, productname


-- 2.  Write a query to show the both the oldest and the most recent order dates.


-- 3. Write a query to return orders placed on the 15th of each month.  
--		Show columns: orderid, orderdate
--				Sort: orderdate oldest to newest	


-- 4. Write a query to return orders that were ordered on the last day of the month and not yet shipped.
--		Show columns: orderid, orderdate, shippeddate


-- 5. Write a query to show days where no orders were placed on weekends.
--		In other words, do not include orders that were placed on weekends.
--		Show columns: orderid, orderdate, DayName.
--				Sort: orderdate oldest to newest
--	HINT 1: You will have to use the DATEPART (MSSQL) or DAYOFWEEK (MySQL) function; see below.
--			1=Sunday, 2=Monday, 3=Tuesday, 4=Wednesday, 5=Thursday, 6=Friday, 7=Saturday
--	HINT 2: Search the internet for how to get the actual name of each day.

--MSSQL
SELECT 
	DATEPART(dw, GETDATE())		AS 'DayNum'
	,DATENAME(dw, GETDATE())	AS 'DayName'
--MySQL
SELECT 
	DAYOFWEEK(CURRENT_DATE())	AS 'DayNum'
	,DAYNAME(CURRENT_DATE())	AS 'DayName'


---------------------------------------------------------------------
-- Chapter 3 (Joins)
---------------------------------------------------------------------

-- 6. Write a query to return orders that were placed by Customers in the USA 
--		for products from suppliers located outside the USA.  
--		Show columns: companyname, companycountry, productname, productcountry


-- 7. Group and count the results of the prior query by the supplier's county.
--		Show columns: CompanyName, ProductName, SupplierCountry, NumOrders
--				Sort: NumOrders largest to smallest


-- 8. Write a query to return all products, and match them with their orders only if they were placed in August 2014.
--		Show columns: productid, productname, orderid, orderdate
--				Sort: orderdate oldest to newest

---------------------------------------------------------------------
-- Chapter 4 (Subqueries)
---------------------------------------------------------------------

-- 9. Write a query using a self-contained subquery to show products that were not ordered in June, 2015.
--		Show columns: productid, productname


-- 10. Write a correlated subquery to list the earliest orderdate for each employee and the number of orders they handled on that date.
--		Show columns: OrderDate, EmpName (first and last in one column), NumOrders
--				Sort: OrdateDate

-- 11.  Create the hardest query you can imagine.
