select order_no, del_date-order_date as days from orders;
select order_date + interval '1 month' as one_month_from_order from orders;
select date_part('month', del_date) as delivery_month from orders;
select upper(name) from customer;
select rpad(descr, 25) from product;
select substring(name from 1 for 3) from customer;
select max(length(name)) from customer;
select to_char(del_date, 'DD Month YYYY') from orders;
update customer set name = regex_replace(name, 'e', 'a') where name like '%e%';
select to_char(order_date, 'Day') from orders;
select upper(substring(name from 1 for 1)) from customer;
select substring(name from 2 for 5) from customer;
select current_date;
select sum(sales_order_details.qty_disp * sales_order_details.product_rate) from orders, sales_order_details where orders.order_status = 'fulfilled';
select distinct product.prod_no, count(*) from product, orders, sales_order_details where sales_order_details.s_order_no = orders.order_no and product.prod_no = sales_order_details.product_no and orders.order_status = 'fulfilled';