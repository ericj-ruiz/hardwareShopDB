-- Monica Arteaga Eric Ruiz
-- CS 325 - Fall 2022
-- 12-3-2022
 
/*
Business Rules:
Once a customer in Customer_service enrolls in Pro_service, they can add two Pro_beneficiaries to their account. Whether that is a spouse, a friend, or anyone they would like to add to benefit from their unique discount percentage.
	Any customer in Customer_service is welcome to enroll in Pro_service, however, that does not necessarily guarantee the unique discount percentage for them unless they are a usual spender and their Pro_service account is a mature account.
The unique discount percentage is as follows:
Maturity of account: <= 1 year AND
Spendings above:	  $1000

	Iron discount		10%	$1000+
	Bronze discount	15%	$2000+
Maturity of account: >   1 year AND
Spending above:	  $3000
	Silver discount		25%	$3000+
	Gold discount		30%	$4000+
	Platinum		40%	$5000+


*/
-- pro_id different from cust_id will be ex. P00001
-- cust_id will be ex C00001
-- these are the same person but are different accounts so
-- if they are pro they should give P... instead of C... but
-- that is up to the customer if they would prefer to have 
-- whatever they bought to go to their customer account or their pro account

drop table Pro_service cascade constraints;

create table Pro_service
(pro_id			char(6),
 pro_lname		varchar2(25),
 pro_fname		varchar2(25),
 pro_email		varchar2(32),
 pro_discount		varchar2(8),
 member_date		date, 
primary key		(pro_id)
);

-- customers enrolled in Pro may have more than one phone number
-- a preffered phone number, cell phone, home phone, business phone, etc


drop table Pro_phones cascade constraints;

create table Pro_phones
(pro_phone		char(12),
 pro_id			char(6),
 primary key		(pro_phone, pro_id),
 foreign key		(pro_id) references Pro_service
);

-- Pro_beneficiarys table
-- beside the Pro customer they may have 2 pro beneficaries
-- a friend, a spouse, anyone 
-- and those folk can also recieve Pro cutomer's unique discount percentage
-- Pro_benef are cust_id 

drop table Pro_beneficiarys cascade constraints;

create table Pro_beneficiarys
(pro_benef		char(6),
 pro_id			char(6),
 primary key		(pro_benef, pro_id),
 foreign key		(pro_id) references Pro_service
);

-- Leads table
-- invoice_num will be something like 1056
-- start_date is when Lead had began
-- end_date is when Lead had ended
-- total is the total in dollars it cost 

drop table Leads cascade constraints;

create table Leads
(invoice_num		char(4),		
 start_date		date,
 end_date		date,
 total			decimal(6, 2),
 l_name			varchar2(25),
 primary key		(invoice_num)
);

-- Pro_requests_leads table
-- Once enrolled in Pro_service, pro customers are allowed 
-- to have leads
-- leads are services like air conditioning repair/ maintenance
-- fencing, carpet installation, kitchen remodel, etc.

drop table Pro_requests_leads cascade constraints;

create table Pro_requests_leads
(pro_id			char(6),
 invoice_num		char(4),
 primary key		(pro_id, invoice_num),
 foreign key 		(pro_id) references Pro_service,
 foreign key		(invoice_num) references Leads
);

-- Customer_service table
-- cust_phone is not (mv) customer's can only have a preferred phone

drop table Customer_service cascade constraints;

create table Customer_service
(cust_id                char(6),
 cust_lname             varchar2(25),
 cust_fname             varchar2(25),
 cust_phone             char(10),
 pro_id			char(6),
 primary key            (cust_id),
 foreign key            (pro_id) references Pro_service 
);
-- Customer_email table
-- cust_email is (mv)

drop table Customer_email cascade constraints;

create table Customer_email
(cust_email             varchar2(32),
 cust_id                char(6),
 primary key            (cust_email, cust_id),
 foreign key            (cust_id) references Customer_service
);

-- In_store table
-- sku is another word for item's barcode number
-- aisle is where to find the item in the store (there are 5 aisle in the store)
-- bay is where to find the item in the aisle (there are 5 bays in each aisle)

drop table In_store cascade constraints;

create table In_store
(sku                    char(10),
 aisle                  char(2),
 bay                    char(2),
 t_name			varchar2(25),
 quant			integer,
 price			decimal(6,2),
 num_sold		integer,
 last_cust_purchased	char(6),
 primary key            (sku),
 foreign key            (last_cust_purchased) references Customer_service(cust_id)
);

-- Tool_rental table
-- rental_id is will be 01, 02, 03 ..., 29 an uniquely identifies
-- a tool that may be rented out
-- rent_out is when tool was taken out
-- rent_in is when tool was brought back in
-- rent_due is when tool should have been returned

drop table Tool_rental cascade constraints;

create table Tool_rental
(rental_id              char(2),
 rent_cost              decimal(6, 2),
 rent_out               date,
 rent_in                date,
 rent_due               date,
 t_name			varchar2(25),
 cust_id                char(6),
 primary key            (rental_id),
 foreign key            (cust_id) references Customer_service
);


