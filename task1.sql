create table Customer (
	Cus_no varchar(6) not null unique,
	Name varchar(20),
	Address1 varchar(30),
	City varchar(15),
	State varchar(15),
	Pincode Integer,
	Bal_due Decimal(10,2));

insert into Customer values 
	(0001,'Ivan','12,first street','Vellore','Tamil Nadu',632009,15000),
	(0002,'Vandana','34, Second cross street','Bombay','Maharashtra',400057,0),
	(0003,'Basu','78, Third street','Bombay','Maharashtra',400058,5000);

insert into Customer (Cus_no,Name,Address1,City,Pincode,Bal_due) values 
	(0004,'Ravi','45,fourth street','Delhi',100001,10000);

create table Product (
	Prod_no varchar(6) unique,
	Descr varchar(20),
	Unit_price Integer,
	Qty_on_hand Integer,
	Category varchar(10));

create table Cust_prod (
	Cust_no varchar(6),
	Prod_no varchar(6),
	No_of_items_purchased Integer,
	Total_price Decimal(15,4),
	Discount Integer,
	Netamount Decimal(10,4));