package com.ecommerce.online.ecom.model;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "e_product")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "product_id")
	private int product_id;
	
	@Column(name = "product_desc")
	private String product_desc;
	
	@Column(name = "product_price")
	private double product_price;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "cart_id",nullable = false)
	private Cart cart;

	public Product(int product_id, String product_desc, double product_price, Cart cart) {
		super();
		this.product_id = product_id;
		this.product_desc = product_desc;
		this.product_price = product_price;
		this.cart = cart;
	}

	public Product() {}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_desc() {
		return product_desc;
	}

	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}

	public double getProduct_price() {
		return product_price;
	}

	public void setProduct_price(double product_price) {
		this.product_price = product_price;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
}
