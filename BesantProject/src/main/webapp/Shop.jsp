<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    body {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #2c3e50;
    }

    .shop-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        padding: 30px;
    }

    .product-card {
        background-color: #fff;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        width: 300px;
        margin: 20px;
        text-align: center;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .product-card:hover {
        transform: translateY(-8px);
        box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
    }

    .product-card h3 {
        margin: 20px 0 10px;
        color: #2c3e50;
        font-weight: 700;
        font-size: 1.4em;
    }

    .product-card h5 {
        color: #e74c3c;
        margin-bottom: 15px;
        font-weight: 600;
        font-size: 1.2em;
    }

    .product-card button {
        background-color: #ff416c;
        color: #fff;
        padding: 12px 25px;
        border: none;
        border-radius: 30px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin-bottom: 20px;
        font-size: 1.1em;
        font-weight: bold;
    }

    .product-card button:hover {
        background-color: #ff6347;
    }

    .product-card img {
        width: 100%;
        border-top-left-radius: 15px;
        border-top-right-radius: 15px;
        height: 220px;
        object-fit: cover;
    }

    /* Responsive adjustments */
    @media (max-width: 768px) {
        .shop-container {
            padding: 0px;
        }

        .product-card {
            width: 100%;
            max-width: 320px;
        }
    }
</style>
</head>
<body>




<div class="shop-container">
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BesantProject", "root", "060502@");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from AddProduct");
    while (rs.next()) {
%>
    <div class="product-card">
    
    
        <img alt="" src="ai Commerce.jpg">
        <h3><%= rs.getString(2) %></h3>
        <h5>Price: ₹<%= rs.getString(3) %></h5>
       <a href="ProductParticular.jsp?name=<%= rs.getString(2) %> "><button>Buy</button></a>
       
       <a href="ProductParticular.jsp?name=<%= rs.getString(2) %> "><button>Add to Cart</button></a>
    </div>
<%
    }
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%>


</div>

</body>
</html>
