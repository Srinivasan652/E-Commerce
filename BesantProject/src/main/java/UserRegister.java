

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

/**
 * Servlet implementation class UserRegister
 */
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter pw = response.getWriter();
		String a=request.getParameter("name");
		String b=request.getParameter("password");
		String c=request.getParameter("emailid");
		String d=request.getParameter("address");
		String e=request.getParameter("phoneno");
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/BesantProject","root","060502@");
			Statement st=con.createStatement();
			st.executeUpdate("insert into UserRegister values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
			response.sendRedirect("UserLogin.jsp");
			
		}
		
		catch(Exception q)
		{
			pw.println(q);
		}
	}

}
