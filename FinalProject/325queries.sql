--Eric Ruiz and Monica Arteaga
--CS 325 - Fall 2022
--05-Dec-2022
start 325populate.sql
spool 325query-results.txt

--Looking at the customer beneficiarys for pro_service members using equi join, 
prompt Query 1;

select p.pro_id, pro_lname, pro_benef, cust_lname
from pro_service p, pro_beneficiarys b, customer_service c
where p.pro_id = b.pro_id and c.cust_id = b.pro_benef;

--Put overstocked tools 1/2 off sale
prompt Query 2;
--items price before the sale
select sku, t_name, quant, price
from in_store
where quant >100;
update in_store
set price = price/2
where quant >100;
--item price after the sale
select sku, t_name, quant, price
from in_store
where quant >100;

--Group by to get the avg price of an aisle to look for ways to 
--market the most expensive items
prompt Query 3;
select aisle, avg(price)
from in_store
group by aisle 
order by avg(price) desc;

--Want to find the customer who bought the most expensive item in our store 
prompt Query 4;
select cust_id, cust_lname, t_name, price  
from customer_service c, in_store i
where c.cust_id = i.last_cust_purchased and price = (select max(price)
						from in_store);

--Calculator for multiple items a customer wants to buy
prompt Query 5;
select sum(price) "Total Price", count(*) "Tools Bought"
from in_store
where sku = ANY ('a000011116', 'a000011117', 'a000011118');

--Looking at the revenue for tool rentals to see if it is profitable and
--Look at tool rentals and see which invoice came in before they were due
prompt Query 6;
select sum(rent_cost) "Tool Rental Revenue", count(rental_id) "Rentals back in Time"
from tool_rental
where rent_in < rent_due;

--The total revenue of the tools sold
prompt Query 7;
select sum(num_sold * price) "Total Revenue", sum(num_sold) "Tools Sold"
from in_store;

--Calculators for multiple tools a customer wants to rent
prompt Query 8;
select sum(rent_cost) "Total Price", count(*) "Tools Rented"
from tool_rental
where rental_id = ANY ('z9', 'z8', 'z7');

rollback;

spool off
