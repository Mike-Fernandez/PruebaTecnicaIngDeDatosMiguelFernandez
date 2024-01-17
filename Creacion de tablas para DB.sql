CREATE DATABASE PruebaTecnica1
USE PruebaTecnica1
GO

CREATE TABLE orders(
	order_id varchar(50),
	customer_id varchar(50),
	order_status varchar(50),
	delivered_date datetime,
	estimated_delivery_date datetime,
	CONSTRAINT PK_order_id PRIMARY KEY(order_id)
);
GO

CREATE TABLE product(
	product_id varchar(50),
	category varchar(50),
	photos_qty int,
	product_weight float,
	product_length float,
	product_height float,
	product_width float,
	CONSTRAINT PK_product_id PRIMARY KEY(product_id)
	);
GO

CREATE TABLE order_item(
	order_id varchar(50),
	product_id varchar(50),
	order_item_id int,
	price float,
	freight_value float
	CONSTRAINT PK_order_item PRIMARY KEY(order_id,product_id,order_item_id),
	CONSTRAINT FK_item_order_id FOREIGN KEY(order_id) REFERENCES orders(order_id),
	CONSTRAINT FK_item_product_id FOREIGN KEY(product_id) REFERENCES product(product_id)
);
GO

