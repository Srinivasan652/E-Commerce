<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"
	rel="stylesheet">
<style>

*{
text-decoration: none;
}
body, html {
	margin: 0;
	padding: 0;
	font-family: 'Poppins', sans-serif;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(to right, rgba(70, 130, 180, 0.9),
		rgba(34, 49, 63, 0.9)), url('ai Commerce.jpg');
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
}

/* Overlay for a more polished look */
.overlay {
	background: rgba(0, 0, 0, 0.5);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 1;
}

.welcome-container {
	position: relative;
	z-index: 2;
	background: rgba(255, 255, 255, 0.1);
	padding: 40px;
	text-align: center;
	border-radius: 15px;
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.37);
	color: #fff;
	width: 80%;
	max-width: 800px;
	animation: fadeInUp 1s ease-in-out;
}

h1 {
	font-size: 3.5em;
	font-weight: 700;
	margin-bottom: 20px;
	background: linear-gradient(to right, #ff416c, #ff4b2b);
	-webkit-background-clip: text;
	color: transparent;
	animation: fadeInDown 1.2s ease-in-out;
}

p {
	font-size: 1.3em;
	margin-bottom: 30px;
	color: rgba(255, 255, 255, 0.85);
}

.cta-button {
	padding: 15px 40px;
	background-color: #ff416c;
	color: #fff;
	border: none;
	border-radius: 30px;
	font-size: 1.3em;
	font-weight: 600;
	cursor: pointer;
	box-shadow: 0 4px 15px rgba(255, 65, 108, 0.5);
	transition: transform 0.3s ease, background-color 0.3s ease, box-shadow
		0.3s ease;
}

.cta-button:hover {
	background-color: #ff4b2b;
	transform: scale(1.05);
	box-shadow: 0 6px 20px rgba(255, 75, 43, 0.7);
}

@
keyframes fadeInDown {from { opacity:0;
	transform: translateY(-20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
keyframes fadeInUp {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.dashboard {
	width: 100%;
	height: 70px;
	background-color: rgba(0, 0, 0, 0.8);
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 20px;
	position: fixed;
	top: 0;
	z-index: 1000;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

.logo {
	font-size: 24px;
	font-weight: bold;
	color: #fff;
}

.dashboard nav ul {
	list-style-type: none;
	display: flex;
}

.dashboard nav ul li {
	margin-left: 20px;
}

.dashboard nav ul li a {
	color: #fff;
	text-decoration: none;
	font-size: 16px;
	padding: 10px;
	transition: background-color 0.3s ease;
}

.dashboard nav ul li a:hover {
	background-color: #ff416c;
	border-radius: 5px;
}

.user-profile {
	display: flex;
	align-items: center;
	color: #fff;
}

.user-profile img {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	margin-right: 10px;
}

.main-content {
	padding-top: 100px;
	padding: 20px;
	text-align: center;
}

@media screen and (max-width: 768px) {
	h1 {
		font-size: 2.5em;
	}
	p {
		font-size: 1.2em;
	}
	.cta-button {
		padding: 12px 30px;
		font-size: 1.1em;
	}
}

@media screen and (max-width: 480px) {
	h1 {
		font-size: 2em;
	}
	p {
		font-size: 1em;
	}
	.cta-button {
		padding: 10px 20px;
		font-size: 1em;
	}
}
</style>
</head>
<body>


	<div class="dashboard">
		<div class="logo">ECart</div>
		<nav>
			<ul>
				<li><a href="#home">Home</a></li>
				<li><a href="#services">Services</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#contact">Contact</a></li>
				<li><a href="UserLogin.jsp">Log Out</a></li>
			</ul>
		</nav>
		<div class="user-profile">
			<span>
				<%
				String a = session.getAttribute("UserName").toString();
				out.println("Welcome " + a + " !!! ");
				%>
			</span>
		</div>
	</div>


	<div class="main-content">
		<div class="welcome-container">
			<h1>Welcome to ECart!</h1>
			<p>Discover exclusive deals on the latest products! Shop now for
				unbeatable prices and fast, reliable delivery.</p>
			<p>Your journey starts here. Explore and discover more.</p>
			<button class="cta-button">
				<a href="Shop.jsp">Shop</a>
			</button>
		</div>
	</div>


</body>
</html>
