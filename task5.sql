select product_no, sum(qty_disp) from sales_order_details group by product_no;
select product_no from sales_order_details group by product_no having sum(qty_disp) > 2;
select orders.salesman_no, max(sum(sales_order_details.qty_disp)) from orders, sales_order_details where orders.order_no = sales_order_details.s_order_no group by orders.salesman_no;
select cust_no, min(total_price), max(total_price), avg(total_price), sum(total_price) from cust_prod group by cust_no;
