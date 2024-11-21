<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Register Form</title>

<link rel="stylesheet" type="text/css" href="Background.css">
</head>

        <body>
        
         <form action="UserRegister" method="post">
           <div class="login-wrap">
  <h2>Register</h2>
  
  <div class="form">
    <input type="text" placeholder="Username" name="name" />
    <input type="password" placeholder="Password" name="password" />
    <input type="text" placeholder="Conform Password" >
    <input type="text" placeholder="Email Id" name="emailid" />
    <input type="text" placeholder="Address" name="address"/>
    <input type="text" placeholder="Phone Number" name="phoneno" />
    
    <button> Sign in </button>
    <a href="UserLogin.jsp"> <p>Already have an account? Login </p></a>
  </div>
</div>          </form>
                   
                     
        </body>
</html>