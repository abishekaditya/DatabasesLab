create table Salesman (
	Salesman_no varchar(6) primary key,
	Salesman_name varchar(20) not null,
	Address varchar(50) not null,
	City varchar(20),
	State varchar(20),
	Pincode numeric(6),
	Sal_amt numeric(8,2) not null,
constraint chk_salesman check (Salesman_no like 's%' and Sal_amt != 0));

create table Orders (
	Order_no varchar(6) primary key unique,
	Order_date date,
	Client_no varchar(25),
	Salesman_no varchar(6),
	Del_type char(1),
	Del_date date,
	Order_status varchar(10),
foreign key (Client_no) references Customer(Cus_no),
foreign key (Salesman_no) references Salesman(Salesman_no),
constraint chk_order check (
	Order_status in ('Inprocess','fulfilled','backorder','Cancelled') and
	Del_date >= Order_date and 
	Del_type in ('p','f') and 
	Order_no like '0%'));

create table Sales_order_details (
S_order_no varchar(6),
Product_no varchar(6),
Qty_order numeric(8),
Qty_disp numeric(8),
Product_rate numeric(10,2),
primary key (S_order_no,Product_no),
foreign key (S_order_no) references Orders(Order_no),
foreign key (Product_no) references Product(Prod_no)
);

insert into Salesman values
	('500001','Kiran','A/14 worli','Bombay','Mah',400002,3000),
	('500002','Manish','65,nariman','Bombay','Mah',400001,3000),
	('500003','Ravi','P-7 Bandra','Chennai','TN',632002,5000),
	('500004','Ashish','A/5 Juhu','Bombay','Mah',400044,7000);

insert into Orders values
	('019001','12-01-1996','0001','50001','f','20-01-1996','Inprocess'),
	('019002','25-01-1996','0002','50002','p','27-01-1996','Cancelled'),
	('016865','18-02-1996','0003','50003','f','20-02-1996','Inprocess'),
	('019003','03-04-1996','0004','50001','f','07-04-1996','Inprocess');

insert into Sales_order_details values
	('019001','P00001',4,4,525),
	('019001','P07965',2,1,840),
	('019001','P07885',2,1,5250),
	('019002','P00001',10,0,525),
	('046865','P07868',3,3,3150),
	('046865','P07885',10,10,5250),
	('019003','P00001',4,4,1050);