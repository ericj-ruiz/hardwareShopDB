--Eric Ruiz and Monica Arteaga
--CS 325 Fall 2022
--07-Dec-2022
clear breaks columns computes
spool 325report1-results.txt
set pagesize 30
set linesize 120
--formatting
col pro_lname heading "Last Name" format a5
col pro_fname heading "First Name" format a5
col pro_discount heading "Discount Level" format a17
col invoice_num heading "Invoice #" format a10
col l_name heading "Lead Name" format a20

--Report of all the Pro Members and the leads they have used
--this report is helpful in seeing if the pro members are using their leads
--option as well as seeing which pro members are spending the most 
--in projects so we can offer them more options as far as more improvements
--they can do and achieve for their properties
col total heading 'Total' format $9,999.99
ttitle "Pro Members with their Leads Report"
break on pro_id skip 1
select p.pro_id, pro_lname||', '||pro_fname "Name", pro_discount, pl.invoice_num, l_name, total 
from pro_service p , pro_requests_leads pl, leads l
where p.pro_id = pl.pro_id and pl.invoice_num = l.invoice_num;


clear breaks columns computes
ttitle off
set pagesize 14
set linesize 80
set feedback 6
spool off
