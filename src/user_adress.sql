use onlineEcommerce;
create table user(  
	user_id int(11) NOT NULL AUTO_INCREMENT,  
	name varchar(40) NOT NULL,  
	email varchar(40) NOT NULL,  
	PRIMARY KEY(user_id) 
);
create table address(  
	add_id int(11) NOT NULL AUTO_INCREMENT,  
	street varchar(40) NOT NULL,  
	city varchar(40) NOT NULL,     
	user_id int(11) NOT NULL,  
	PRIMARY KEY(add_id),  
	KEY user_fk (user_id),  
	CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES user(user_id) 
);

