--Eric Ruiz and Monica Arteaga
--CS 325 -Fall 2022
-- 29-Nov-2022
spool 325result-contents.txt
set pagesize 30
set linesize 120

prompt Pro_service;
select * 
from Pro_service;

prompt Pro_phones;
select * 
from Pro_phones;

prompt Pro_beneficiarys;
select *
from Pro_beneficiarys;

prompt Leads;
select *
from Leads;

prompt Pro_requests_leads;
select *
from Pro_requests_leads;

prompt Customer_service;
select *
from Customer_service;

prompt Customer_email;
select *
from Customer_email;

prompt In_store;
select *
from In_store;

prompt Tool_rental;
select * 
from Tool_rental;

set pagesize 14
set linesize 80
spool off
