

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Servlet implementation class ProductUpdate
 */
public class ProductUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String a= request.getParameter("productid");
		String b=request.getParameter("price");
		String c= request.getParameter("stock");
		
		
		PrintWriter pw = response.getWriter();
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/BesantProject","root","060502@");
			Statement st= con.createStatement();
			st.executeUpdate("update AddProduct set PPrice='"+b+"',PStock='"+c+"' where Pid ='"+a+"'");
			response.sendRedirect("AdminHome.jsp");
			
		}
		
		catch (Exception e) {
		pw.println(e);
			
		
			
		}
	}

}
