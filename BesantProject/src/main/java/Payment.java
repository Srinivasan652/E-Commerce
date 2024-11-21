import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/Payment") // Add this annotation to define the servlet URL mapping
public class Payment extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String a = request.getParameter("username");
        String b = request.getParameter("cardnumber");
        String c = request.getParameter("expiry");
        String d = request.getParameter("cvv");

        PrintWriter pw = response.getWriter();;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BesantProject", "root", "060502@");
            Statement st = con.createStatement();

           
            st.executeUpdate("INSERT INTO OrderProduct (UserName, CardNumber, ExpiryDate, Cvv) VALUES ('" + a + "', '" + b + "', '" + c + "', '" + d + "')");

            
            request.getSession().setAttribute("orderMessage", "Your order is placed");

           
            ResultSet rs = st.executeQuery("SELECT * FROM OrderProduct WHERE UserName='" + a + "' "); 
            if (rs.next()) {
                request.setAttribute("orderedUsername", rs.getString("UserName"));
              
            }

          
            RequestDispatcher dispatcher = request.getRequestDispatcher("PaymentReceipt.jsp");
            dispatcher.forward(request, response);
            
        } catch (Exception e) {
            pw.println(e);
        }
    }
}
