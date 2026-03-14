<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Successful</title>
</head>
<body>
    <h2>Payment Successful!</h2>
    <p>Your payment ID is: <%= request.getParameter("payment_id") %></p>
    <a href="checkout.html">Back to Shop</a>
</body>
</html>
