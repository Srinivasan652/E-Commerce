<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Admin Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    * {
        text-decoration: none;
        list-style: none;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Poppins', sans-serif;
        background-color: yellow;
        background-image: url('ai Commerce.jpg');
        background-size: cover; /* Makes the image cover the entire background */
        background-position: center; /* Centers the background image */
        background-repeat: no-repeat; /* Ensures the image doesn't repeat */
        height: 100vh; /* Ensures the background image fills the viewport height */
        margin: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    /* Container for navigation links */
    .nav-container {
        background-color: rgba(52, 73, 94, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        display: flex;
        gap: 40px;
        flex-wrap: wrap;
        justify-content: center;
        max-width: 80%;
    }

    .nav-container div {
        background-color: #34495e;
        padding: 15px 30px;
        border-radius: 30px;
        text-align: center;
        transition: 0.3s ease;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    .nav-container div a {
        color: white;
        text-transform: uppercase;
        font-size: 18px;
        text-decoration: none;
    }

    .nav-container div:hover {
        background-color: #1abc9c;
        transform: scale(1.1);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
    }

    .Logout div {
        background-color: transparent;
        border: 2px solid #e74c3c;
        color: #e74c3c;
        padding: 10px 30px;
        transition: 0.5s ease;
        border-radius: 30px;
    }

    .Logout div:hover {
        background-color: #e74c3c;
        color: white;
        transform: scale(1.2);
    }

    .Logout div a {
        font-weight: bold;
        font-size: 18px;
    }

    /* Responsive design */
    @media screen and (max-width: 768px) {
        .nav-container {
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        .nav-container div {
            width: 100%;
            text-align: center;
        }
    }
</style>
</head>
<body>

    <!-- Navigation div container -->
    <div class="nav-container">
        <div><a href="ProductAdd.jsp">Product Add</a></div>
        <div><a href="ProductDelete.jsp">Product Delete</a></div>
        <div><a href="ProductUpdate.jsp">Product Update</a></div>
        <div><a href="ProductDetail.jsp">Product Details</a></div>
        <div><a href="OrderDetail.jsp">Order Detail</a></div>
        <div><a href="UserDetail.jsp">User Detail</a></div>
        <div class="Logout"><a href="AdminLogin.jsp" style="color:red;">Logout</a></div>
    </div>

</body>
</html>
