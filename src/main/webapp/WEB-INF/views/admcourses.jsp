<%
String user = (String)session.getAttribute("username");
if(user==null)
{
	response.sendRedirect("LoginPage.jsp");
}
%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Courses | Education</title>
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
    <%@include file="header2.jsp" %>
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
                                    <h1 data-animation="bounceIn" data-delay="0.2s">Our courses</h1>
                                    <!-- breadcrumb Start-->
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="home">Home</a></li>
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
                                    <h3><a href="#">Java Full Stack Development</a></h3>
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
                                            
                                            <del class="text-muted">&#8377;8,000</del>
                                            <span class="price paid ms-2">&#8377;5,000</span>
                                        </div>
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
                                            
                                            <del class="text-muted">&#8377;8,000</del>
                                            <span class="price paid ms-2">&#8377;5,000</span>
                                        </div>
                                    </div>
                                    
                                </div>
                                
                            </div>
                        </div>
                    </div>                                   
           

<!--                     <div class="col-lg-4"> -->
<!--                         <div class="properties properties2 mb-30"> -->
<!--                             <div class="properties__card"> -->
<!--                                 <div class="properties__img overlay1"> -->
<!--                                     <a href="#"><img src="assets/img/gallery/featured4.png" alt=""></a> -->
<!--                                 </div> -->
<!--                                 <div class="properties__caption"> -->
<!--                                     <p>User Experience</p> -->
<!--                                     <h3><a href="#">Fundamental of UX for Application design</a></h3> -->
<!--                                     <p>The automated process all your website tasks. Discover tools and techniques to engage effectively with vulnerable children and young people. -->
                                        
<!--                                     </p> -->
<!--                                     <div class="properties__footer d-flex justify-content-between align-items-center"> -->
<!--                                         <div class="restaurant-name"> -->
<!--                                             <div class="rating"> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star-half"></i> -->
<!--                                             </div> -->
<!--                                             <p><span>(4.5)</span> based on 120</p> -->
<!--                                         </div> -->
<!--                                         <div class="price"> -->
<!--                                             <span>$135</span> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <a href="#" class="border-btn border-btn2">Find out more</a> -->
<!--                                 </div> -->
                                
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-4"> -->
<!--                         <div class="properties properties2 mb-30"> -->
<!--                             <div class="properties__card"> -->
<!--                                 <div class="properties__img overlay1"> -->
<!--                                     <a href="#"><img src="assets/img/gallery/featured5.png" alt=""></a> -->
<!--                                 </div> -->
<!--                                 <div class="properties__caption"> -->
<!--                                     <p>User Experience</p> -->
<!--                                     <h3><a href="#">Fundamental of UX for Application design</a></h3> -->
<!--                                     <p>The automated process all your website tasks. Discover tools and techniques to engage effectively with vulnerable children and young people. -->
                                        
<!--                                     </p> -->
<!--                                     <div class="properties__footer d-flex justify-content-between align-items-center"> -->
<!--                                         <div class="restaurant-name"> -->
<!--                                             <div class="rating"> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star-half"></i> -->
<!--                                             </div> -->
<!--                                             <p><span>(4.5)</span> based on 120</p> -->
<!--                                         </div> -->
<!--                                         <div class="price"> -->
<!--                                             <span>$135</span> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <a href="#" class="border-btn border-btn2">Find out more</a> -->
<!--                                 </div> -->
                                
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-4"> -->
<!--                         <div class="properties properties2 mb-30"> -->
<!--                             <div class="properties__card"> -->
<!--                                 <div class="properties__img overlay1"> -->
<!--                                     <a href="#"><img src="assets/img/gallery/featured6.png" alt=""></a> -->
<!--                                 </div> -->
<!--                                 <div class="properties__caption"> -->
<!--                                     <p>User Experience</p> -->
<!--                                     <h3><a href="#">Fundamental of UX for Application design</a></h3> -->
<!--                                     <p>The automated process all your website tasks. Discover tools and techniques to engage effectively with vulnerable children and young people. -->
<!--                                     </p> -->
<!--                                     <div class="properties__footer d-flex justify-content-between align-items-center"> -->
<!--                                         <div class="restaurant-name"> -->
<!--                                             <div class="rating"> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star"></i> -->
<!--                                                 <i class="fas fa-star-half"></i> -->
<!--                                             </div> -->
<!--                                             <p><span>(4.5)</span> based on 120</p> -->
<!--                                         </div> -->
<!--                                         <div class="price"> -->
<!--                                             <span>$135</span> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <a href="#" class="border-btn border-btn2">Find out more</a> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8">
                        <div class="section-tittle text-center mt-40">
                            <a href="admmanagecourse" class="border-btn">Manage Courses</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Courses area End -->
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
                </div><br><br><br><br><br><br><br><br><br><br>
<!-- top subjects End -->  
        <!-- ? services-area -->
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