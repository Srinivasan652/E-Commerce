<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Receipt</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            color: #333;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .alert {
            color: green;
            margin: 20px 0;
            padding: 15px;
            border: 1px solid green;
            border-radius: 5px;
            background-color: #e8f5e9;
            font-weight: bold;
        }

        h1, h3 {
            color: #2c3e50;
        }

        .button {
            display: inline-block;
            margin: 20px auto;
            padding: 12px 24px;
            font-size: 18px;
            font-weight: bold;
            color: white;
            background-color: #ff416c;
            border: none;
            border-radius: 25px;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .button:hover {
            background-color: #ff6347;
            transform: scale(1.05);
        }

        .order-details {
            margin: 20px 0;
            text-align: left;
        }
        
        p{
        text-align:center;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Payment Successful!!!</h1>
        <h3>Your Order is Placed</h3>
        
      

        <div class="order-details">
            <p><strong></strong> <%= request.getAttribute("orderedUsername") != null ? request.getAttribute("orderedUsername") : "N/A" %></p>
              </div>
        

        <a href="Shop.jsp" class="button">Continue Shopping</a>
                        <h1>Thank You!!!</h1>
        
    </div>
    

</body>
</html>
