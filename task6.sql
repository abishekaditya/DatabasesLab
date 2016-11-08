select product.prod_no,cust_prod.cust_no,customer.name from product,cust_prod,customer where
cust_prod.cust_no=customer.cus_no and product.prod_no=cust_prod.prod_no;

select product.prod_no,sales_order_details.qty_order from product, sales_order_details
where
product.prod_no=sales_order_details.product_no;

select sales_order_details.product_no,product.descr from product, sales_order_details
where
product.prod_no=sales_order_details.product_no;

select customer.name,product.descr from customer
join cust_prod on customer.cus_no=cust_prod.cust_no join product on cust_prod.prod_no=product.prod_no
where product.descr='CD DRIVE';

select c.cus_no,so.product_no,so.s_order_no,so.qty_order  
from orders ot join sales_order_details so on ot.order_no=so.s_order_no
join customer c on c.cus_no=ot.client_no join product p on 
p.prod_no=so.product_no where so.qty_order<5 and p.descr='1.44 floppy';

select sm.salesman_no, sm.salesman_name, o.order_no,
so.product_no, so.qty_order  from orders o join
sales_order_details so on so.s_order_no=o.order_no
join salesman sm on sm.salesman_no=o.salesman_no
where sm.salesman_name='manish';

select salesman.salesman_no, salesman.salesman_name, orders.order_no,
sales_order_details.product_no, sales_order_details.qty_order
from orders
join sales_order_details on
sales_order_details.s_order_no=orders.order_no
join salesman on salesman.salesman_no=orders.salesman_no;

select order_no, client_no, salesman_no
from orders
where client_no in
(select client_no from
(select client_no, count(salesman_no)
from orders
group by client_no
having count(salesman_no)>1)as derived);

select sales_order_details.s_order_no, product.descr
from sales_order_details
join product on
product.prod_no=sales_order_details.product_no
where sales_order_details.s_order_no = '019001';


select cust_prod.cust_no, customer.name, cust_prod.prod_no, product.descr
from customer
join cust_prod on
customer.cus_no=cust_prod.cust_no
join product on
product.prod_no=cust_prod.prod_no;

