<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="Background.css">
</head>


<body>

<form action="AdminLogin" method="post">
		
			<div class="login-wrap">
				<h2>AdminLogin</h2>

				<div class="form">
					<input type="text" placeholder="Username" name="name" /> <input
						type="password" placeholder="Password" name="password" />
					<button>Sign in</button>
					<a href="UserLogin.jsp">
						<p>Back To User Login</p>
					</a>
					
				</div>
			</div>
	</form>
	



</body>
</html>