<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Detail</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: white;
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
        border: 1px solid #ddd;
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

    
    @media screen and (max-width: 768px) {
        table {
            width: 100%;
        }

        th, td {
            padding: 8px;
        }
    }
</style>
</head>
<body>

<h1>User Details</h1>

<%
try {
    Class.forName("com.mysql.jdbc.Driver");//database
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BesantProject", "root", "060502@");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from UserRegister");
%>

<table>
    <tr>
        <th>First Name</th>
        <th>Password</th>
        <th>Email</th>
        <th>Address</th>
        <th>Phone Number</th>
    </tr>

<% while (rs.next()) { %>
    <tr>
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
    </tr>
<% } %>

</table>

<%
} catch (Exception e) {
    out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
}
%>

</body>
</html>
