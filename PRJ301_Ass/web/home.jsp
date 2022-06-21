<%-- 
    Document   : home
    Created on : Jun 6, 2022, 9:30:59 PM
    Author     : MyPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Resume - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <style>
        .aaa a{
            text-decoration: none
        }
        .aaa{
            text-align: center;
            border-right: 10px;
        }
        .bbb{
            height: 60px;

        }
        .aaaa{
            background-color:    #bd5d38;

        }
        .aaaa a {
            color: white;
        }
        .aaaa p{
            padding-top: 11.5px;
        }
        .aaaaa{
            width: 120px;
            background-color:    #bd5d38;
            margin-left: 43.5%;
        }
        .aaaaa p{
            padding-top: 11.5px;
        }
        .aaaaa a
        {
            color: white;
        }
    </style>
    <body id="page-top">

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                <span class="d-block d-lg-none">Clarence Taylor</span>
                <span  class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="assets/img/daihoc.jpg" alt="..." href="#about" /></span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Home</a></li>
                </ul>
            </div>
        </nav>
        <!-- Page Content-->
        <div class="container-fluid p-0">
            <section class="resume-section" id="about">
                <div class="resume-section-content">
                    <h1 class="mb-0">
                        Welcome
                        <span class="text-primary">To University</span>
                    </h1>
                    <div class="subheading mb-5">
                        HÀ NỘI
                        Khu Giáo dục và Đào tạo – Khu Công nghệ cao Hòa Lạc – Km29 Đại lộ Thăng Long, H. Thạch Thất, TP. Hà Nội
                        <h1> </h1>
                        <a href="https://daihoc.fpt.edu.vn/">daihocfpt@fpt.edu.vn</a>
                    </div>
                    <p class="lead mb-5"></p>
                    <div class="row aaa">
                        <div class="col-md-2"></div>

                        <c:if test="${sessionScope.account == null}">

                            <div class="col-md-3 aaaa">
                                <p>
                                    <a href="login">Login for Student</a>   
                                </p>  </div>      
                            <div class="col-md-2"></div>
                            <div class="col-md-3 aaaa">
                                <p>
                                    <a href="">Login for Lecture</a>             
                                </p>
                            </div>
                            <div class="col-md-2"></div>
                        </c:if>
                        <c:if test="${sessionScope.account != null}">
                            <p class="bbbb">
                                <a href="view_students/viewinformation.jsp">Information</a>             
                            </p>
                            <div class="aaaaa">
                                <p >
                                    <a href="logout">Log Out</a>             
                                </p>
                            </div>
                        </c:if>  
                    </div>
                    <div class="bbb">
                    </div>

                    <div class="social-icons">
                        <a class="social-icon" href="#!"><i class="fab fa-linkedin-in"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-github"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-facebook-f"></i></a>
                    </div>
                </div>
            </section>
        </div> 
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

