--Eric Ruiz and Monica Arteaga
--CS 325 - Fall 2022
--5-Dec-2022

--child table
delete from Pro_phones;
delete from Pro_beneficiarys;
delete from Pro_requests_leads;
delete from Customer_email;
delete from In_store;
delete from Tool_rental;

--child and parent table
delete Customer_service;

--parent tables
delete from Pro_service;
delete from Leads;

prompt Pro_service table
insert into Pro_service 
values ('P00001', 'Lee', 'Rick', 'ricklee@email.com', 'Gold', '01-Dec-2007');
insert into Pro_service
values ('P00002', 'Adams', 'Tyler', 'tyleradams@email.com', 'Bronze', '02-Dec-2007');
insert into Pro_service
values ('P00003', 'Smith', 'Greg', 'gregsmith@email.com', 'Silver', '03-Dec-2007');
insert into Pro_service
values ('P00004', 'Green', 'Nicol', 'nicolgreen@email.com', 'Iron', '04-Dec-2007');
insert into Pro_service
values ('P00005', 'Miller', 'Paul', 'paulmiller@email.com', 'Platinum', '05-Dec-2007'); 
insert into Pro_service
values ('P00006', 'King', 'Daniel', 'danielking@email.com', 'Gold', '06-Dec-2007'); 
insert into Pro_service
values ('P00007', 'Wood', 'Tim', 'timwood@email.com', 'Gold', '07-Dec-2007');
insert into Pro_service
values ('P00008', 'White', 'Lucy', 'lucywhite@email.com', 'Gold', '08-Dec-2007');
insert into Pro_service
values ('P00009', 'Lum', 'Roger', 'rogerlum@email.com', 'Gold', '09-Dec-2007');
insert into Pro_service
values ('P00010', 'Johnson', 'Jeff', 'jeffjohnson@email.com', 'Platinum', '10-Dec-2007');

prompt Leads table
insert into Leads
values ('0001', '01-Jan-2010', '01-Jun-2010', 499.99, 'BathroomRepair');	
insert into Leads
values ('0002', '10-Jan-2010', '10-Jun-2010', 199.99, 'FenceBuilt');
insert into Leads
values ('0003', '01-Feb-2010', '01-Jun-2010', 399.99, 'ACrepair');
insert into Leads
values ('0004', '11-Feb-2010', '01-Jan-2011', 7999.99, 'HotTubInstall');
insert into Leads
values ('0005', '20-Jun-2010', '01-Sep-2010', 299.99, 'SinkInstall');
insert into Leads
values ('0006', '01-Jan-2011', '01-Jun-2011', 599.99, 'YardRemodel');
insert into Leads
values ('0007', '17-Jul-2011', '01-Dec-2011', 999.99, 'CarpetInstall');
insert into Leads
values ('0008', '27-Sep-2011', '01-Nov-2011', 699.99, 'PorchBuilt');
insert into Leads
values ('0009', '01-Jan-2012', '01-Jun-2012', 499.99, 'SepticRepair');
insert into Leads
values ('0010', '01-Feb-2012', '01-Dec-2012', 1999.99, 'KitchenRemodel');

prompt Customer_service table
insert into Customer_service
values ('C00006', 'Lee', 'Rick', '8501234567', 'P00001');
insert into Customer_service
values ('C00007', 'Adams', 'Tyler', '2291234567', 'P00002');
insert into Customer_service
values ('C00008', 'Smith', 'Greg', '9121234567', 'P00003');
insert into Customer_service
values ('C00009', 'Green', 'Nicol', '3341234567', 'P00004');
insert into Customer_service
values ('C00010', 'Miller', 'Paul', '2511234567', 'P00005');
insert into Customer_service
values ('C00011', 'King', 'Daniel', '3151234567', 'P00006');
insert into Customer_service
values ('C00012', 'Wood', 'Tim', '6801234567', 'P00007');
insert into Customer_service
values ('C00013', 'White', 'Lucy', '5181234567', 'P00008');
insert into Customer_service
values ('C00014', 'Lum', 'Roger', '8381234567', 'P00009');
insert into Customer_service
values ('C00015', 'Johnson', 'Jeff', '6071234567', 'P00010');
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00001', 'Gaucho', 'Ronaldinho', '9161234567'); 
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00002', 'Messi', 'Lionel', '7071234567');
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00003', 'Santos', 'Neymar', '3181234567'); 
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00004', 'Ronaldo', 'Cristiano', '3371234567');
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00005', 'DosSantos', 'Giovani', '2251234567');
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00016', 'Foden', 'Phil', '6311234567');
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00017', 'Karimi', 'Ali', '9341234567');
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00018', 'Amirir', 'Vahid', '3631234567');
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00019', 'Torabi', 'Mehdi', '5161234567');
insert into Customer_service(cust_id, cust_lname, cust_fname, cust_phone)
values ('C00020', 'Ghoddos', 'Saman', '7161234567');


