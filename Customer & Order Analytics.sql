#In this SQL, I'm querying a database with multiple tables in it to quantify statistics about customer and order data. 

#1. How many orders were placed in January? 
select count(orderid)
from BIT_DB.JanSales

#2. How many of those orders were for an iPhone? 
select count(orderid)
FROM BIT_DB.JanSales
where Product='iPhone'

#3. Select the customer account numbers for all the orders that were placed in February. 
select acctnum
from BIT_DB.customers cust

inner join BIT_DB.FebSales Feb
on cust.order_id=FEB.orderid

#4. Which product was the cheapest one sold in January, and what was the price? 
select distinct Product, price
from BIT_DB.JanSales
where  price in (SELECT min(price) from BIT_DB.JanSales)

#OR 

select distinct product, price from BIT_DB.JanSales 
order by price asc limit 1

#5. What is the total revenue for each product sold in January? (Revenue can be calculated using the number of products sold and the price of the products).
select sum(quantity)*price as revenue
,product
from BIT_DB.JanSales
group by product

#6. Which products were sold in February at 548 Lincoln St, Seattle, WA 98101, how many of each were sold, and what was the total revenue?
select 
sum(Quantity), 
product, 
sum(quantity)*price as revenue
from BIT_DB.FebSales 
where location = '548 Lincoln St, Seattle, WA 98101'
group by product

#7. How many customers ordered more than 2 products at a time in February, and what was the average amount spent for those customers? 
select 
count(cust.acctnum), 
avg(quantity*price)
from BIT_DB.FebSales Feb
left join BIT_DB.customers cust
on FEB.orderid=cust.order_id
where Feb.Quantity>2
