<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Learnify - Verify OTP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        .login-alert {
            margin: 15px 0 20px;
            padding: 12px 15px;
            background: rgba(255, 77, 77, 0.15);
            border-left: 4px solid #ff4d4d;
            border-radius: 6px;
            color: #fff;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 8px;
            animation: fadeSlide 0.4s ease-in-out;
        }
        .login-alert i { color: #ff4d4d; font-size: 16px; }
        @keyframes fadeSlide {
            from { opacity: 0; transform: translateY(-5px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .login-success { background: rgba(40, 167, 69, 0.18); border-left: 4px solid #28a745; color: #eafff0; }
        .login-success i { color: #28a745; }
    </style>
</head>
<body>
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>

    <main class="login-body" data-vide-bg="assets/img/login-bg.mp4">
        <form class="form-default" action="verifyotp" method="POST">
            <div class="login-form">
                <div class="logo-login">
                    <a href="index"><img src="assets/img/logo/loder.png" alt=""></a>
                </div>
                <h2>Verify OTP</h2>
                <p style="color:#ccc; font-size:14px; margin-bottom:20px;">Enter the OTP sent to your email address.</p>

                <%
                String msg = (String) request.getAttribute("msg");
                String msgType = (String) request.getAttribute("msgType");
                if (msg != null) {
                    String cssClass = "login-alert";
                    String icon = "fas fa-exclamation-circle";
                    if ("success".equals(msgType)) {
                        cssClass += " login-success";
                        icon = "fas fa-check-circle";
                    }
                %>
                <div class="<%= cssClass %>">
                    <i class="<%= icon %>"></i>
                    <span><%= msg %></span>
                </div>
                <% } %>

                <!-- email hidden field taaki reset pe bhi mile -->
                <input type="hidden" name="email" value="${email}">

                <div class="form-input">
                    <label>Enter OTP</label>
                    <input type="number" name="otp" placeholder="Enter OTP" required>
                </div>
                <div class="form-input pt-30">
                    <input type="submit" value="Verify OTP">
                </div>
                <a href="forgotpassword" class="forget">Resend OTP</a>
            </div>
        </form>
    </main>

    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <script src="./assets/js/jquery.vide.js"></script>
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
</body>
</html>