prompt Pro_phones table
insert into Pro_phones
values ('8501234567', 'P00001');
insert into Pro_phones
values ('2291234567', 'P00002');
insert into Pro_phones
values ('9121234567', 'P00003');
insert into Pro_phones
values ('3341234567', 'P00004');
insert into Pro_phones
values ('2511234567', 'P00005');
insert into Pro_phones
values ('8081234567', 'P00006');
insert into Pro_phones
values ('8061234567', 'P00007');
insert into Pro_phones
values ('9151234567', 'P00008');
insert into Pro_phones
values ('4321234567', 'P00009');
insert into Pro_phones
values ('2101234567', 'P00010');

prompt Pro_beneficiarys table
insert into Pro_beneficiarys
values ('C00016', 'P00001');
insert into Pro_beneficiarys
values ('C00017', 'P00002');
insert into Pro_beneficiarys
values ('C00018', 'P00003');
insert into Pro_beneficiarys
values ('C00019', 'P00004');
insert into Pro_beneficiarys
values ('C00020', 'P00005');
insert into Pro_beneficiarys
values ('C00001', 'P00006');
insert into Pro_beneficiarys
values ('C00002', 'P00007');
insert into Pro_beneficiarys
values ('C00003', 'P00008');
insert into Pro_beneficiarys
values ('C00004', 'P00009');
insert into Pro_beneficiarys
values ('C00005', 'P00010');

prompt Pro_requests_leads table;
insert into Pro_requests_leads
values ('P00001', '0001');
insert into Pro_requests_leads
values ('P00002', '0002');
insert into Pro_requests_leads
values ('P00003', '0003');
insert into Pro_requests_leads
values ('P00004', '0004');
insert into Pro_requests_leads
values ('P00005', '0005');
insert into Pro_requests_leads
values ('P00006', '0006');
insert into Pro_requests_leads
values ('P00007', '0007');
insert into Pro_requests_leads
values ('P00008', '0008');
insert into Pro_requests_leads
values ('P00009', '0009');
insert into Pro_requests_leads
values ('P00010', '0010');

prompt Customer_email table
insert into Customer_email
values ('ronaldinho@email.com', 'C00001');
insert into Customer_email
values ('lionelmessi@email.com', 'C00002');
insert into Customer_email
values ('neymarsantos@email.com', 'C00003');
insert into Customer_email
values ('cristianoronaldo@email.com', 'C00004');
insert into Customer_email
values ('giovanidossantos@email.com', 'C00005');
insert into Customer_email
values ('ricklee@email.com', 'C00006');
insert into Customer_email
values ('tyleradams@email.com', 'C00007');
insert into Customer_email
values ('gregsmith@email.com', 'C00008');
insert into Customer_email
values ('nicolgreen@email.com', 'C00009');
insert into Customer_email
values ('paulmiller@email.com', 'C00010');
insert into Customer_email
values ('danielking@email.com', 'C00011');
insert into Customer_email
values ('timwood@email.com', 'C00012');
insert into Customer_email
values ('lucywhite@email.com', 'C00013');
insert into Customer_email
values ('rogerlum@email.com', 'C00014');
insert into Customer_email
values ('jeffjohnson@email.com', 'C00015');
insert into Customer_email
values ('philfoden@email.com', 'C00016');
insert into Customer_email
values ('alikarimi@email.com', 'C00017');
insert into Customer_email
values ('vahidamirir@email.com', 'C00018');
insert into Customer_email
values ('mehditorabi@email.com', 'C00019');
insert into Customer_email
values ('samanghoddos@email.com', 'C00020');

