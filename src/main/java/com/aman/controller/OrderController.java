package com.aman.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;

import org.json.JSONObject;

@Controller
@RequestMapping("/order")
public class OrderController {

    private static final String RAZORPAY_KEY_ID = "rzp_test_8CxHBNuMQt1Qn8";
    private static final String RAZORPAY_SECRET = "sXfbCn3B67Zq7KkVsnDeCXCl";

    @PostMapping("/create")
    @ResponseBody
    public ResponseEntity<String> createOrder(@RequestParam("amount") String amountParam) {
        try {
            if (amountParam == null || amountParam.trim().isEmpty()) {
                return ResponseEntity.badRequest().body("Missing 'amount' parameter");
            }

            int amount = Integer.parseInt(amountParam) * 100;

            RazorpayClient razorpay = new RazorpayClient(RAZORPAY_KEY_ID, RAZORPAY_SECRET);

            JSONObject orderRequest = new JSONObject();
            orderRequest.put("amount", amount);
            orderRequest.put("currency", "INR");
            orderRequest.put("receipt", "order_rcptid_" + System.currentTimeMillis());
            orderRequest.put("payment_capture", 1);

            Order order = razorpay.orders.create(orderRequest);

            return ResponseEntity.ok(order.toString());

        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }
}
