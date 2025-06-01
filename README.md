# Internship--Task-3
Data Analysis Of E-commerce data using SQL

First, calculated the total sales for each type of product category by using the following querries :-  

TRY_CONVERT(DECIMAL(18, 2), Sales): Tries to turn the Sales value into a number (a decimal number with up to 18 digits, 2 of which are after the decimal point). If it can't (because the Sales value is something like text, e.g., 'N/A'), it will return NULL.
ISNULL(..., 0): If TRY_CONVERT returns NULL (meaning the sales value wasn't a valid number), this function replaces that NULL with 0. This ensures that invalid sales entries don't cause errors and are treated as zero for the sum.
SUM(...) AS Total_Sales: Adds up all the sales numbers (after handling invalid ones) for each group and calls this new sum Total_Sales.
GROUP BY Product_Category: Gathers all products belonging to the same category so their sales can be summed up together.
ORDER BY Total_Sales DESC: Sorts the final list from the highest total sales to the lowest.

Then, counted how many orders came from each type of device (e.g., 'Mobile', 'Web').

Then, showed details (order date, category, product, sales, device type) specifically for orders placed using a 'Mobile' device, sorted by sales amount (highest first).

" UPDATE [E-commerce Dataset]
SET Sales = 0
WHERE TRY_CONVERT(DECIMAL(18, 2), Sales) IS NULL
  AND Sales IS NOT NULL; "
This query cleans your data. It finds all the Sales values that are not valid numbers (like 'N/A' or text) and changes them to 0.
How it works:
UPDATE [E-commerce Dataset]: Specifies that you want to change data within this table.
SET Sales = 0: Sets the Sales column to 0.
WHERE TRY_CONVERT(DECIMAL(18, 2), Sales) IS NULL AND Sales IS NOT NULL: This crucial WHERE clause ensures that only the problematic, non-numeric sales entries are updated, leaving valid numbers as they are.

Then, calculated the total sales and average sales for each product category. This is similar to the first query but assumes that the Sales column has already been successfully converted to a numeric type, so TRY_CONVERT and ISNULL are no longer needed.

In summary, this set of SQL queries demonstrates a common workflow in data analysis: inspecting raw data, cleaning problematic entries, ensuring correct data types for calculations, and then performing various aggregations and filters to gain insights from the dataset.


