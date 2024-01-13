--Eric Ruiz and Monica Arteaga
--CS 325 Fall 2022
--07-Dec-2022
spool 325report2-results.txt
set pagesize 30
set linesize 120
--formatting
col last_cust_purchased heading "Last Customer Purchased" format a25
col t_name heading "Tool Name" format a25
col aisle heading "Aisle" format a5
col bay heading "Bay" format a5
col quant heading "Quantity" format 99999
col num_sold heading " # Sold" format 99999

--This report is very useful because we are able to see the items 
--that are preforming the best, we can measure why they are doing so well
-- they are ordered by the # sold then by the highest prices
--if the aisles have anything to do with it and if we should move our 
--most expensive items to the front of the store
--We also see the sum of the total  prices times the items sold
 
col Total heading 'Total Items Revenue' format $99,999.99
ttitle " Report of Items sold during this Quarter"
break on aisle skip 3
compute sum of Total on aisle
select aisle, bay, t_name, price * num_sold AS Total
from in_store
order by num_sold desc, price desc;


clear breaks columns computes
ttitle off
set pagesize 14
set linesize 80
set feedback 6
spool off
