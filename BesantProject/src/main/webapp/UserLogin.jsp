<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="Background.css">
</head>

<body>

	<form action="UsersLogin" method="post">
		<div>
			<div class="login-wrap">
				<h2>User Login</h2>

				<div class="form">
					<input type="text" placeholder="Username" name="name" /> <input
						type="password" placeholder="Password" name="password" />
					<button>Sign in</button>
					<a href="UserRegister.jsp">
						<p>Don't have an account? Register</p>
					</a>
					<a href="AdminLogin.jsp">
						<p>If Admin? Login</p>
					</a>
				</div>
			</div>
	</form>

</body>
</html>