<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Razorpay Payment | Student E-Commerce</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <h2>Pay with Razorpay</h2>

    <form id="paymentForm" action="abc" method="post">
        <label>Enter Amount (INR): </label>
        <input type="number" name="amount" id="amount" required>
        <button type="submit">Pay Now</button>
    </form>

    <script>
        document.getElementById("paymentForm").addEventListener("submit", function (e) {
            e.preventDefault();
            const amount = document.getElementById("amount").value;

            fetch("${pageContext.request.contextPath}/order/create", {
                method: "POST",
                headers: { "Content-Type": "application/x-www-form-urlencoded" },
                body: "amount=" + amount
            })
            .then(res => {
                if (!res.ok) throw new Error("Server error: " + res.status);
                return res.json();
            })
            .then(order => {
                const options = {
                		
                    key: "rzp_test_8CxHBNuMQt1Qn8",
                    amount: order.amount,
                    currency: "INR",
                    name: "Student E-Commerce",
                    order_id: order.id,
                    handler: function (response) {
                        alert("Payment successful! Payment ID: " + response.razorpay_payment_id);
                        window.location="abc";
                    }
                };

                const rzp1 = new Razorpay(options);
                rzp1.open();
            })
            .catch(err => alert("Error creating order: " + err));
        });
    </script>
</body>
</html>
