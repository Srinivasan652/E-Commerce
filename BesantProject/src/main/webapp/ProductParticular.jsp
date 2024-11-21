<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
<style>
body {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #2c3e50;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.product-container {
	display: flex;
	flex-direction: column;
	align-items: center;
	background-color: #fff;
	border-radius: 15px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
	max-width: 600px;
	width: 100%;
	padding: 20px;
}

.product-card {
	width: 100%;
	text-align: center;
}

.product-card img {
	width: 100%;
	border-radius: 15px;
	object-fit: cover;
	margin-bottom: 20px;
}

.product-card h3 {
	margin: 10px 0;
	color: #2c3e50;
	font-weight: 700;
	font-size: 1.8em;
}

.product-card h5 {
	color: #e74c3c;
	margin-bottom: 10px;
	font-weight: 600;
	font-size: 1.5em;
}

.product-details {
	margin-bottom: 15px;
	font-size: 1em;
	color: #7f8c8d;
}

.quantity-container {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 20px;
}

.quantity-container label {
	margin-right: 10px;
	font-weight: 600;
}

.quantity-container input {
	width: 50px;
	padding: 5px;
	font-size: 1em;
	text-align: center;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.button-container {
	display: flex;
	gap: 10px;
    margin-left:40%;
}

.product-button {
	background-color: #ff416c;
	color: #fff;
	padding: 12px 25px;
	border: none;
	border-radius: 30px;
	cursor: pointer;
	transition: background-color 0.3s ease;
	font-size: 1.1em;
	font-weight: bold;
	flex-grow: 1;
	text-align: center;
}

.product-button:hover {
	background-color: #ff6347;
}

.buy-now {
	background-color: #27ae60;
}

.buy-now:hover {
	background-color: #2ecc71;
}

/* Responsive adjustments */
@media ( max-width : 768px) {
	.product-container {
		padding: 15px;
	}
	.product-card {
		width: 100%;
	}
	.product-card h3 {
		font-size: 1.5em;
	}
	.product-card h5 {
		font-size: 1.2em;
	}
}
</style>
</head>

<body>

	<%
	String productName = request.getParameter("name");
	Date d=new Date();

	String a1=session.getAttribute("username").toString();

	if (productName != null) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BesantProject", "root", "060502@");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM AddProduct WHERE PName = '" + productName + "'");

			if (rs.next()) {
	%>
	<div class="product-container">
		<div class="product-card">
			<img alt="<%=rs.getString(2)%>" src="ai Commerce.jpg">
			<h3><%=rs.getString(2)%></h3>
			<h5>Price: ₹<%=rs.getString(3)%></h5>
			
			<form action="#" method="post">
			
			c
			
			
			
			
			
			
			</form>
				


			<div class="button-container">

				<a href="Payment.jsp"><button class="product-button buy-now">Buy Now</button></a>
			</div>
		</div>
	</div>
	<%
	}
	} catch (Exception e) {
	out.println(e);
	}
	}
	%>

</body>
</html>
