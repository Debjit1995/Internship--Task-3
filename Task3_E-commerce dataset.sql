use dbj

SELECT Product_Category, SUM(ISNULL(TRY_CONVERT(DECIMAL(18, 2), Sales), 0)) AS Total_Sales
FROM [E-commerce Dataset]
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

SELECT Device_Type, COUNT(*) AS Order_Count
FROM [E-commerce Dataset]
GROUP BY Device_Type;

SELECT *
FROM [E-commerce Dataset];

SELECT
    Order_Date,
    Product_Category,
    Product,
    Sales,
    Device_Type
FROM [E-commerce Dataset]
WHERE Device_Type = 'Mobile'
ORDER BY Sales DESC;

SELECT DISTINCT Customer_Id
FROM [E-commerce Dataset]
WHERE Customer_Id IN (
    SELECT Customer_Id
    FROM [E-commerce Dataset]
    WHERE Product_Category = 'Fashion'
);

SELECT TOP 100 Sales 
FROM [E-commerce Dataset]
WHERE TRY_CONVERT(DECIMAL(18, 2), Sales) IS NULL
  AND Sales IS NOT NULL;

  select Sales from [E-commerce Dataset];
  select * from [E-commerce Dataset];

UPDATE [E-commerce Dataset]
SET Sales = 0 
WHERE TRY_CONVERT(DECIMAL(18, 2), Sales) IS NULL
  AND Sales IS NOT NULL;

ALTER TABLE [E-commerce Dataset]
ALTER COLUMN Sales DECIMAL(18, 2);

SELECT
    Product_Category,
    SUM(Sales) AS Total_Sales,
    AVG(Sales) AS Average_Sales
FROM [E-commerce Dataset]
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

SELECT
    Order_Priority,
    Payment_method,
    COUNT(*) AS Number_Of_Orders
FROM [E-commerce Dataset]
GROUP BY Order_Priority, Payment_method
ORDER BY Number_Of_Orders DESC;

UPDATE [E-commerce Dataset]
SET Profit = 0 
WHERE TRY_CONVERT(DECIMAL(18, 2), Sales) IS NULL
  AND Sales IS NOT NULL;

  ALTER TABLE [E-commerce Dataset]
ALTER COLUMN Profit DECIMAL(18, 2);

SELECT
    Customer_Login_type,
    SUM(Profit) AS Total_Profit
FROM [E-commerce Dataset]
GROUP BY Customer_Login_type
ORDER BY Total_Profit DESC;





