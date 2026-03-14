<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Courses | Education</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/hamburgers.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<!--? Preloader Start -->
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
<%@include file="header.jsp" %>
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
                                <h1 data-animation="bounceIn" data-delay="0.2s">Contact us</h1>
                                <!-- breadcrumb Start-->
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                        <li class="breadcrumb-item"><a href="#">Contact</a></li> 
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
    <!--?  Contact Area start  -->
    <section class="contact-section">
    <div class="container">

        <!-- MAP SECTION (IFRAME – NO API KEY) -->
        <div class="d-none d-sm-block mb-5 pb-4">
            <div style="width: 100%; height: 480px; border-radius: 10px; overflow: hidden;">
                <iframe
                    src="https://www.google.com/maps?q=Indore,India&output=embed"
                    width="100%"
                    height="480"
                    style="border:0;"
                    allowfullscreen
                    loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade">
                </iframe>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <h2 class="contact-title">Get in Touch</h2>
            </div>

            <!-- CONTACT FORM -->
            <div class="col-lg-8">
                <form class="form-contact contact_form"
                      action="/contact"
                      method="post"
                      id="contactForm">

                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <textarea class="form-control w-100"
                                          name="message"
                                          id="message"
                                          cols="30"
                                          rows="9"
                                          placeholder="Enter Message"
                                          required></textarea>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group">
                                <input class="form-control"
                                       name="name"
                                       id="name"
                                       type="text"
                                       placeholder="Enter your name"
                                       required>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group">
                                <input class="form-control"
                                       name="email"
                                       id="email"
                                       type="email"
                                       placeholder="Enter email address"
                                       required>
                            </div>
                        </div>

                        <div class="col-12">
                            <div class="form-group">
                                <input class="form-control"
                                       name="subject"
                                       id="subject"
                                       type="text"
                                       placeholder="Enter Subject"
                                       required>
                            </div>
                        </div>
                    </div>

                    <div class="form-group mt-3">
                        <button type="submit"
                                class="button button-contactForm boxed-btn">
                            Send
                        </button>
                    </div>
                </form>
            </div>

            <!-- CONTACT INFO -->
            <div class="col-lg-3 offset-lg-1">

                <div class="media contact-info">
                    <span class="contact-info__icon">
                        <i class="ti-home"></i>
                    </span>
                    <div class="media-body">
                        <h3>Learnify, India</h3>
                        <p>Indore, Madhya Pradesh, India</p>
                    </div>
                </div>

                <div class="media contact-info">
                    <span class="contact-info__icon">
                        <i class="ti-tablet"></i>
                    </span>
                    <div class="media-body">
                        <h3>+91 8815925749</h3>
                        <p>Mon to Sat 9am to 8pm</p>
                    </div>
                </div>

                <div class="media contact-info">
                    <span class="contact-info__icon">
                        <i class="ti-email"></i>
                    </span>
                    <div class="media-body">
                        <h3>aman.dev.ind@gmail.com</h3>
                        <p>We reply within 24 hours</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
    <!-- Contact Area End -->
</main>

	<%@include file="footer.jsp" %>

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