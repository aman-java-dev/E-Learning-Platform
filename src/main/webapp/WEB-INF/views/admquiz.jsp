<!doctype html>
<%@page import="com.aman.pojo.Quiz"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
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
    .quiz-container {
    max-width: 1200px;
    margin: 40px auto;
}

.quiz-card {
    background: #ffffff;
    border-radius: 14px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.08);
    padding: 25px;
}

.quiz-title {
    font-size: 22px;
    font-weight: 600;
    margin-bottom: 20px;
    color: #4a4a4a;
}

.form-control {
    border-radius: 10px;
    padding: 10px 14px;
}

.btn-primary {
    background: linear-gradient(90deg,#ff9a62,#ff6a3d);
    border: none;
    border-radius: 10px;
    padding: 10px 22px;
}

.quiz-item {
    background: #f9f9ff;
    border-radius: 12px;
    padding: 18px;
    margin-bottom: 15px;
    border-left: 5px solid #7b6cff;
}

.quiz-actions a {
    margin-right: 10px;
}

.badge-answer {
    background: #7b6cff;
    color: #fff;
    padding: 4px 10px;
    border-radius: 20px;
    font-size: 12px;
}

.quiz-actions {
    display: flex;
    flex-direction: column;
    gap: 6px;
}

.quiz-btn {
    padding: 4px 10px;
    font-size: 12px;
    border-radius: 6px;
    text-decoration: none;
    text-align: center;
    font-weight: 500;
    transition: 0.2s ease;
}

.edit-btn {
    background: #eef2ff;
    color: #4f46e5;
    border: 1px solid #c7d2fe;
}

.edit-btn:hover {
    background: #4f46e5;
    color: #fff;
}

.delete-btn {
    background: #fff1f2;
    color: #dc2626;
    border: 1px solid #fecaca;
}

.delete-btn:hover {
    background: #dc2626;
    color: #fff;
}

.quiz-title {
    font-size: 20px;
    font-weight: 600;
}

h6 {
    font-weight: 600;
    color: #4f46e5;
}

.quiz-card {
    padding: 20px 18px;
}

.quiz-item {
    width: 100%;
    padding: 16px;
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
                                    <h1 data-animation="bounceIn" data-delay="0.2s">Manage Quiz</h1>
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
                            <h2>Quiz Management</h2>
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

                    
                    
 <div class="quiz-container">
    <div class="row justify-content-center">

        <!-- CENTER: ADD QUIZ -->
        <div class="col-lg-6">
            <div class="quiz-card">
                <div class="quiz-title text-center">Add Quiz Question</div>

                <form action="addQuiz" method="post">

                    <div class="mb-3">
                        <label>Subject</label><br>
                        <select name="subject" class="form-control" required>
                            <option value="">Select Subject</option>
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
                        <label>Question</label>
                        <input type="text" name="question" class="form-control" required>
                    </div>

                    <div class="row">
                        <div class="col-6 mb-2">
                            <input class="form-control" name="optionA" placeholder="Option A">
                        </div>
                        <div class="col-6 mb-2">
                            <input class="form-control" name="optionB" placeholder="Option B">
                        </div>
                        <div class="col-6 mb-2">
                            <input class="form-control" name="optionC" placeholder="Option C">
                        </div>
                        <div class="col-6 mb-3">
                            <input class="form-control" name="optionD" placeholder="Option D">
                        </div>
                    </div>

                    <div class="mb-3">
                        <label>Correct Answer</label><br>
                        <select name="correct" class="form-control">
                            <option>A</option>
                            <option>B</option>
                            <option>C</option>
                            <option>D</option>
                        </select>
                    </div>

                    <button class="btn btn-primary w-100">Add Question</button>
                </form>
            </div>
        </div>

    </div>

 <!-- ADDED QUESTIONS -->
<!-- ADDED QUESTIONS BY SUBJECT -->
<div class="row justify-content-center mt-5">
    <div class="col-lg-12 px-2">
        <div class="quiz-card">
            <div class="quiz-title">Added Quiz Questions</div>

            <div class="row gx-3">

                <!-- JAVA COLUMN -->
                <div class="col-lg-4 col-md-12 mb-4">
                    <h6 class="text-center mb-3">Java</h6>

                    <%
                        List<Quiz> l = (List<Quiz>) session.getAttribute("lst");
                        if (l != null) {
                            for (Quiz q : l) {
                                if ("Java".equalsIgnoreCase(q.getSubject())) {
                    %>

                    <div class="quiz-item d-flex justify-content-between align-items-start mb-3">
                        <div>
                            <p><b>Q:</b> <%= q.getQuestion() %></p>
                            <ul class="quiz-options">
                                <li>A. <%= q.getOptionA() %></li>
                                <li>B. <%= q.getOptionB() %></li>
                                <li>C. <%= q.getOptionC() %></li>
                                <li>D. <%= q.getOptionD() %></li>
                            </ul>
                            <span class="badge-answer">Correct: <%= q.getCorrect() %></span>
                        </div>

                        <div class="quiz-actions">
                            <!-- EDIT (Modal Trigger) -->
<a href="#"
   class="quiz-btn edit-btn"
   data-toggle="modal"
   data-target="#editQuizModal"

   data-id="<%= q.getId() %>"
   data-subject="<%= q.getSubject() %>"
   data-question="<%= q.getQuestion().replace("\"","&quot;") %>"
   data-a="<%= q.getOptionA().replace("\"","&quot;") %>"
   data-b="<%= q.getOptionB().replace("\"","&quot;") %>"
   data-c="<%= q.getOptionC().replace("\"","&quot;") %>"
   data-d="<%= q.getOptionD().replace("\"","&quot;") %>"
   data-correct="<%= q.getCorrect() %>">
   Edit
