--Eric Ruiz and Monica Arteaga
--CS 325 Fall 2022
--07-Dec-2022
clear breaks columns computes
spool 325report3-results.txt
set pagesize 30
set linesize 120
--formatting
col cust_id heading "Customer ID" format a12
col cust_lname heading "Last Name" format a10
col cust_fname heading "First Name" format a10
col rent_cost heading 'Cost' format $9,999.99

--Report on the customers and the tools being rented and seeing the 
--revenue of the tools and trying to measure them
ttitle "Customers and the Tools Rented"
select c.cust_id, cust_lname || ', ' || cust_fname "Name", t_name "Tool", rent_cost
from customer_service c, tool_rental t
where c.cust_id = t.cust_id;   

clear breaks columns computes
ttitle off
set pagesize 14
set linesize 80
set feedback 6
spool off
