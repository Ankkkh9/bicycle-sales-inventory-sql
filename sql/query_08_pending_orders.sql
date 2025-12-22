---Q8: Number of order and value at Pending status in 2014


SELECT EXTRACT(YEAR FROM ModifiedDate) AS year,
      status,
      count(distinct PurchaseOrderID) as order_Cnt,
      ROUND(SUM(totaldue),2) AS value
FROM  `adventureworks2019.Purchasing.PurchaseOrderHeader`
WHERE status = 1 AND EXTRACT(YEAR FROM ModifiedDate) = 2014
GROUP BY 1,2;