prompt In_store table
insert into In_store
values ('a000011111', '01', '01', 'Drill', 0, 29.99, 45, 'C00001');
insert into In_store
values ('a000011112', '01', '02', 'DemolitionHammer', 0, 69.99, 45, 'C00002');
insert into In_store
values ('a000011113', '01', '03', 'SafetyGlasses', 0, 2.99, 45, 'C00003');
insert into In_store
values ('a000011114', '01', '04', 'NailGun', 0, 79.99, 45, 'C00004');
insert into In_store
values ('a000011115', '01', '05', '2x6x10Wood', 0, 23.99, 45, 'C00005');
insert into In_store
values ('a000011116', '02', '01', 'BeltSander', 40, 14.99, 5, 'C00006');
insert into In_store
values ('a000011117', '02', '02', 'Level', 40, 12.99, 5, 'C00007');
insert into In_store
values ('a000011118', '02', '03', 'Chainsaw', 40, 99.99, 5, 'C00008');
insert into In_store
values ('a000011119', '02', '04', 'ChopSaw', 40, 199.99, 5, 'C00009');
insert into In_store
values ('a000011110', '02', '05', 'CrescentWrench', 40, 29.99, 5, 'C00010');
insert into In_store
values ('a000011121', '03', '01', 'PaintKit', 40, 10.99, 4, 'C00011');
insert into In_store
values ('a000011122', '03', '02', '4x4x10wood', 40, 17.99, 4, 'C00012');
insert into In_store
values ('a000011123', '03', '03', 'ReciprocatingSaw', 40, 119.99, 4, 'C00013');
insert into In_store
values ('a000011124', '03', '04', 'AirCompressor', 40, 129.99, 4, 'C00014');
insert into In_store
values ('a000011125', '03', '05', 'LawnMower', 40, 124.99, 4, 'C00015');
insert into In_store
values ('a000011126', '04', '01', 'HeatGun', 40, 17.99, 3, 'C00016');
insert into In_store
values ('a000011127', '04', '02', '4x8plyWood', 40, 59.99, 3, 'C00017');
insert into In_store
values ('a000011128', '04', '03', 'TapeMeasure', 40, 23.99, 3, 'C00018');
insert into In_store
values ('a000011129', '04', '04', '4x8dryWall', 40, 8.99, 3, 'C00019');
insert into In_store
values ('a000011131', '04', '05', '2x4x10wood', 40, 7.99, 3, 'C00020');
insert into In_store
values ('a000011132', '05', '01', 'ShopVac', 200, 99.99, 1, 'C00001');
insert into In_store
values ('a000011133', '05', '02', 'NailsBucket30lbs', 200, 39.99, 1, 'C00002');
insert into In_store
values ('a000011134', '05', '03', 'ScrewsBucket30lbs', 200, 39.99, 1, 'C00003');
insert into In_store
values ('a000011135', '05', '04', 'Hammer', 200, 20.99, 1, 'C00004');
insert into In_store
values ('a000011136', '05', '05', '5gallonPaint', 200, 100.99, 1, 'C00005');


prompt Tool_rental table
insert into Tool_rental
values ('z9', 54.99, '10-May-2010', '14-May-2010', '17-May-2010','Lawnmower', 'C00001');
insert into Tool_rental
values ('z8', 24.99, '10-Jun-2010', '14-Jun-2010', '17-Jun-2010','Drill', 'C00002');
insert into Tool_rental
values ('z7', 29.99, '15-Jun-2010', '20-Jun-2010', '24-Jun-2010','DemolitionHammer', 'C00003');
insert into Tool_rental
values ('z6', 10.99, '17-Jun-2010', '25-Jun-2010', '26-Jun-2010','PowerScrewdriver', 'C00004');
insert into Tool_rental
values ('z5', 29.99, '10-Jul-2010', '14-Jul-2010', '17-Jul-2010','NailGun', 'C00005');
insert into Tool_rental
values ('z4', 24.99, '17-Jul-2010', '24-Jul-2010', '27-Jul-2010','AngleGrinder', 'C00006');
insert into Tool_rental
values ('z3', 24.99, '10-Aug-2010', '14-Aug-2010', '17-Aug-2010','BeltSander', 'C00007');
insert into Tool_rental
values ('z2', 49.99, '10-Sep-2010', '14-Sep-2010', '17-Sep-2010','Chainsaw', 'C00008');
insert into Tool_rental
values ('z1', 49.99, '10-Oct-2010', '14-Oct-2010', '17-Oct-2010','ChopSaw', 'C00009');
insert into Tool_rental
values ('z0', 29.99, '10-Dec-2010', '14-Dec-2010', '17-Dec-2010','AirCompressor', 'C00010');
