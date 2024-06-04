create database if not exists salea;
use salea;
create table orders (
order_id int primary key,
customer_name character(100) not null,
product_category character(100) not null,
ordered_item character (100) not null,
contact_no int(15) unique);
select*from orders;
alter table orders add order_quantity decimal not null;
rename table orders to sales_orders;
select*from orders;
insert into sales_orders values(1,'anil','beauty','face wash','982008768',4);
insert into sales_orders values(2,'lekshmi','beauty','perfume','906248639',1);
insert into sales_orders values(3,'anakha','frank wright','clothing','906245695',2);
insert into sales_orders values(4,'sooraj','book','noval','906245639',4);
insert into sales_orders values(5,'arun','home appliances','oven','906245391',1);
insert into sales_orders values(6,'aami','home appliances','blender','902456392',1);
insert into sales_orders values(7,'sunil','sports','soccer ball','90624563',1);
insert into sales_orders values(8,'bindu','electronics','laptop','906249639',1);
insert into sales_orders values(9,'surya','home appliances','toaster','906265630',1);
insert into sales_orders values(10,'devu','electronics','tablet','902456391',1);
select*from sales_orders;
select customer_name,ordered_item from sales_orders;
update sales_orders set ordered_item='smart phone' where order_id=10;
drop table sales_orders;