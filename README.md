# Bicycle Sales & Inventory Analytics using SQL

## 📌 Project Overview
This project analyzes bicycle sales performance, inventory levels, promotions, and customer retention using SQL on the AdventureWorks dataset.  
The goal is to support data-driven decision-making for a bicycle manufacturing and retail business by evaluating sales growth, inventory efficiency, promotion costs, and customer retention patterns.

**Industry**
- Bicycle Manufacturing & Retail

**Dataset**
- AdventureWorks Database (BigQuery public dataset)
- Time period: 2011 – 2014

**Tools**
- Google BigQuery (Standard SQL)

---

## 🎯 Business Objectives
- Analyze bicycle sales performance by subcategory
- Identify fast-growing bicycle product segments
- Evaluate regional demand across sales territories
- Measure seasonal promotion and discount costs
- Analyze customer retention using cohort analysis
- Assess inventory efficiency and stock risk
- Monitor operational exposure from pending purchase orders

---

## 📊 Business Questions & Analysis

---

### 1️⃣ Bicycle Sales Performance by Subcategory (Last 12 Months)

**Business Question**  
How do quantity sold, sales value, and order volume perform by bicycle subcategory over the last 12 months?

📂 SQL: [query_01_sales_l12m.sql](sql/query_01_sales_l12m.sql)

**Insights**
- Sales contribution varies significantly across bicycle subcategories.
- High-value segments should be prioritized for inventory planning.

---

### 2️⃣ Year-over-Year Growth by Bicycle Subcategory (Top 3)

**Business Question**  
Which bicycle subcategories show the highest year-over-year growth in quantity sold?

📂 SQL: [query_02_yoy_growth.sql](sql/query_02_yoy_growth.sql)

**Insights**
- Fast-growing subcategories represent strong expansion opportunities.
- Slower-growth segments require pricing or assortment review.

---

### 3️⃣ Top 3 Sales Territories by Bicycle Order Quantity

**Business Question**  
Which sales territories generate the highest bicycle order volumes each year?

📂 SQL: [query_03_top_territory.sql](sql/query_03_top_territory.sql)

**Insights**
- Demand is concentrated in a few key territories.
- Regional sales strategies should focus on these high-performing markets.

---

### 4️⃣ Seasonal Promotion Discount Cost by Bicycle Subcategory

**Business Question**  
What is the total cost of seasonal discounts applied to bicycle products?

📂 SQL: [query_04_discount_cost.sql](sql/query_04_discount_cost.sql)

**Insights**
- Discount costs vary widely by subcategory.
- Promotion strategies should balance volume growth and margin protection.

---

### 5️⃣ Bicycle Customer Retention Analysis (2014 Cohort)

**Business Question**  
What is the monthly retention rate of bicycle customers with successfully shipped orders in 2014?

📂 SQL: [q]()
