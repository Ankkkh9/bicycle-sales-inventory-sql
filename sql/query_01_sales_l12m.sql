---Q1: Calc Quantity of items, Sales value & Order quantity by each Subcategory in L12M

--- Present data of Month-Year, name of subcategory, sale value & order quantity
SELECT DISTINCT FORMAT_TIMESTAMP('%b %Y', TIMESTAMP(sale.ModifiedDate)) AS Period,
      subcat.name AS name,
      SUM(sale.OrderQty) AS qty_item,
      SUM(sale.LineTotal) AS sale_value,
      COUNT(DISTINCT sale.SalesOrderID) AS order_qty


FROM `adventureworks2019.Sales.SalesOrderDetail` AS sale
 
LEFT JOIN `adventureworks2019.Production.Product` AS product_defi
    ON sale.ProductID =product_defi.ProductID


LEFT JOIN `adventureworks2019.Production.ProductSubcategory` AS subcat
    ON CAST(product_defi.ProductSubcategoryID AS INT64) = subcat.ProductSubcategoryID
   
---Filter L12M    
WHERE date(sale.ModifiedDate) >= (SELECT DATE_SUB(DATE(MAX(ModifiedDate)) , INTERVAL 12 MONTH)
                                               FROM `adventureworks2019.Sales.SalesOrderDetail`)
GROUP BY 1,2
ORDER BY 2;

--------------------------------------------------------------------------------------------------------
--- Quantity of iterms, Sales Value & Order Quantity by each Subcategory
SELECT
  DATE_TRUNC(DATE(sale.ModifiedDate), MONTH) AS period_sort,
  FORMAT_DATE('%b %Y', DATE(sale.ModifiedDate)) AS period,
  subcat.name AS subcategory,
  SUM(sale.OrderQty) AS qty_item,
  SUM(sale.LineTotal) AS sale_value,
  COUNT(DISTINCT sale.SalesOrderID) AS order_qty
FROM `adventureworks2019.Sales.SalesOrderDetail` AS sale
LEFT JOIN `adventureworks2019.Production.Product` AS product_defi
  ON sale.ProductID = product_defi.ProductID
LEFT JOIN `adventureworks2019.Production.ProductSubcategory` AS subcat
  ON CAST(product_defi.ProductSubcategoryID AS INT64) = subcat.ProductSubcategoryID
GROUP BY 1,2,3
ORDER BY period_sort;
