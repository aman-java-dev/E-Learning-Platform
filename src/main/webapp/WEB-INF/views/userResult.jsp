<!doctype html>
<%@page import="com.aman.pojo.Result"%>
<%@page import="com.aman.pojo.Quiz"%>
<%@page import="com.aman.pojo.Questions"%>
<%@page import="java.util.List"%>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Result | Education</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">

<style>
/* ===== Result Page Custom UI (Scoped) ===== */
.result-wrapper {
    padding: 60px 0;
}

.result-card {
    background: #ffffff;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.08);
    padding: 40px;
    max-width: 700px;
    margin: auto;
}

.result-title {
    font-size: 28px;
    font-weight: 700;
    color: #6f42c1;
    margin-bottom: 25px;
}

.score-box {
    background: linear-gradient(135deg, #8e6efc, #6f42c1);
    color: #fff;
    border-radius: 10px;
    padding: 25px;
    text-align: center;
    margin-bottom: 30px;
}

.score-box h2 {
    font-size: 42px;
    margin: 0;
    font-weight: 700;
}

.score-box p {
    margin: 0;
    opacity: 0.9;
}

.result-details p {
    font-size: 16px;
    padding: 8px 0;
    border-bottom: 1px dashed #e5e5e5;
    margin: 0;
}

.result-details p:last-child {
    border-bottom: none;
}

.status-pass {
    color: #28a745;
    font-weight: 700;
}

.status-fail {
    color: #dc3545;
    font-weight: 700;
}

.result-actions {
    margin-top: 30px;
    text-align: center;
}

.result-actions a {
    padding: 12px 25px;
    border-radius: 30px;
    font-weight: 600;
}
</style>

</head>

<body>
    <!-- ? Preloader Start -->
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
    <!-- Preloader Start -->
    <%@include file="userheader.jsp" %>
    <!-- Header End -->
    <main>
        <!--? slider Area Start-->
        <section class="slider-area slider-area2">
            <div class="slider-active">
                <!-- Single Slider -->
                <div class="single-slider slider-height2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-8 col-lg-11 col-md-12">
                                <div class="hero__caption hero__caption2">
                                    <h1 data-animation="bounceIn" data-delay="0.2s">Quiz Result</h1>
                                    <!-- breadcrumb Start-->
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="userhome">Home</a></li>
                                            <li class="breadcrumb-item"><a href="#">Services</a></li> 
                                        </ol>
                                    </nav>
                                    <!-- breadcrumb End -->
                                </div>
                            </div>
                        </div>
                    </div>          
                </div>
            </div>
        </section>
        <!-- Courses area start -->
        <div class="courses-area section-padding40 fix">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8">
                        <div class="section-tittle text-center mb-55">
<!--                             <h2>Quiz Result	</h2> -->
                        </div>
                    </div>
                </div>
                 
               </div>
           </div> 
        

<%
Integer score = (Integer)request.getAttribute("score");
Integer total = (Integer)request.getAttribute("total");
String subject = (String)request.getAttribute("Subject");
Double percentage = (Double)request.getAttribute("percentage");
String status = (String)request.getAttribute("status");
if(score != null && total != null && subject != null ){

%>
<div class="result-wrapper">
    <div class="container">
        <div class="result-card">

            <div class="text-center">
                <h2 class="result-title">Quiz Result</h2>
                <p class="text-muted">Here is your performance summary</p>
            </div>

            <div class="score-box">
                <h2><%=score %> / <%=total %></h2>
                <p>Total Score</p>
            </div>

            <div class="result-details">
                <p><b>Subject:</b>   <%=subject%></p>
                <p><b>Total Questions:</b>  <%=total %></p>
                <p><b>Correct Answers:</b>  <%=score %></p>
                <p><b>Percentage:</b>  <%=percentage %></p>
                <p>
                    <b>Status:</b>
                    <span class="<%= status.equals("PASS")
                                    ? "status-pass"
                                    : "status-fail" %>">
                           <%=status %>
                    </span>
                </p>
            </div>

            <div class="result-actions">
<!--                 <a href="userhome" class="btn btn-primary mr-2"> -->
<!--                     <i class="fas fa-home"></i> Dashboard -->
<!--                 </a> -->
                <a href="userhome" class="btn btn-outline-primary">
                    <i class="fas fa-redo"></i> Try Another Quiz
                </a>
            </div>

        </div>
    </div>
</div>

<%

}
List<Result> lst = (List<Result>)session.getAttribute("lst");
    if (lst != null && lst.size() > 0) {
%>

<div class="container mt-5">
    <div class="result-card">

        <h4 class="text-center mb-4" style="color:#6f42c1;">
            Previous Quiz Attempts
        </h4>

        <div class="table-responsive">
            <table class="table table-bordered table-hover text-center">
                <thead class="thead-light">
                    <tr>
                        <th>S.No</th>
                        <th>Score</th>
                        <th>Total</th>
                        <th>Percentage</th>
                        <th>Status</th>
                        <th>Subject</th>
                        <th>Date</th>
                    </tr>
                </thead>

                <tbody>
                <%
                    int i = 1;
                    for (Result r : lst) {

                        double percent =
                                (r.getScore() * 100.0) / r.getTotalQuestions();

                        String statuss =
                                percent >= 40 ? "PASS" : "FAIL";
                %>
                    <tr>
                        <td><%= i++ %></td>
                        <td><%= r.getScore() %></td>
                        <td><%= r.getTotalQuestions() %></td>
                        <td><%= String.format("%.2f", percent) %>%</td>
                        <td>
                            <span class="<%= statuss.equals("PASS")
                                    ? "status-pass"
                                    : "status-fail" %>">
                                <%= statuss %>
                            </span>
                        </td>
                        <td><%=r.getSubject() %></td>
                        <td><%= r.getAttemptDate() %></td>
                    </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>

    </div>
</div>

<%
    }
%>
<br><br>
<br><br><br><br><br><br><br>
    </main>
    
    <%@ include file="footer.jsp" %>
     
      <!-- Scroll Up -->
      <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!-- JS here -->
    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="./assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    <!-- Progress -->
    <script src="./assets/js/jquery.barfiller.js"></script>
    
    <!-- counter , waypoint,Hover Direction -->
    <script src="./assets/js/jquery.counterup.min.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    <script src="./assets/js/jquery.countdown.min.js"></script>
    <script src="./assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
    
</body>
</html>