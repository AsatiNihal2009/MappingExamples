use onlineEcommerce;
create table e_cart(  
	cart_id int(11) NOT NULL AUTO_INCREMENT,  
	cart_total decimal(10,2) NOT NULL, 
	PRIMARY KEY(cart_id) 
);

create table e_product(  
	product_id int(11) NOT NULL AUTO_INCREMENT,  
	product_desc varchar(40) NOT NULL,  
	product_price decimal(10,2) NOT NULL,  
	PRIMARY KEY(product_id),  
	cart_id int(11) NOT NULL,  
	KEY cart_fk(cart_id),  
	CONSTRAINT products_fk FOREIGN KEY (cart_id) REFERENCES e_cart(cart_id) 
);

