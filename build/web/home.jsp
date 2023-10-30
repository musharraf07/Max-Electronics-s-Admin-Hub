<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<html>
    <head>
        <%@include file="/includes/head.jsp"%>
        <title> Max Electronics </title>

        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
        <link rel = "stylesheet" href = "external.css">
    </head>
    <body>
        <%@include file="/includes/navbar.jsp"%>

        <section id="hero">
            <h4>Trade-in-Offer</h4>
            <h2>Super Value Deals</h2>
            <h1>On all Products</h1>
            <p>Save more with coupons & up to 60% off!</p>
            <button><a href = "#">Shop Now</a></button>
        </section>

        <section id ="product1" class="section-p1">
            <div class="pro-container">
                <div class="pro">
                    <img src ="Images/products/laptop1.jpg" alt=" ">
                    <h5> Laptops</h5>
                </div>
                <div class="pro">
                    <img src ="Images/products/mobiles.png" alt=" ">
                    <h5> Mobiles</h5>
                </div>
                <div class="pro">
                    <img src ="Images/products/tab.jpg" alt=" ">
                    <h5> Tablets</h5>
                </div>
                <div class="pro">
                    <img src ="Images/products/tvs.png" alt=" ">
                    <h5> TV</h5>
                </div>
            </div>
        </section>

        <section id="banner" class="section-m1"></section>
        <section id ="product1" class="section-p1">
            <div class="pro-1">
                <h2> New at MAX Electronics </h2>
                <p>Back to School Collections</p>
            </div>
            <div class="pro-container">
                <div class="pro">
                    <img src ="Images/newarivals/lap2.jpg" alt=" ">
                    <div class ="des">
                        <span>hp</span>
                        <h5>Hp Laptop 15s</h5>
                        <!--<h4>Rs59,999.00</h4>-->
                    </div>
                </div>

                <div class="pro">
                    <img src ="Images/newarivals/PC.jpg" alt=" ">
                    <div class ="des">
                        <span>hp</span>
                        <h5>Hp All in One PC</h5>
                        <!--<h4>Rs75,000.00</h4>-->
                    </div>
                </div>

                <div class="pro">
                    <img src ="Images/newarivals/air1.jpg" alt=" ">
                    <div class ="des">
                        <span>Apple</span>
                        <h5>Ipad Air</h5>
                        <!--<h4>Rs50,000.00</h4>-->
                    </div>

                </div>
                <div class="pro">
                    <img src ="Images/newarivals/redminote10.jpg " alt=" ">
                    <div class ="des">
                        <span>Xiaomi</span>
                        <h5>Redmi Note 10</h5>
                        <!--<h4>Rs9,999.00</h4>-->
                    </div>
                </div>
            </div>
        </section>

        <div class="head">
            <h2>Highlights</h2>
        </div>
        <section id ="feature" class="section-p1">
            <div class = "fe-box">
                <img src ="Images/features/f1.png" alt="">
                <h6>Free Shpping</h6>
            </div>
            <div class = "fe-box">
                <img src ="Images/features/f2.png" alt="">
                <h6>Fast Delivery</h6>
            </div>
            <div class = "fe-box">
                <img src ="Images/features/f3.png" alt="">
                <h6>Save Money</h6>
            </div>
            <div class = "fe-box">
                <img src ="Images/features/f5.png" alt="">
                <h6>Happy Sell</h6>
            </div>
            <div class = "fe-box">
                <img src ="Images/features/f6.png" alt="">
                <h6>24/7 Support</h6>
            </div>  
        </section>

        <section id ="product1" class="section-p1">
            <h2> Top Brands </h2>
            <div class="pro-container">
                <div class="pro">
                    <img src ="Images/partners/samsung.png" alt=" ">
                </div>
                <div class="pro">
                    <img src ="Images/partners/oneplus.jpg" alt=" ">
                </div>
                <div class="pro">
                    <img src ="Images/partners/hp.jpg" alt=" ">
                </div>
                <div class="pro">
                    <img src ="Images/partners/dell.png" alt=" ">
                </div>   
            </div>
        </section>

        <section id="footer">
            <footer>
                <div class="copy">
                    <h6 style="text-align: center;font-weight:600; font-size: 14px;">
                        � Copyright 2022 MAX Electronics. All rights reserved</h6>
                </div>
            </footer>
        </section>
        
        <script src ="script.js"></script>
    </body>
</html>  