

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

/**
 * Servlet implementation class ProductAdd
 */
public class ProductAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	 PrintWriter pw = response.getWriter();
	 String a =	  request.getParameter("productname");
	 String b =	  request.getParameter("productprice"); 
	 String c =   request.getParameter("productstock");
		  
		  try { Class.forName("com.mysql.jdbc.Driver"); 
		  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/BesantProject",
		  "root","060502@");
		  Statement st =con.createStatement();
		  st.executeUpdate("insert into AddProduct(PName,PPrice,PStock)values('"+a+"','"+b+"','"+c+"')");
		  response.sendRedirect("AdminHome.jsp");
		  
		  } catch(Exception e) 
		  {
			  pw.println(e);
			  
		  }
		 
		


	}

}
