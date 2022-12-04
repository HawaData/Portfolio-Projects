select * from [dbo].[sales_data_sample]

grouping sales by productline (which product sells the most)
select PRODUCTLINE,sum(sales) Revenue
from [dbo].[sales_data_sample]
group by PRODUCTLINE
order by 2 desc



...Best month for sales in a specific year and how much was earned that month?
select MONTH_ID, sum(sales) Revenue, count(ORDERNUMBER) Frequency
from [dbo].[sales_data_sample]
where YEAR_ID = 2004
group by MONTH_ID
order by 2 desc


...sales across a city and how much orders?
grouping sales by CITY (which city makes the highest sales)
select CITY,sum(sales) Revenue,count(ORDERNUMBER) Frequency
from [dbo].[sales_data_sample]
group by CITY
order by 2 desc
