create database ecomm;
use ecomm;
create table users(user_id int primary key, user_name varchar(30) not null,email varchar(30));
insert into users values 
(1,'ellie','e1'),
(2,'john','e2'),
(3,'sam','e3'),
(4,'oji','e4'),
(5,'abhi','e5');
select *from users;
create table orders(order_id int primary key,user_id int ,order_date date,
foreign key(user_id)
references users(user_id));
insert into orders values
(1001,1,'2025-08-15'),
(1002,2,'2025-09-01'),
(1003,3,'2025-01-05'),
(1004,1,'2026-07-08');

insert into orders values(1006,6,'2026-07-06');

create table order_items(order_item_id int primary key,order_id int,product_id int,quantity int,
foreign key(order_id)
references orders(order_id),
foreign key(product_id)
references products(product_id)
);

insert into order_items values
(1,1001,1,1),
(2,1001,3,2),
(3,1002,2,1),
(4,1003,1,1),
(5,1004,2,2);
select *from order_items;

create table products(product_id int primary key, name varchar(30),price int );
insert into products values
(1,'laptop',1000),
(2,'phone',500),
(3,'headphones',100);
select *from products;


