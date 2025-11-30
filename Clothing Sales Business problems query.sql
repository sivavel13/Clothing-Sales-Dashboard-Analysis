

SELECT * FROM clothing_sale

-- 1) What is the company’s overall performance in terms of revenue, cost, and profit ?

SELECT 
	Round(sum(totalAmount), 2), 
    Round(sum(totalCost), 2), 
    Round(sum(totalAmount - totalCost), 2) 
from clothing_sale WHERE status = "Paid"

-- 2) Which Product Generate the most Revenue ?

SELECT 
	productName, 
    productCategory, 
    sum(totalAmount)  as Profit,
    sum(quantity) as Total_Units_Sold
FROM clothing_sale 
WHERE status NOT IN ("Returned", "Cancelled")
GROUP BY productName, productCategory
ORDER BY Profit DESC LIMIT 10

SELECT count(DISTINCT productName) from clothing_sale where productCategory = "Jeans" ORDER BY unitPrice DESC

SELECT MIN(saleDate), MAX(saleDate) FROM clothing_sale WHERE productName = "Jeans_090"


-- 3) Which product categories yield the highest profit margins? 


SELECT 
	productCategory,
    SUM(totalAmount - totalCost) as Profit,
    ROUND(SUM(totalAmount - totalCost) / sum(totalAmount) * 100, 2) AS Profit_Margin_Percentage
FROM clothing_sale GROUP BY productCategory ORDER BY Profit DESC

-- 4) Who are our most valuable customers?

SELECT
	customerID,
    customerName,
    SUM(totalAmount) AS Total_sales_Amount
FROM clothing_sale
WHERE status NOT IN ("Pending", "Returned", "Cancelled")
GROUP BY customerID, customerName
ORDER BY Total_sales_Amount DESC LIMIT 20
    
-- 5) Which cities contribute most to overall sales?

SELECT * FROM clothing_sale

SELECT
	location AS city,
    SUM(totalAmount) AS Total_sales_Amount
FROM clothing_sale
WHERE status NOT IN ("Pending", "Returned", "Cancelled")
GROUP BY city
ORDER BY Total_sales_Amount DESC LIMIT 5;

-- 6) Which channel drives more sales and revenue?
SELECT 
	salesChannel,
    SUM(totalAmount) AS Total_sales_Amount
FROM clothing_sale 
WHERE status NOT IN ("Pending", "Returned", "Cancelled")
GROUP BY salesChannel 
ORDER BY Total_sales_Amount DESC


-- 7) Who are the top-performing salespeople?

SELECT 
	salespersonID, 
    salespersonName,
    SUM(totalAmount) AS Total_sales_Amount
FROM clothing_sale
WHERE status NOT IN ("Pending", "Returned", "Cancelled")
GROUP BY salespersonID, salespersonName 
ORDER BY Total_sales_Amount DESC LIMIT 5

-- 8) How much of our total revenue is affected by pending or returned orders?

SELECT * FROM clothing_sale


SELECT SUM(totalAmount) FROM clothing_sale 
WHERE status IN ("Pending", "Returned")

SELECT SUM(totalAmount) FROM clothing_sale 
WHERE status IN ("Paid", "Shipped")
-- 10748536.10

SELECT DISTINCT status from clothing_sale



SELECT 
    status,
    SUM(totalAmount) AS total_amount,
    ROUND((SUM(totalAmount) / (SELECT SUM(totalAmount) FROM clothing_sale)) * 100, 2) AS percentage_of_total_revenue
FROM clothing_sale
GROUP BY status
ORDER BY total_amount DESC;



	



