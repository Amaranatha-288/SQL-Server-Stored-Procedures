-- Stored Procedure
-- Write the query
-- For the US Customer Find The Total Number of Customers And Avrege Course
SELECT
  COUNT(*) TotalCustomers,
  AVG(Score) AvgScore
FROM Sales.Customers
WHERE Country = 'USA'

-- Truning the Query into the Stored Procedure
CREATE PROCEDURE GetCustomerSummary AS
BEGIN
SELECT
  COUNT(*) TotalCustomers,
  AVG(Score) AvgScore
FROM Sales.Customers
WHERE Country = 'USA'
END

--  Execute the Stored Procedure
EXEC GetCustomerSummary

-- Parameters
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50)  
AS
BEGIN
SELECT
  COUNT(*) TotalCustomers,
  AVG(Score) AvgScore
FROM Sales.Customers
WHERE Country = @Country

SELECT
    COUNT(OrderID) TotalOrders,
    SUM(Sales) TotalSales
FROM Sales.Orders o
JOIN Sales.Customers c
ON c.CustomerID = o.CustomerID
WHERE Country = @Country

END





EXEC GetCustomerSummary @Country = 'USA'


-- Find the total Nr. of orders and Total Orders
SELECT
COUNT(OrderID) TotalOrders,
SUM(Sales) TotalSales
FROM Sales.Orders o
JOIN Sales.Customers c
ON c.CustomerID = o.CustomerID
WHERE Country = @Country


-- Varibles
-- Genrating the Report 
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA'  
AS
BEGIN

DECLARE @TotalCustomers INT, @AvgScore FLOAT;

-- Prepare and Clean Up
IF EXISTS (SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country = @Country)
BEGIN
  PRINT('Updating NULL Score to 0');
  UPDATE Sales.Customers
  SET Score = 0
  WHERE Score IS NULL AND @Country;
END

ELSE 
BEGIN
   PRINT('No NULL Scores found')
END
SELECT
   @TotalCustomers = COUNT(*),
   @AvgScore = AVG(Score)
FROM Sales.Customers
WHERE Country = @Country;

PRINT 'Total Customers from ' + @Country + ': ' + CAST(@TotalCustomers AS VARCHAR(50));

PRINT 'Average Score from ' + @Country + ': ' + CAST(@AvgScore AS VARCHAR(50));
SELECT
    COUNT(OrderID) TotalOrders,
    SUM(Sales) TotalSales,
    1/0
FROM Sales.Orders o
JOIN Sales.Customers c
ON c.CustomerID = o.CustomerID
WHERE Country = @Country

END

GO

EXEC GetCustomerSummary;
EXEC GetCustomerSummary @Country = 'Germany'
                          
-- Error Handling









