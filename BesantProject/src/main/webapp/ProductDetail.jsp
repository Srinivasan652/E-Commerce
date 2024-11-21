
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Detail</title>

</head>
<style>



    body {
        font-family: 'Arial', sans-serif;
        background-color: #3C3D37;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #34495e;
    }

    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: white;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    table, th, td {
        border: 2px solid #ddd;
    }

    th, td {
        padding: 12px;
        text-align: center;
    }

    th {
        background-color: #34495e;
        color: white;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f1f1;
        cursor: pointer;
    }

    /* Add some responsive design */
    @media screen and (max-width: 768px) {
        table {
            width: 100%;
        }

        th, td {
            padding: 8px;
        }
    }
</style>


<body>

<h1>Product Details</h1>

	<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/BesantProject","root","060502@");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from AddProduct");
    
    %>

	<table>
		<tr>
			<th>Product ID</th>

			<th>Product Name</th>
			<th>Product Price</th>
			<th>Product Stock</th>

		</tr>

		<% while (rs.next()) { %>
		<tr>
			<td><%= rs.getString(1) %></td>
			<td><%= rs.getString(2) %></td>
			<td>₹<%= rs.getString(3) %></td>
			<td><%= rs.getString(4) %></td>
			
		</tr>
<% } %>

</table>


	<% }
catch(Exception e)
{
	out.println(e);
}


%>
</body>
</html>
