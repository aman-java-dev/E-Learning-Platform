   <%@page import="com.aman.pojo.UserInfo"%>
<header>
        <!-- Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header ">
                <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2">
                                <div class="logo">
                                    <a href="index"><img src="assets/img/logo/logo3.png" style="width: 150px; height: 30px" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10">
                                <div class="menu-wrapper d-flex align-items-center justify-content-end">
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">                                                                                          
                                                <li class="active" ><a href="userhome">Home</a></li>
<!--                                                 <li><a href="courses">Courses</a></li> -->
                                                <li><a href="about">About</a></li>
                                                <li><a href="#">Quiz</a>
                                                    <ul class="submenu">
                                                        <li><a href="userquiz">Quiz</a></li>
                                                        <li><a href="userResult">Result</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="usercontact">Contact</a></li>
                                                <!-- Button -->
                                                <li class="button-header margin-left "><a href="#" class="btn"> <%
									            String msg = (String)request.getAttribute("msgg");
									            String username = (String)session.getAttribute("username");
									            if(msg!=null)
									            	out.print(msg);
									            if(username!=null)
									            {
									            	String fullname=username;
									            	String firstname = fullname.split("@")[0];
									           	 out.print(firstname);
									            }
									            %></a></li>
									           <li class="button-header"><a href="#" class=" btn3"> <%
									         String dp = (String)session.getAttribute("dp");
									           
									         %>
									         <img alt="dp" src="resources/dp/<%=dp%>"  width="50" height="50px" style="
        border-radius:50%;
        object-fit:cover;
        border:2px solid #fff;">	
									         <%
									         %></a></li>
									         <li class="button-header "><a href="logout" class="btn btn3">Logout</a></li>
                     
                                           </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div> 
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>