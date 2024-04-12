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