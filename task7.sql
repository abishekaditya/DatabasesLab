select sales_order_details.product_no,product.descr from sales_order_details join product on sales_order_details.product_no=product.prod_no where sales_order_details.qty_disp=0;

select customer.name,customer.address1,customer.city,customer.pincode from customer join orders on customer.cus_no=orders.client_no where orders.order_no='***';

select customer.name,orders.order_date from customer join orders on customer.cus_no=orders.client_no where orders.order_date<'01-May-16';

SELECT p.descr, o.order_no, c.cus_no, c.name from 
customer c JOIN  orders o on c.cus_no=o.client_no JOIN    
sales_order_details s ON o.order_no = s.s_order_no JOIN
product p ON s.product_no = p.prod_no where descr= 'xxx';

select customer.name from customer join orders on customer.cus_no=orders.client_no join sales_order_details on orders.order_no=sales_order_details.s_order_no join product on sales_order_details.product_no=product.prod_no where unit_price>=1000;

select distinct customer.name,product.descr,sales_order_details.qty_order from customer
join orders on customer.cus_no=orders.client_no
join sales_order_details on orders.order_no=sales_order_details.s_order_no
join product on sales_order_details.product_no=product.prod_no where name = 'Rahul';

select distinct customer.name,customer.cus_no,salesman.salesman_no,salesman.salesman_name
from customer,orders,salesman where salesman.city= 'Bombay';

select distinct customer.name,customer.cus_no,salesman.salesman_no,salesman.salesman_name
from customer,orders,salesman where salesman.city='Bombay' AND customer.city = 'Chennai';

select sales_order_details.product_no,product.descr,product.unit_price,product.qty_on_hand
from product
join sales_order_details on product.prod_no=sales_order_details.product_no
where sales_order_details.qty_disp=0;

select * from salesman where NOT Exists(select * from orders where salesman.salesman_no=orders.salesman_no);

