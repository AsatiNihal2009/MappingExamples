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

import com.ecommerce.online.ecom.model.Cart;
import com.ecommerce.online.ecom.model.Product;
import com.ecommerce.online.ecom.util.hibernateUtil2;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/add-product")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Cart cart= new Cart();
		
		Product product=new Product();
		product.setProduct_desc("DELL");
		product.setProduct_price(1000);
		product.setCart(cart);

		Set<Product> productSet = new HashSet<Product>();
		productSet.add(product);
		cart.setCart_total(product.getProduct_price());
		cart.setProduct(productSet);
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
	
		//open a connection
		try {
			SessionFactory factory=hibernateUtil2.buildSessionFactory();
			Session session=factory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(cart);
			session.save(product);
			
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
