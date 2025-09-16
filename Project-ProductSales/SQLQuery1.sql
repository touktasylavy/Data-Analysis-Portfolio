
with cte as (
Select 
a.Product,
a.Category,
a.Brand,
a.Description,
a.Cost_price,
a.Sale_Price,
a.Image_url,
b.Date,
b.Customer_Type,
b.Country,
b.Discount_Band,
b.Units_Sold
,
(Sale_Price*Units_Sold) as Revenue,
(Cost_Price*Units_Sold) as Total_Cost,
format(date,'MMMM') as Month,
format(date,'yyyy') as Year

From Product_data a
Join product_sales b
On a.Product_ID = b.Product)

select *,
(1-Discount*1.0/100)*Revenue As Discount_Revenue 
from cte a 
Join discount_data b
ON a.Discount_Band=b.Discount_Band and a.Month = b.Month