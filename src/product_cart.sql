use onlineEcommerce;
create table `e_cart`(
	cart_id int(11) NOT NULL AUTO_INCREMENT,
	cart_total decimal(10,2) NOT NULL,
	PRIMARY KEY(cart_id),
	add_id int(11) NOT NULL,
	KEY user_fk (add_id),
	CONSTRAINT user_fk FOREIGN KEY (add_id) REFERENCES address(add_id);
);
create table product(
	add_id int(11) NOT NULL AUTO_INCREMENT,
	street varchar(40) NOT NULL,
	city varchar(40) NOT NULL,
    user_id int(11) NOT NULL,
	PRIMARY KEY(add_id),
	KEY user_fk (user_id),
	CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES user(user_id);
);
