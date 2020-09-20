package com.ecommerce.online.ecom.model;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "books")
public class Books {
	
	public Books() {	}

	public Books(int books_id, String book_name, String book_author,double book_price) {
		this.books_id = books_id;
		this.book_name = book_name;
		this.book_author = book_author;
		this.book_price=book_price;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "books_id")
	private int books_id;
	
	@Column(name = "book_name")
	private String book_name;
	
	@Column(name = "book_author")
	private String book_author;
	
	@Column(name = "book_price")
	private double book_price;
	
	public int getBooks_id() {
		return books_id;
	}

	public void setBooks_id(int books_id) {
		this.books_id = books_id;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getBook_author() {
		return book_author;
	}

	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}

	public double getBook_price() {
		return book_price;
	}

	public void setBook_price(double book_price) {
		this.book_price = book_price;
	}	
}
