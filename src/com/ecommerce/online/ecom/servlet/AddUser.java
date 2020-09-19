package com.ecommerce.online.ecom.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ecommerce.online.ecom.model.Address;
import com.ecommerce.online.ecom.model.User;
import com.ecommerce.online.ecom.util.hibernateUtil2;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/add-user")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		User user=new User();
		user.setName("Nihal");
		user.setEmail("a@gmail.com");
		
		Address add=new Address();
		add.setCity("Jbp");
		add.setStreet("vijay Nagar");
		
		add.setUser(user);
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
	
		//open a connection
		try {
			SessionFactory factory=hibernateUtil2.buildSessionFactory();
			Session session=factory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(user);
			session.save(add);
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
