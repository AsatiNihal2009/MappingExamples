package com.ecommerce.online.ecom.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
@Entity
@Table(name = "student")
public class Student {
	
	public Student() {	}

	public Student(int student_id, String student_name,Set<Books> books) {
		this.student_id = student_id;
		this.student_name = student_name;
		this.books = books;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "student_id")
	private int student_id;
	
	@Column(name = "student_name")
	private String student_name;
	
	@ManyToMany(targetEntity =Books.class,cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "student_book",
	joinColumns = {@JoinColumn(name="student_id")},
	inverseJoinColumns = {@JoinColumn(name="books_id")})
	private Set<Books> books;

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public Set<Books> getBooks() {
		return books;
	}

	public void setBooks(Set<Books> books) {
		this.books = books;
	}
	
	

}
