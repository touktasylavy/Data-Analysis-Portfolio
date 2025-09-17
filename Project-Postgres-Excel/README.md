UrbanMart E-Commerce Analysis

Project Overview

This project presents an end-to-end analysis of UrbanMart’s e-commerce performance. The study uses SQL for data processing and Excel dashboards for visualization.
[- UrbanMart E-commerce Analysis.pdf](https://github.com/touktasylavy/Data-Analysis-Portfolio/blob/main/Project-Postgres-Excel/UrbanMart%20E-commerce%20Analysis%20Project%20Report.pdf)

The analysis focuses on:
1. Sales Performance (Revenue Focus) → How much revenue is generated, number of transactions, and trends over time.
2. Customer Segmentation (Who Buys) → Which demographic groups (gender, age, region) contribute most to revenue.
3. Product Performance (What Sells) → Which product categories generate the most revenue and transactions.

📂 Dataset & Tools

Dataset

- Sales transactions: 50,000records (TransactionID, CustomerID, TransactionDate, TransactionValue, 
ProductCategory, CustomerGender, CustomerAgeGroup, Region).

- Tools Used
SQL → Database creation & queries for KPIs (revenue, segmentation, top selling category).
Excel → Pivot tables, charts, dashboards for sales, customer, and product insights.
PDF Report → Final analysis document with interpretations.

🎯 Business Objectives

- Sales Performance – Measure total revenue, number of transactions, and revenue trends across months.
- Customer Segmentation – Identify key demographic groups contributing the most to revenue.
- Product Performance – Compare categories by both revenue share and transaction volume.
- Provide recommendations for growth strategies (retention, loyalty, cross-sell).

🛠️ Steps in the Analysis

Database Creation>> Built SQL schema and imported raw sales data>> Data Querying>> Wrote SQL queries to calculate:

- Overll KPIs by aggregrated (sum of revenue, sum of trnasactions, sum of unique_customers, Average of transaction value )
- Monthly revenue & transaction counts.
- Revenue by gender, age group, and region.
- Revenue and transactions by product category.

Excel Analysis>> Imported query outputs>> Built pivot tables for sales trends, customer demographics, and product performance >> Dashboard Creation

Key Insights 

Sales Performance

- Beauty and Home drive the highest revenue.
- Clear seasonality: December peak but poor retention after holiday shopping.
- Transaction volume steady across categories, but revenue concentration higher in Beauty.
  
Customer Segmentation

- Females contributed more revenue (71B vs 56B males), particularly ages 26–35 (28B). 
- Young adults (18–25) are the second-largest group, signaling long-term potential.  
- Urban regions contribute the highest revenue, but retention is better in Surabaya regions.

Product Performance

- All product categories perform similarly (~25B revenue each), with Beauty and Home slightly ahead. 

Recommendations

UrbanMart is a stable yet concentrated e-commerce platform: strong revenue driven by a small, 
loyal customer base, with clear demographic and regional segments leading sales. The even 
product distribution provides resilience and flexibility. To sustain growth, UrbanMart should 
expand its customer base, deepen engagement with high-spending segments, and capitalize 
on regional strengths, while leveraging the balanced product portfolio to explore new 
opportunities. 
