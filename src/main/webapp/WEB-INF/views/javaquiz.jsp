<!doctype html>
<%@page import="com.aman.pojo.Quiz"%>
<%@page import="com.aman.pojo.Questions"%>
<%@page import="java.util.List"%>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Java | Education</title>
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
/* ===== QUIZ UI UPGRADE ===== */
/* ===== QUIZ TOP BAR ===== */

.quiz-topbar {
    background: #ffffff;
    border-radius: 14px;
    padding: 18px 28px;
    margin-bottom: 35px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    box-shadow: 0 10px 30px rgba(0,0,0,0.08);
    border-left: 6px solid #8f5bff;
}

.quiz-badge {
    background: linear-gradient(90deg, #8f5bff, #6f42c1);
    color: #fff;
    padding: 6px 18px;
    border-radius: 20px;
    font-weight: 600;
    font-size: 14px;
}

.quiz-info {
    font-size: 15px;
    font-weight: 600;
    color: #444;
}

.timer-label {
    font-size: 12px;
    font-weight: 600;
    color: #777;
    display: block;
    text-align: right;
}

.quiz-timer {
    background: #2d2d2d;
    color: #fff;
    padding: 6px 16px;
    border-radius: 20px;
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
}

/* OPTION SELECT FEEL */

.option {
    display: flex;
    align-items: center;
    gap: 10px;
    padding: 12px 16px;
    border-radius: 10px;
    margin-bottom: 10px;
    background: #fafafa;
    border: 1px solid #eee;
}

.option:hover {
    background: #f3edff;
    border-color: #8f5bff;
}

.quiz-wrapper {
    max-width: 900px;
    margin: 40px auto;
}

.quiz-title {
    text-align: center;
    font-weight: 700;
    color: #6f42c1;
    margin-bottom: 35px;
}

.quiz-card {
    background: #ffffff;
    border-radius: 14px;
    padding: 30px 35px;
    margin-bottom: 30px;
    box-shadow: 0 12px 30px rgba(0,0,0,0.08);
    border-left: 6px solid #8f5bff;
    transition: all 0.3s ease;
}

.quiz-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 16px 40px rgba(0,0,0,0.12);
}

.question {
    font-size: 18px;
    font-weight: 600;
    color: #2d2d2d;
    margin-bottom: 18px;
}

.option {
    padding: 10px 14px;
    border-radius: 8px;
    margin-bottom: 8px;
    transition: 0.2s;
    cursor: pointer;
}

.option:hover {
    background: #f3edff;
}

.form-check-input {
    cursor: pointer;
}

.form-check-label {
    cursor: pointer;
    font-size: 15px;
    color: #444;
}

.submit-btn {
    background: linear-gradient(90deg, #8f5bff, #6f42c1);
    color: #ffffff;
    border: none;
    padding: 14px 55px;
    font-size: 16px;
    border-radius: 30px;
    font-weight: 600;
    letter-spacing: 0.5px;
    box-shadow: 0 8px 20px rgba(143,91,255,0.4);
    transition: 0.3s;
}

.submit-btn:hover {
    background: linear-gradient(90deg, #6f42c1, #8f5bff);
    transform: translateY(-2px);
    box-shadow: 0 12px 28px rgba(143,91,255,0.55);
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
                                    <h1 data-animation="bounceIn" data-delay="0.2s">Quiz</h1>
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
                            <h2>Java Skill Test	</h2>
                        </div>
                    </div>
                </div>
                 
               </div>
           </div>      
        </div>
        

<div class="container quiz-wrapper">

    <!-- QUIZ TOP BAR -->
    <div class="quiz-topbar">
        <div class="quiz-left">
            <span class="quiz-badge">Java Quiz</span>
        </div>

        <div class="quiz-center">
    <span class="quiz-info">
        <%
            List<Quiz> quizList = (List<Quiz>) session.getAttribute("lst1");
            int javaCount = 0;

            if (quizList != null) {
                for (Quiz q : quizList) {
                   
                        javaCount++;
                    
                }
            }
        %>
        Total Questions:
        <b><%= javaCount %></b>
    </span>
</div>

        <div class="quiz-right">
            <span class="timer-label">Time Left</span>
            <span id="quizTimer" class="quiz-timer">10:00</span>
        </div>
    </div>

    <!-- QUIZ FORM -->
    <form action="submitJavaQuiz" method="post">

        <%
            List<Quiz> quizList1 = (List<Quiz>) session.getAttribute("lst1");
            int qNo = 1;
            

            if (quizList1 != null) {
                for (Quiz q : quizList1) {
                	
        %>
        <div class="quiz-card">
            <div class="question">
                Q<%=qNo++%>. <%=q.getQuestion()%>
            </div>

            <label class="form-check option">
                <input class="form-check-input" type="radio"
                       name="q_<%=q.getId()%>" value="A" >
                <span><%=q.getOptionA()%></span>
            </label>

            <label class="form-check option">
                <input class="form-check-input" type="radio"
                       name="q_<%=q.getId()%>" value="B">
                <span><%=q.getOptionB()%></span>
            </label>

            <label class="form-check option">
                <input class="form-check-input" type="radio"
                       name="q_<%=q.getId()%>" value="C">
                <span><%=q.getOptionC()%></span>
            </label>

            <label class="form-check option">
                <input class="form-check-input" type="radio"
                       name="q_<%=q.getId()%>" value="D">
                <span><%=q.getOptionD()%></span>
            </label>
        </div>
        <%
                	
                }
            }
        %>

        <div class="text-center mt-5">
            <button type="submit" class="border-btn border-btn2">
                Submit Quiz
            </button>
        </div>

    </form>
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
    <script>
    let time = 10 * 60; // 10 minutes
    const timerEl = document.getElementById("quizTimer");

    const quizTimer = setInterval(() => {
        let min = Math.floor(time / 60);
        let sec = time % 60;

        timerEl.innerHTML =
            String(min).padStart(2, '0') + ":" +
            String(sec).padStart(2, '0');

        if (time <= 0) {
            clearInterval(quizTimer);
            alert("Time is up! Submitting quiz.");
            document.querySelector("form").submit();
        }
        time--;
    }, 1000);
</script>
    
</body>
</html>