

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class UsersLogin
 */
public class UsersLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter pw = response.getWriter();

		String a = request.getParameter("name");
		String b = request.getParameter("password");

		if (a != null && b != null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BesantProject", "root", "060502@");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from UserRegister where UserName='" + a + "' and  Password='" + b + "'");
				if (rs.next())
				{
					HttpSession session=request.getSession();
					session.setAttribute("UserName", a);
							response.sendRedirect("UserHome.jsp");
				}
				 else
				{
					response.sendRedirect("UserLogin.jsp");
					pw.println("alert('invalid username or password');");
					
				}
				
			}
			

				

			 catch (Exception e) 
			{
				pw.println(e);
			}
			
	}
 
		
	}

}