</a>


<!-- DELETE -->
<a href="#"
   class="quiz-btn delete-btn"
   data-toggle="modal"
   data-target="#deleteQuizModal"
   data-id="<%= q.getId() %>">
   Delete
</a>
                        </div>
                    </div>

                    <%
                                }
                            }
                        }
                    %>
                </div>

                <!-- PYTHON COLUMN -->
                <div class="col-lg-4 col-md-12 mb-4">
                    <h6 class="text-center mb-3">Python</h6>

                    <%
                        if (l != null) {
                            for (Quiz q : l) {
                                if ("Python".equalsIgnoreCase(q.getSubject())) {
                    %>

                    <div class="quiz-item d-flex justify-content-between align-items-start mb-3">
                        <div>
                            <p><b>Q:</b> <%= q.getQuestion() %></p>
                            <ul class="quiz-options">
                                <li>A. <%= q.getOptionA() %></li>
                                <li>B. <%= q.getOptionB() %></li>
                                <li>C. <%= q.getOptionC() %></li>
                                <li>D. <%= q.getOptionD() %></li>
                            </ul>
                            <span class="badge-answer">Correct: <%= q.getCorrect() %></span>
                        </div>

                        <div class="quiz-actions">
                            <a href="#"
   class="quiz-btn edit-btn"
   data-toggle="modal"
   data-target="#editQuizModal"

   data-id="<%= q.getId() %>"
   data-subject="<%= q.getSubject() %>"
   data-question="<%= q.getQuestion().replace("\"","&quot;") %>"
   data-a="<%= q.getOptionA().replace("\"","&quot;") %>"
   data-b="<%= q.getOptionB().replace("\"","&quot;") %>"
   data-c="<%= q.getOptionC().replace("\"","&quot;") %>"
   data-d="<%= q.getOptionD().replace("\"","&quot;") %>"
   data-correct="<%= q.getCorrect() %>">
   Edit
</a>


<!-- DELETE -->
<a href="#"
   class="quiz-btn delete-btn"
   data-toggle="modal"
   data-target="#deleteQuizModal"
   data-id="<%= q.getId() %>">
   Delete
</a>
                        </div>
                    </div>

                    <%
                                }
                            }
                        }
                    %>
                </div>

                <!-- HTML / CSS COLUMN -->
                <div class="col-lg-4 col-md-12 mb-4">
                    <h6 class="text-center mb-3">HTML / CSS</h6>

                    <%
                        if (l != null) {
                            for (Quiz q : l) {
                                if ("HTML/CSS".equalsIgnoreCase(q.getSubject()) ||
                                    "HTML / CSS".equalsIgnoreCase(q.getSubject())) {
                    %>

                    <div class="quiz-item d-flex justify-content-between align-items-start mb-3">
                        <div>
                            <p><b>Q:</b> <%= q.getQuestion() %></p>
                            <ul class="quiz-options">
                                <li>A. <%= q.getOptionA() %></li>
                                <li>B. <%= q.getOptionB() %></li>
                                <li>C. <%= q.getOptionC() %></li>
                                <li>D. <%= q.getOptionD() %></li>
                            </ul>
                            <span class="badge-answer">Correct: <%= q.getCorrect() %></span>
                        </div>

                        <div class="quiz-actions">
                            <!-- EDIT (Modal Trigger) -->
<a href="#"
   class="quiz-btn edit-btn"
   data-toggle="modal"
   data-target="#editQuizModal"

   data-id="<%= q.getId() %>"
   data-subject="<%= q.getSubject() %>"
   data-question="<%= q.getQuestion().replace("\"","&quot;") %>"
   data-a="<%= q.getOptionA().replace("\"","&quot;") %>"
   data-b="<%= q.getOptionB().replace("\"","&quot;") %>"
   data-c="<%= q.getOptionC().replace("\"","&quot;") %>"
   data-d="<%= q.getOptionD().replace("\"","&quot;") %>"
   data-correct="<%= q.getCorrect() %>">
   Edit
