USE SuperstoreDB
GO

SELECT TOP 10 *
FROM train


-- Here we calculate the total sales for the entire company
SELECT 
    SUM(Sales) AS Total_Sales
FROM [dbo].[train]


-- Step 2: Calculate total sales per product category to identify top performers
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM [dbo].[train]
GROUP BY Category
ORDER BY Total_Sales DESC


-- Step 3: Analyze sales by State to identify top-performing geographical markets
SELECT TOP 5
    State,
    SUM(Sales) AS Total_Sales
FROM [dbo].[train]
GROUP BY State
ORDER BY Total_Sales DESC


-- Step 4: Identify the top 5 customers by total sales
SELECT TOP 5
    Customer_ID,
    Customer_Name,
    SUM(Sales) AS Total_Spent
FROM [dbo].[train]
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Spent DESC