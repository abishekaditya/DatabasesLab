create table salesman (
	salesman_no varchar(6) primary key,
	salesman_name varchar(20) not null,
	address varchar(50) not null,
	city varchar(20),
	state varchar(20),
	pincode numeric(6),
	sal_amt numeric(8,2) not null,
constraint chk_salesman check (salesman_no like 's%' and sal_amt != 0));

create table orders (
	order_no varchar(6) primary key unique,
	order_date date,
	client_no varchar(25),
	salesman_no varchar(6),
	del_type char(1),
	del_date date,
	order_status varchar(10),
foreign key (client_no) references customer(cus_no),
foreign key (salesman_no) references salesman(salesman_no),
constraint chk_order check (
	order_status in ('inprocess','fulfilled','backorder','cancelled') and
	del_date >= order_date and 
	del_type in ('p','f') and 
	order_no like '0%'));

create table sales_order_details (
  s_order_no varchar(6),
  product_no varchar(6),
  qty_order numeric(8),
  qty_disp numeric(8),
  product_rate numeric(10,2),
  primary key (s_order_no,product_no),
  foreign key (s_order_no) references orders(order_no),
  foreign key (product_no) references product(prod_no)
);

insert into salesman values
	('s00001','Kiran','A/14 worli','Bombay','Mah',400002,3000),
	('s00002','Manish','65,nariman','Bombay','Mah',400001,3000),
	('s00003','Ravi','P-7 Bandra','Chennai','TN',632002,5000),
	('s00004','Ashish','A/5 Juhu','Bombay','Mah',400044,7000);

insert into orders values
	('019001','1996-01-12','0001','s00001','f','1996-01-20','Inprocess'),
	('019002','1996-01-25','0002','s00002','p','1996-01-27','Cancelled'),
	('016865','1996-02-18','0003','s00003','f','1996-02-20','Inprocess'),
	('019003','1996-04-03','0004','s00001','f','1996-04-07','Inprocess'),
	('046865','1996-04-04','0004','s00001','f','1996-04-07','Inprocess');

insert into sales_order_details values
	('019001','0001',4,4,525),
	('019001','1001',2,1,840),
	('019001','0011',2,1,5250),
	('019002','0001',10,0,525),
	('046865','1001',3,3,3150),
	('046865','1011',10,10,5250),
	('019003','0001',4,4,1050);
