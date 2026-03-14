<!doctype html>
<%@page import="java.util.Set"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.aman.pojo.Questions"%>
<%@page import="java.util.List"%>
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
    <style type="text/css">
    
    .properties__img img {
    width: 100%;
    height: 220px;
    object-fit: cover;
}
    .qa-card {
    background: #f7f8ff;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 12px;
}

.qa-actions {
    display: flex;
    gap: 10px;
}

.small-btn {
    padding: 6px 16px;
    font-size: 13px;
}

.danger-btn {
    border-color: #ff4d4f;
    color: #ff4d4f;
}

.danger-btn:hover {
    background: #ff4d4f;
    color: #fff !important;
}

.border-btn:hover,
.border-btn:hover a {
    color: #ffffff !important;
}
    
    .add-content-form input[type="text"],
.add-content-form textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ddd;
    border-radius: 6px;
    font-size: 14px;
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
                            <h2>Manage Quesions</h2>
                            <h1>
                            <%
                            String m = (String)request.getAttribute("msg");
                            if(m!=null){
                            	out.print(m);
                            }
                            %>
                            </h1>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
    <div class="properties properties2 mb-30">
        <div class="properties__card">
            <div class="properties__img overlay1">
                <img src="assets/img/gallery/featured1.png" alt="">
            </div>
            <div class="properties__caption">
                <p>Administration</p>

                <h3>Java Full Stack  Content Management</h3>

                <p>
                    This admin panel allows you to add, update, and manage
                    questions and answers for the Java Full Stack course.
                    The content added here will be shown to users as
                    structured study material.
                </p>

                <div class="properties__footer d-flex justify-content-between align-items-center">
                    <p style="font-weight:600;color:#ff6600;">
                        Admin Access Only
                    </p>
                </div>

                
            </div>
        </div>
    </div>
</div>

										
										<div class="col-lg-8">
    <div class="properties properties2 mb-30">
        <div class="properties__card">

            <!-- Image Section (same style as left) -->
            <div class="properties__img overlay1">
                <img src="assets/img/gallery/featured2.png" alt="">
            </div>

            <!-- Content Section -->
            <div class="properties__caption">

                <p>Administration</p>

                <h3>Add Content</h3>

                <p>
                    Use this form to add new questions and answers.
                    This content will be visible to users as structured
                    learning material.
                </p>

                <!-- FORM START -->
                <form action="saveQuestion" method="post" class="add-content-form">

                    <div class="mb-3">
                        <label class="form-label">Select Subject</label>
                        <select class="form-select" name="subject" required>
                            <option selected disabled>Choose Subject</option>

                            <%
                                Set<String> subjects =
                                (Set<String>) session.getAttribute("subjects");
                                if (subjects != null) {
                                    for (String s : subjects) {
                            %>
                                <option value="<%=s%>"><%=s%></option>
                            <%
                                    }
                                }
                            %>
                        </select>
                    </div><br><br>

                    <div class="mb-3">
                        <input type="text"
                               name="question"
                               class="form-control"
                               placeholder="Enter Question"
                               required>
                    </div>

                    <div class="mb-3">
                        <textarea name="answer"
                                  class="form-control"
                                  rows="4"
                                  placeholder="Enter Answer"
                                  required></textarea>
                    </div>

                    <button type="submit" class="border-btn border-btn2">
                        Add Content
                    </button>

                </form>
                <!-- FORM END -->

            </div>
        </div>
    </div>
</div>

    </div>
    <hr>

    <h3 class="mt-4">Already Added Content</h3>


<%
    List<Questions> l = (List<Questions>) session.getAttribute("lst");

    if (l != null) {
        for (Questions q : l) {
%>

<div class="qa-card d-flex justify-content-between align-items-start mb-3">

    <!-- Question & Answer -->
    <div>
        <p><b>Q:</b> <%= q.getQuestion() %></p>
        <p><b>A:</b> <%= q.getAnswer() %></p>
    </div>

    <!-- Actions -->
    <div class="qa-actions">
        <!-- EDIT -->
        <a href="#"
   class="border-btn border-btn2 small-btn"
style="color:#6c63ff;border-color:#6c63ff;"
   data-toggle="modal"
   data-target="#editQuestionModal"

   data-id="<%= q.getQuestion_id() %>"
   data-subject="<%= q.getSubject() %>"
   data-question="<%= q.getQuestion().replace("\"","&quot;") %>"
   data-answer="<%= q.getAnswer().replace("\"","&quot;") %>">
   Edit
</a>

        <!-- DELETE -->
        <a href="deleteQuestion?id=<%= q.getQuestion_id() %>"
           class="border-btn border-btn2 small-btn"
           style="color:#6c63ff;border-color:#6c63ff;"
           onmouseover="this.style.background='#6c63ff';this.style.color='#fff';"
           onmouseout="this.style.background='transparent';this.style.color='#6c63ff';"
           onclick="return confirm('Are you sure you want to delete this question?');">
            Delete
        </a>
    </div>

</div>

<%
        }
    }
%>


                   					
						                   
                    </div>
                </div>
<!--                 <div class="row justify-content-center"> -->
<!--                     <div class="col-xl-7 col-lg-8"> -->
<!--                         <div class="section-tittle text-center mt-40"> -->
<!--                             <a href="#" class="border-btn">Load More</a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
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
                </div><br><br><br><br><br><br><br>

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
    <script>
$(document).on('show.bs.modal', '#editQuestionModal', function (event) {

    var button = $(event.relatedTarget);
    console.log(button.data());

    $('#editQuestionId').val(button.data('id'));
    $('#editSubject').val(button.data('subject'));
    $('#editQuestion').val(button.data('question'));
    $('#editAnswer').val(button.data('answer'));

});
</script>
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
    <div class="modal fade" id="editQuestionModal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">

      <form action="updateQuestion" method="post">

        <div class="modal-header">
          <h5 class="modal-title">Edit Question</h5>
          <button type="button" class="close" data-dismiss="modal">
            <span>&times;</span>
          </button>
        </div>

        <div class="modal-body">

          <input type="hidden" name="question_Id" id="editQuestionId" value="">

          <div class="mb-3">
            <label>Subject</label>
            <input type="text" class="form-control" name="subject" id="editSubject" value="">
          </div>

          <div class="mb-3">
            <label>Question</label>
            <textarea class="form-control" name="question" id="editQuestion"></textarea>
          </div>

          <div class="mb-3">
            <label>Answer</label>
            <textarea class="form-control" name="answer" id="editAnswer"></textarea>
          </div>

        </div>

        <div class="modal-footer">
          <button type="submit" class="border-btn border-btn2">Update</button>
        </div>

      </form>

    </div>
  </div>
</div>
    
</body>
</html>