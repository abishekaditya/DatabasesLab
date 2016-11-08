create table customer (
	cus_no varchar(6) not null unique,
	name varchar(20),
	address1 varchar(30),
	city varchar(15),
	state varchar(15),
	pincode Integer,
	bal_due Decimal(10,2),
	primary key (Cus_no));

insert into customer values 
	('0001','Ivan','12,first street','Vellore','Tamil Nadu',632009,15000),
	('0002','Vandana','34, Second cross street','Bombay','Maharashtra',400057,0),
	('0003','Steven','87, Fourth street','Chennai','Tamil Nadu',400059,75000),
	('1001','Phteven','25, Ninth Street','Chennai','Tamil Nadu',400058,5000);

insert into customer (cus_no,name,address1,city,pincode,bal_due) values 
	('0004','Ravi','45,fourth street','Delhi',100001,10000);

create table product (
	prod_no varchar(6) unique,
	descr varchar(20),
	unit_price Integer,
	qty_on_hand Integer,
	category varchar(10),
	primary key (prod_no));

insert into product (prod_no, descr, unit_price, qty_on_hand, category) values
	('0001', 'Moto G(4)', 13000, 100, 'phone'),
	('1001', 'ThinkPad E450', 26000, 50, 'laptop'),
	('0011', 'Mouse', 3900, 150, 'laptop+'),
	('1011', 'XXX', 3900, 150, 'special');

create table cust_prod (
	cust_no varchar(6),
	prod_no varchar(6),
	no_of_items_purchased Integer,
	total_price Decimal(15,4),
	discount Integer,
	netamount Decimal(10,4),
	primary key (cust_no));

insert into cust_prod values('001','0001','50','5000','2','10000');
insert into cust_prod values('002','0002','30','3000','3','9000');
insert into cust_prod values('003','0003','50','5000','2','10000');
insert into cust_prod values('004','0004','60','15000','12','20000');
insert into cust_prod values('005','0005','10','12000','8','15000');