</a>


<!-- DELETE -->
<a href="#"
   class="quiz-btn delete-btn"
   data-toggle="modal"
   data-target="#deleteQuizModal"
   data-id="<%= q.getId() %>">
   Delete
</a>

                        </div>
                    </div>

                    <%
                                }
                            }
                        }
                    %>
                </div>

            </div>
        </div>
    </div>
</div>
<br><br><br><br><br><br><br><br><br>
            
                    
                    
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
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="row justify-content-center"> -->
<!--                     <div class="col-xl-7 col-lg-8"> -->
<!--                         <div class="section-tittle text-center mt-40"> -->
<!--                             <a href="#" class="border-btn">Load More</a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--         Courses area End -->
<!--         ? top subjects Area Start -->
<!--         <div class="topic-area"> -->
<!--             <div class="container"> -->
<!--                 <div class="row justify-content-center"> -->
<!--                     <div class="col-xl-7 col-lg-8"> -->
<!--                         <div class="section-tittle text-center mb-55"> -->
<!--                             <h2>Explore top subjects</h2> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="row"> -->
<!--                     <div class="col-lg-3 col-md-4 col-sm-6"> -->
<!--                         <div class="single-topic text-center mb-30"> -->
<!--                             <div class="topic-img"> -->
<!--                                 <img src="assets/img/gallery/topic1.png" alt=""> -->
<!--                                 <div class="topic-content-box"> -->
<!--                                     <div class="topic-content"> -->
<!--                                         <h3><a href="#">Programing</a></h3> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-4 col-sm-6"> -->
<!--                         <div class="single-topic text-center mb-30"> -->
<!--                             <div class="topic-img"> -->
<!--                                 <img src="assets/img/gallery/topic2.png" alt=""> -->
<!--                                 <div class="topic-content-box"> -->
<!--                                     <div class="topic-content"> -->
<!--                                         <h3><a href="#">Programing</a></h3> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-4 col-sm-6"> -->
<!--                         <div class="single-topic text-center mb-30"> -->
<!--                             <div class="topic-img"> -->
<!--                                 <img src="assets/img/gallery/topic3.png" alt=""> -->
<!--                                 <div class="topic-content-box"> -->
<!--                                     <div class="topic-content"> -->
<!--                                         <h3><a href="#">Programing</a></h3> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-4 col-sm-6"> -->
<!--                         <div class="single-topic text-center mb-30"> -->
<!--                             <div class="topic-img"> -->
<!--                                 <img src="assets/img/gallery/topic4.png" alt=""> -->
<!--                                 <div class="topic-content-box"> -->
<!--                                     <div class="topic-content"> -->
<!--                                         <h3><a href="#">Programing</a></h3> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-4 col-sm-6"> -->
<!--                         <div class="single-topic text-center mb-30"> -->
<!--                             <div class="topic-img"> -->
<!--                                 <img src="assets/img/gallery/topic5.png" alt=""> -->
<!--                                 <div class="topic-content-box"> -->
<!--                                     <div class="topic-content"> -->
<!--                                         <h3><a href="#">Programing</a></h3> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-4 col-sm-6"> -->
<!--                         <div class="single-topic text-center mb-30"> -->
<!--                             <div class="topic-img"> -->
<!--                                 <img src="assets/img/gallery/topic6.png" alt=""> -->
<!--                                 <div class="topic-content-box"> -->
<!--                                     <div class="topic-content"> -->
<!--                                         <h3><a href="#">Programing</a></h3> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-4 col-sm-6"> -->
<!--                         <div class="single-topic text-center mb-30"> -->
<!--                             <div class="topic-img"> -->
<!--                                 <img src="assets/img/gallery/topic7.png" alt=""> -->
<!--                                 <div class="topic-content-box"> -->
<!--                                     <div class="topic-content"> -->
<!--                                         <h3><a href="#">Programing</a></h3> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-4 col-sm-6"> -->
<!--                         <div class="single-topic text-center mb-30"> -->
<!--                             <div class="topic-img"> -->
<!--                                 <img src="assets/img/gallery/topic8.png" alt=""> -->
<!--                                 <div class="topic-content-box"> -->
<!--                                     <div class="topic-content"> -->
<!--                                         <h3><a href="#">Programing</a></h3> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="row justify-content-center"> -->
<!--                     <div class="col-xl-12"> -->
<!--                         <div class="section-tittle text-center mt-20"> -->
<!--                             <a href="courses.html" class="border-btn">View More Subjects</a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
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
$(document).on('show.bs.modal', '#editQuizModal', function (event) {

    var button = $(event.relatedTarget);

    var subject = button.data('subject');
    var correct = button.data('correct');

    $('#edit-id').val(button.data('id'));
    $('#edit-question').val(button.data('question'));

    $('#edit-a').val(button.data('a'));
    $('#edit-b').val(button.data('b'));
    $('#edit-c').val(button.data('c'));
    $('#edit-d').val(button.data('d'));

    // FORCE SUBJECT SELECTION
    $('#edit-subject option').prop('selected', false);
    $('#edit-subject option[value="' + subject + '"]').prop('selected', true);

    // FORCE CORRECT ANSWER SELECTION
    $('#edit-correct option').prop('selected', false);
    $('#edit-correct option[value="' + correct + '"]').prop('selected', true);
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
    
    
    <!-- EDIT QUIZ MODAL -->
<div class="modal fade" id="editQuizModal" tabindex="-1">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <form action="updateQuiz" method="post">

        <div class="modal-header">
          <h5 class="modal-title">Edit Quiz Question</h5>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <div class="modal-body">

          <input type="hidden" name="id" id="edit-id">

          <div class="mb-3">
            <label>Subject</label>
            <select name="subject" id="edit-subject" class="form-control">
  <option value="">Select Subject</option>
  <option value="Java">Java</option>
  <option value="Python">Python</option>
  <option value="HTML/CSS">HTML / CSS</option>
</select>

          </div>

          <div class="mb-3">
            <label>Question</label>
            <input type="text" name="question" id="edit-question" class="form-control">
          </div>

          <div class="row">
            <div class="col-md-6 mb-2">
              <input class="form-control" name="optionA" id="edit-a" placeholder="Option A">
            </div>
            <div class="col-md-6 mb-2">
              <input class="form-control" name="optionB" id="edit-b" placeholder="Option B">
            </div>
            <div class="col-md-6 mb-2">
              <input class="form-control" name="optionC" id="edit-c" placeholder="Option C">
            </div>
            <div class="col-md-6 mb-2">
              <input class="form-control" name="optionD" id="edit-d" placeholder="Option D">
            </div>
          </div>

          <div class="mb-3">
            <label>Correct Answer</label>
           <select name="correct" id="edit-correct" class="form-control">
  <option value="">Select Correct Answer</option>
  <option value="A">A</option>
  <option value="B">B</option>
  <option value="C">C</option>
  <option value="D">D</option>
</select>
          </div>

        </div>

        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Update Quiz</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        </div>

      </form>

    </div>
  </div>
</div>
    
    
    
    <script>
$(document).on('show.bs.modal', '#deleteQuizModal', function (event) {
    var button = $(event.relatedTarget);
    var quizId = button.data('id');

    $('#confirmDeleteBtn').attr('href', 'deleteQuiz?id=' + quizId);
});
</script>
    
    
    <!-- DELETE QUIZ MODAL -->
<div class="modal fade" id="deleteQuizModal" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title text-danger">
          <i class="fas fa-exclamation-triangle"></i> Delete Quiz Question
        </h5>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <div class="modal-body text-center">
        <p class="mb-2">Are you sure you want to delete this quiz question?</p>
        <small class="text-muted">This action cannot be undone.</small>
      </div>

      <div class="modal-footer justify-content-center">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">
          Cancel
        </button>
        <a href="#" id="confirmDeleteBtn" class="btn btn-danger">
          Yes, Delete
        </a>
      </div>

    </div>
  </div>
</div>
    
    
    
</body>
</html>