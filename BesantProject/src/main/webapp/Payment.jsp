<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #2c3e50;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .payment-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
            font-size: 24px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            color: #34495e;
            font-weight: 600;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="number"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .row {
            display: flex;
            justify-content: space-between;
        }

        .row .form-group {
            width: 48%;
        }

        .btn {
            background-color: #27ae60;
            color: white;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #2ecc71;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .row {
                flex-direction: column;
            }

            .row .form-group {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <div class="payment-container">
        <h2>Payment Details</h2>
        <form action="Payment" method="post">
            <div class="form-group">
                <label for="name">Name on Card</label>
                <input type="text" id="name" name="username" placeholder="Name Of User" required>
            </div>

            <div class="form-group">
                <label for="card-number">Card Number</label>
                <input type="text" id="card-number" name="cardnumber" placeholder="1234 5678 9012 3456" required>
            </div>

            <div class="row">
                <div class="form-group">
                    <label for="expiry">Expiry Date</label>
                    <input type="text" id="expiry" name="expiry" placeholder="MM/YY" required>
                </div>

                <div class="form-group">
                    <label for="cvv">CVV</label>
                    <input type="password" id="cvv" name="cvv" placeholder="123" maxlength="3" required>
                </div>
            </div>

            <button type="submit" class="btn">Pay Now</button>
        </form>
    </div>

</body>
</html>
