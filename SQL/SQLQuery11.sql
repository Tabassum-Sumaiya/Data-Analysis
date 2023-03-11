### Select Statements

#1 Find the maximum quantity sold in a transaction? 

SELECT MAX(Quantity),
COUNT(*)
FROM [limu1].[dbo].[TR_OrderDetails];

##


SELECT MIN(Quantity),
COUNT(*)
FROM [limu1].[dbo].[TR_OrderDetails]

#2 FIND the unique properties in all the transaction?

alter table [limu1].[dbo].[TR_OrderDetails]
alter column [ProductID]  INT

SELECT DISTINCT 
ProductID,Quantity
FROM  [limu1].[dbo].[TR_OrderDetails]
WHERE Quantity = 3
ORDER BY ProductID asc,Quantity desc;


#3 Find the unique properties? or how many unique propertyID here or

SELECT Distinct PropertyID
FROM [limu1].[dbo].[TR_OrderDetails]

### Group BY

#4 Find theproduct category that has maximum products?  

SELECT ProductCategory,
COUNT (*) as Total
FROM [limu1].[dbo].[TR_Products]
GROUP BY ProductCategory
ORDER BY 2 DESC

#5 Find the state where most stores are present?

SELECT PropertyState,
COUNT (*) as COUNT
FROM [limu1].[dbo].[TR_PropertyInfo]
GROUP BY PropertyState
ORDER BY 2 DESC

#6 Find the top 5 product IDs that did maximum slaes in terms of quantity? 
[NOTE: Do alter just because to change the numeric value to integer that's why it count or find the number.]

alter table [limu1].[dbo].[TR_OrderDetails]
alter column [Quantity]  INT

SELECT 
TOP (5)
ProductID,
SUM(Quantity) as Total_Quantity
FROM [limu1].[dbo].[TR_OrderDetails]
GROUP BY ProductID
ORDER BY 2 DESC

#7 Find the top 5 property IDS that did maximum quantity?

[Note: Use TOP instead of Limit to find Top products]

SELECT 
TOP (5)
PropertyID,
SUM(Quantity) as Total_Quantity
FROM [limu1].[dbo].[TR_OrderDetails]
GROUP BY PropertyID
ORDER BY 2 DESC


#### Joins and Group BY

#Join two tables

[ Note: 0.* MEAN i TAKE ALL ROW + COLUMN FROM O TABLE]

SELECT 
o.*
,p.ProductName
,p.ProductCategory
,p.Price
FROM  [limu1].[dbo].[TR_OrderDetails] as o
LEFT JOIN [limu1].[dbo].[TR_Products] as p ON
o.ProductID = p.ProductID

#8 Find the top 5 Product Names that did maximum sales in terms of Quantity?

SELECT 
p.ProductName
,SUM(o.Quantity) as Total_Quantity
FROM  [limu1].[dbo].[TR_OrderDetails] as o
LEFT JOIN [limu1].[dbo].[TR_Products] as p ON
o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY 2 DESC

#9 Find the top 5 products that did maximum sales


SELECT 
TOP(5)
p.ProductName
, SUM(o.Quantity * p.Price) as Sales
FROM  [limu1].[dbo].[TR_OrderDetails] as o
LEFT JOIN [limu1].[dbo].[TR_Products] as p ON
o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY Sales DESC

#10 Find the top 5 Cities that did maximum sales


SELECT 
TOP(5)
pi.PropertyCity
, SUM(o.Quantity * p.Price) as Sales
FROM  [limu1].[dbo].[TR_OrderDetails] as o
LEFT JOIN [limu1].[dbo].[TR_Products] as p ON o.ProductID = p.ProductID
LEFT JOIN [limu1].[dbo].[TR_PropertyInfo] as pi ON o.[PropertyID] = pi.[Prop ID]
GROUP BY pi.PropertyCity
ORDER BY 2 DESC


### Advance - Joins and Group By

#11 Find the top 5 products in each of the cities? 
#11.1 What will is look like for states?
, Arlington

SELECT 
pi.PropertyCity
,p.ProductName
, SUM(o.Quantity * p.Price) as Sales
FROM  [limu1].[dbo].[TR_OrderDetails] as o
LEFT JOIN [limu1].[dbo].[TR_Products] as p ON o.ProductID = p.ProductID
LEFT JOIN [limu1].[dbo].[TR_PropertyInfo]as pi ON o.[PropertyID] = pi.[Prop ID]
WHERE Pi.PropertyCity = 'Arlington'
GROUP BY pi.PropertyCity,
p.ProductName
ORDER BY Sales DESC

## 
SELECT 
TOP(5)
pi.PropertyCity
,p.ProductName
, SUM(o.Quantity * p.Price) as Sales
FROM  [limu1].[dbo].[TR_OrderDetails] as o
LEFT JOIN [limu1].[dbo].[TR_Products] as p ON o.ProductID = p.ProductID
LEFT JOIN [limu1].[dbo].[TR_PropertyInfo]as pi ON o.[PropertyID] = pi.[Prop ID]
WHERE Pi.PropertyCity = 'Arlington'
GROUP BY pi.PropertyCity,
p.ProductName
ORDER BY Sales DESC


##
SELECT
pi.PropertyCity
,p.ProductName
, SUM(o.Quantity * p.Price) as Sales
FROM  [limu1].[dbo].[TR_OrderDetails] as o
LEFT JOIN [limu1].[dbo].[TR_Products] as p ON o.ProductID = p.ProductID
LEFT JOIN [limu1].[dbo].[TR_PropertyInfo]as pi ON o.[PropertyID] = pi.[Prop ID]
GROUP BY pi.PropertyCity,
p.ProductName
ORDER BY Sales DESC

