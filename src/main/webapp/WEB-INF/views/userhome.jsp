<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>User | Education</title>
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
    <style type="text/css">
    .pay-btn {
    background: #ff9f67;
    border: none;
    padding: 4px 14px;
    font-size: 12px;
    border-radius: 20px;
    color: #fff;
    font-weight: 500;
}

.pay-btn:hover {
    background: #ff7a2f;
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
    <main>
        <!--? slider Area Start-->
        <section class="slider-area ">
            <div class="slider-active">
                <!-- Single Slider -->
                <div class="single-slider slider-height d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-7 col-md-12">
                                <div class="hero__caption">
                                <%String buy = (String)request.getAttribute("buy"); 
                                if(buy!=null){
                                	
                                
                                %>
                                <div class="alert alert-warning" style="margin-bottom:20px;">
                                    <%=buy %>
                                </div>
                                <%
                                }
                                %>
                                    <h1 data-animation="fadeInLeft" data-delay="0.2s">Online learning<br> platform</h1>
                                    <p data-animation="fadeInLeft" data-delay="0.4s">Build in-demand skills through interactive quizzes, structured courses, and certifications.</p>
                                    <a href="#" class="btn hero-btn" data-animation="fadeInLeft" data-delay="0.7s">Join for Free</a>
                                </div>
                            </div>
                        </div>
                    </div>          
                </div>
            </div>
        </section>
        <!-- ? services-area --><br><br>
        <div class="services-area">
    <div class="container">
        <div class="row justify-content-sm-center">

            <!-- Feature 1 -->
            <div class="col-lg-4 col-md-6 col-sm-8">
                <div class="single-services mb-30">
                    <div class="features-icon">
                        <img src="assets/img/icon/icon1.svg" alt="">
                    </div>
                    <div class="features-caption">
                        <h3>Subject-Wise Quizzes</h3>
                        <p>Choose a subject and attempt topic-based quizzes to test your skills.</p>
                    </div>
                </div>
            </div>

            <!-- Feature 2 -->
            <div class="col-lg-4 col-md-6 col-sm-8">
                <div class="single-services mb-30">
                    <div class="features-icon">
                        <img src="assets/img/icon/icon2.svg" alt="">
                    </div>
                    <div class="features-caption">
                        <h3>Instant Results & Feedback</h3>
                        <p>Get immediate scores, correct answers, and performance insights.</p>
                    </div>
                </div>
            </div>

            <!-- Feature 3 -->
            <div class="col-lg-4 col-md-6 col-sm-8">
                <div class="single-services mb-30">
                    <div class="features-icon">
                        <img src="assets/img/icon/icon3.svg" alt="">
                    </div>
                    <div class="features-caption">
                        <h3>Track Your Progress</h3>
                        <p>Monitor your quiz attempts, scores, and improvement over time.</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

        <!-- Courses area start -->
        <div class="courses-area section-padding40 fix">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8">
                        <div class="section-tittle text-center mb-55">
                            <h2>Our featured courses</h2>
                        </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-lg-4">
                        <div class="properties properties2 mb-30">
                            <div class="properties__card">
                                <div class="properties__img overlay1">
                                    <a href="#"><img src="assets/img/gallery/featured1.png" alt=""></a>
                                </div>
                                <div class="properties__caption">
                                    <p>Programming</p>
                                    <h3><a href="userjava">Java Full Stack Development</a></h3>
                                    <p>Learn core Java, JDBC, Servlets, JSP, Spring MVC, Spring Boot, and MySQL. Build real-world web applications with hands-on projects and industry-level coding practices.
                                    </p>
                                    <div class="properties__footer d-flex justify-content-between align-items-center">
                                        <div class="restaurant-name">
                                            <div class="rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star-half"></i>
                                            </div>
                                            <p><span>(4.5)</span> based on 120</p>
                                        </div>
                                        <div class="price">
                                            <span>Free</span>
                                        </div>
                                    </div>
                                    <div class="text-center mt-3">
        <form method="get" action="userjava">
            <button type="submit" class="btn btn-sm btn-primary pay-btn">
                Learn Now
            </button>
        </form>
    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="properties properties2 mb-30">
                            <div class="properties__card">
                                <div class="properties__img overlay1">
                                    <a href="#"><img src="assets/img/gallery/featured2.png" alt=""></a>
                                </div>
                                <div class="properties__caption">
                                    <p>Programming</p>
                                    <h3><a href="#">Python Programming Masterclass</a></h3>
                                    <p>Master Python from basics to advanced concepts including OOP, file handling, data structures, and introduction to data analysis and automation.
                                        
                                    </p>
                                    <div class="properties__footer d-flex justify-content-between align-items-center">
                                        <div class="restaurant-name">
                                            <div class="rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star-half"></i>
                                            </div>
                                            <p><span>(4.5)</span> based on 120</p>
                                        </div>
                                        <div class="price">

                                            <del class="text-muted">&#8377;800</del>
                                            <span class="price paid ms-2">&#8377;500</span>
                                        </div>
                                         
                                    </div>
                                     
                                   <div class="text-center mt-3">
                                   <%
        Boolean python = (Boolean) session.getAttribute("pythonAccess");

        if (python != null && python) {
    %>

            <form method="get" action="userpython">
            <button type="submit" class="btn btn-sm btn-primary pay-btn">
                Learn Now
            </button>
        </form>

    <%
        } else {
    %>
        <form id="paymentForm" method="post">
            <input type="hidden" name="amount" id="amount" value="500">
            <button type="submit" class="btn btn-sm btn-primary pay-btn">
                Buy Now
            </button>
        </form>
        <%} %>
    </div>
    
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="properties properties2 mb-30">
                            <div class="properties__card">
                                <div class="properties__img overlay1">
                                    <a href="#"><img src="assets/img/gallery/featured3.png" alt=""></a>
                                </div>
                                <div class="properties__caption">
                                    <p>Web Design</p>
                                    <h3><a href="#">HTML, CSS & Bootstrap Web Design</a></h3>
                                    <p>Learn modern website design using HTML5, CSS3, Bootstrap, and responsive layouts. Build beautiful, mobile-friendly websites from scratch.
                                        
                                    </p>
                                    <div class="properties__footer d-flex justify-content-between align-items-center">
                                        <div class="restaurant-name">
                                            <div class="rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star-half"></i>
                                            </div>
                                            <p><span>(4.5)</span> based on 120</p>
                                        </div>
                                        <div class="price">
                                            <del class="text-muted">&#8377;800</del>
                                            <span class="price paid ms-2">&#8377;500</span>
                                        </div>
                                    </div>
                                    
                                    <div class="text-center mt-3">
                                    <%
        Boolean html = (Boolean) session.getAttribute("htmlAccess");

        if (html != null && html) {
    %>

            <form method="get" action="userhtmlcss">
            <button type="submit" class="btn btn-sm btn-primary pay-btn">
                Learn Now
            </button>
        </form>

    <%
        } else {
    %>
                                    
        <form id="paymentFormhtml" method="post">
            <input type="hidden" name="amount" id="amount" value="500">
            <button type="submit" class="btn btn-sm btn-primary pay-btn">
                Buy Now
            </button>
        </form>
        <%} %>
    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>                                   </div>
            </div>
        </div>
        <!-- Courses area End -->
        <!--? About Area-1 Start -->
        <section class="about-area1 fix pt-10">
    <div class="support-wrapper align-items-center">

        <!-- LEFT CONTENT -->
        <div class="left-content1">
            <div class="about-icon">
                <img src="assets/img/icon/about.svg" alt="">
            </div>

            <!-- Section Title -->
            <div class="section-tittle section-tittle2 mb-55">
                <div class="front-text">
                    <h2>Learn, Practice, and Test Your Skills Online</h2>
                    <p>
                        Learnify helps you build strong technical skills through subject-wise quizzes,
                        interactive assessments, and instant results. Select a subject, attempt quizzes,
                        and track your progress in real time.
                    </p>
                </div>
            </div>

            <!-- Feature 1 -->
            <div class="single-features">
                <div class="features-icon">
                    <img src="assets/img/icon/right-icon.svg" alt="">
                </div>
                <div class="features-caption">
                    <p>Choose from popular subjects like Java, Python, SQL, and Web Development.</p>
                </div>
            </div>

            <!-- Feature 2 -->
            <div class="single-features">
                <div class="features-icon">
                    <img src="assets/img/icon/right-icon.svg" alt="">
                </div>
                <div class="features-caption">
                    <p>Attempt topic-wise quizzes and get instant results with detailed feedback.</p>
                </div>
            </div>

            <!-- Feature 3 -->
            <div class="single-features">
                <div class="features-icon">
                    <img src="assets/img/icon/right-icon.svg" alt="">
                </div>
                <div class="features-caption">
                    <p>Track your performance, improve your skills, and prepare confidently for interviews.</p>
                </div>
            </div>
        </div>

        <!-- RIGHT CONTENT (INLINE VIDEO) -->
        <div class="right-content1">
            <div class="right-img">

                <!-- Embedded YouTube Video -->
                <iframe
                    width="100%"
                    height="320"
                    src="https://www.youtube.com/embed/l9AzO1FMgM8"
                    title="Learnify Introduction"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
                </iframe>

            </div>
        </div>

    </div>
</section>
        <!-- About Area End -->
        <!--? top subjects Area Start -->
        <div class="topic-area section-padding40">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8">
                        <div class="section-tittle text-center mb-55">
                            <h2>Explore top subjects</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-topic text-center mb-30">
                            <div class="topic-img">
                                <img src="assets/img/gallery/topic1.png" alt="">
                                <div class="topic-content-box">
                                    <div class="topic-content">
                                        <h3><a href="#">JAVA</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-topic text-center mb-30">
                            <div class="topic-img">
                                <img src="assets/img/gallery/topic2.png" alt="">
                                <div class="topic-content-box">
                                    <div class="topic-content">
                                        <h3><a href="#">PYTHON</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-topic text-center mb-30">
                            <div class="topic-img">
                                <img src="assets/img/gallery/topic3.png" alt="">
                                <div class="topic-content-box">
                                    <div class="topic-content">
                                        <h3><a href="#">SQL</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-topic text-center mb-30">
                            <div class="topic-img">
                                <img src="assets/img/gallery/topic4.png" alt="">
                                <div class="topic-content-box">
                                    <div class="topic-content">
                                        <h3><a href="#">HTML</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-topic text-center mb-30">
                            <div class="topic-img">
                                <img src="assets/img/gallery/topic5.png" alt="">
                                <div class="topic-content-box">
                                    <div class="topic-content">
                                        <h3><a href="#">CSS</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-topic text-center mb-30">
                            <div class="topic-img">
                                <img src="assets/img/gallery/topic6.png" alt="">
                                <div class="topic-content-box">
                                    <div class="topic-content">
                                        <h3><a href="#">JavaScript</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-topic text-center mb-30">
                            <div class="topic-img">
                                <img src="assets/img/gallery/topic7.png" alt="">
                                <div class="topic-content-box">
                                    <div class="topic-content">
                                        <h3><a href="#">Data Structures & Algorithms</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="single-topic text-center mb-30">
                            <div class="topic-img">
                                <img src="assets/img/gallery/topic8.png" alt="">
                                <div class="topic-content-box">
                                    <div class="topic-content">
                                        <h3><a href="#">Spring / Spring Boot</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                 <div class="row justify-content-center"> -->
<!--                     <div class="col-xl-12"> -->
<!--                         <div class="section-tittle text-center mt-20"> -->
<!--                             <a href="courses.html" class="border-btn">View More Subjects</a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
        </div>
        <!-- top subjects End -->
        <!--? About Area-3 Start -->
        <section class="about-area3 fix">
    <div class="support-wrapper align-items-center">

        <!-- RIGHT IMAGE -->
        <div class="right-content3">
            <div class="right-img">
                <img src="assets/img/gallery/about3.png" alt="">
            </div>
        </div>

        <!-- LEFT CONTENT -->
        <div class="left-content3">

            <!-- Section Title -->
            <div class="section-tittle section-tittle2 mb-20">
                <div class="front-text">
                    <h2>What You Will Achieve with Learnify</h2>
                </div>
            </div>

            <!-- Outcome 1 -->
            <div class="single-features">
                <div class="features-icon">
                    <img src="assets/img/icon/right-icon.svg" alt="">
                </div>
                <div class="features-caption">
                    <p>Build a strong foundation in subjects like Java, Python, SQL, and Web Development.</p>
                </div>
            </div>

            <!-- Outcome 2 -->
            <div class="single-features">
                <div class="features-icon">
                    <img src="assets/img/icon/right-icon.svg" alt="">
                </div>
                <div class="features-caption">
                    <p>Improve problem-solving skills by practicing topic-wise and timed quizzes.</p>
                </div>
            </div>

            <!-- Outcome 3 -->
            <div class="single-features">
                <div class="features-icon">
                    <img src="assets/img/icon/right-icon.svg" alt="">
                </div>
                <div class="features-caption">
                    <p>Gain confidence with instant results, detailed feedback, and progress tracking.</p>
                </div>
            </div>

        </div>
    </div>
</section>

        <!-- About Area End -->
        <!--? Team -->
<!--         <section class="team-area section-padding40 fix"> -->
<!--             <div class="container"> -->
<!--                 <div class="row justify-content-center"> -->
<!--                     <div class="col-xl-7 col-lg-8"> -->
<!--                         <div class="section-tittle text-center mb-55"> -->
<!--                             <h2>Top Quiz Performers</h2> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="team-active"> -->
<!--                     <div class="single-cat text-center"> -->
<!--                         <div class="cat-icon"> -->
<!--                             <img src="assets/img/gallery/team1.png" alt=""> -->
<!--                         </div> -->
<!--                         <div class="cat-cap"> -->
<!--                             <h5><a href="services.html">Mr. Urela</a></h5> -->
<!--                             <p>The automated process all your website tasks.</p> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="single-cat text-center"> -->
<!--                         <div class="cat-icon"> -->
<!--                             <img src="assets/img/gallery/team2.png" alt=""> -->
<!--                         </div> -->
<!--                         <div class="cat-cap"> -->
<!--                             <h5><a href="services.html">Mr. Uttom</a></h5> -->
<!--                             <p>The automated process all your website tasks.</p> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="single-cat text-center"> -->
<!--                         <div class="cat-icon"> -->
<!--                             <img src="assets/img/gallery/team3.png" alt=""> -->
<!--                         </div> -->
<!--                         <div class="cat-cap"> -->
<!--                             <h5><a href="services.html">Mr. Shakil</a></h5> -->
<!--                             <p>The automated process all your website tasks.</p> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="single-cat text-center"> -->
<!--                         <div class="cat-icon"> -->
<!--                             <img src="assets/img/gallery/team4.png" alt=""> -->
<!--                         </div> -->
<!--                         <div class="cat-cap"> -->
<!--                             <h5><a href="services.html">Mr. Arafat</a></h5> -->
<!--                             <p>The automated process all your website tasks.</p> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="single-cat text-center"> -->
<!--                         <div class="cat-icon"> -->
<!--                             <img src="assets/img/gallery/team3.png" alt=""> -->
<!--                         </div> -->
<!--                         <div class="cat-cap"> -->
<!--                             <h5><a href="services.html">Mr. saiful</a></h5> -->
<!--                             <p>The automated process all your website tasks.</p> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </section> -->
<!--         Services End -->
        <!--? About Area-2 Start -->
        <section class="about-area2 fix pb-padding">
    <div class="support-wrapper align-items-center">

        <!-- RIGHT IMAGE -->
        <div class="right-content2">
            <div class="right-img">
                <img src="assets/img/gallery/about2.png" alt="">
            </div>
        </div>

        <!-- LEFT CONTENT -->
        <div class="left-content2">
            <div class="section-tittle section-tittle2 mb-20">
                <div class="front-text">

                    <h2>
                        Test Your Skills and <br>
                        Track Your Progress <br>
                        with Learnify
                    </h2>

                    <p>
                        Choose a subject, attempt interactive quizzes, and get instant results.
                        Improve your knowledge, monitor your performance, and prepare
                        confidently for interviews.
                    </p>

                    <a href="#" class="btn">
                        Start Quiz Now
                    </a>

                </div>
            </div>
        </div>

    </div>
</section>
        <!-- About Area End -->
    </main>

<%@include file="footer.jsp" %>
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


<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
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
                    name: "Learnify",
                    order_id: order.id,
                    handler: function (response) {
                        alert("Payment successful! Payment ID: " + response.razorpay_payment_id);
                        window.location="userpython";
                    }
                };

                const rzp1 = new Razorpay(options);
                rzp1.open();
            })
            .catch(err => alert("Error creating order: " + err));
        });
    </script>
<script>
        document.getElementById("paymentFormhtml").addEventListener("submit", function (e) {
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
                    name: "Learnify",
                    order_id: order.id,
                    handler: function (response) {
                        alert("Payment successful! Payment ID: " + response.razorpay_payment_id);
                        window.location="userhtmlcss";
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