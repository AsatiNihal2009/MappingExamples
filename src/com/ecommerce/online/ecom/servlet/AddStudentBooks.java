package com.ecommerce.online.ecom.servlet;

import java.io.IOException;


import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ecommerce.online.ecom.model.Books;
import com.ecommerce.online.ecom.model.Student;
import com.ecommerce.online.ecom.util.hibernateUtil2;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/add-student-books")
public class AddStudentBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudentBooks() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Student student= new Student();
		
		Books books=new Books();
		books.setBook_name("Harry Potter");
		books.setBook_author("ABC");
		books.setBook_price(1000);
		
		Set<Books> bookSet = new HashSet<Books>();
		bookSet.add(books);
		
		student.setStudent_name("nihal");
		student.setBooks(bookSet);
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
	
		//open a connection
		try {
			SessionFactory factory=hibernateUtil2.buildSessionFactory();
			Session session=factory.openSession();
			Transaction trans=session.beginTransaction();
		
			session.save(student);
			
			trans.commit();
			
			out.print("<h1> Transaction successfull</h1>");
			
			session.close();
			
			out.close();
		}catch (Exception e) {
		e.printStackTrace();
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
