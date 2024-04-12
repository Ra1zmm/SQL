CREATE TABLE Customer (
    customer_id VARCHAR(20) CONSTRAINT pk_customer PRIMARY KEY,
	customer_name VARCHAR2(20) NOT NULL,
	customer_tel NUMBER 
)

CREATE TABLE Product (
    product_id VARCHAR(20) CONSTRAINT pk_product PRIMARY KEY,
	product_name VARCHAR2(20) NOT NULL,
	price NUMBER CHECK (price > 0)
)

CREATE TABLE Orders (
    product_id VARCHAR(20) ,
	customer_id VARCHAR2(20) ,
	quantity NUMBER ,
    total_amount NUMBER ,
    CONSTRAINT fk_product_product_id FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT fk_product_customer_id FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
)

Alter TABLE Product ADD  Category VARCHAR2(20); 

Alter TABLE Orders ADD  OrderDate DATE SYSDATE;


\\Product
INSERT INTO Product (Product_id, Product_name, Category, Price)
VALUES ('P01', 'Samsung Galaxy S20', 'Smartphone', 3299);
INSERT INTO Product (Product_id, Product_name, Price)
VALUES ('P02', 'ASUS Notebook', 'PC', 4599);


\\Customer
INSERT INTO customer (customer_id, customer_name, customer_tel)
VALUES ('C01', 'ALI', 71321009);
INSERT INTO customer (customer_id, customer_name, Price)
VALUES ('C02', 'ASMA', 77345823);



\\Orders
INSERT INTO customer (customer_id, product_id, OrderDate, quantity, total_amount)
VALUES ('C01', 'P02', NULL, 2, 9198);
INSERT INTO customer (customer_id, product_id, OrderDate, quantity, total_amount)
VALUES ('C02', 'P01', 28/05/2020, 1, 3299);