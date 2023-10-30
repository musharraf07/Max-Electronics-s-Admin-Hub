<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <%@include file="/includes/head.jsp"%>
    <link rel="stylesheet" href="mush.css">
</head>
<body>
    
        <div class="outer-box">
            <div class="inner-box">
            <header class ="signup-header">
                <h1>Login</h1> 
            </header>
            <main class="signup-body">
                <form action="login" method="Post">
                    <p>
                        <label for="email">Your Email</label>
                        <input type="email" name ="login-email"  required>
                    </p>
                    <p>
                        <label for="password">Password</label>
                        <input type="password" name ="login-password"  required>
                    </p>
                    <p>
                        <input type="submit" id="submit" value="Sign In">
                    </p>
                    <!--<a style="text-decoration: none" href="home.html">Sign In</a>-->
                    </form>
                    </main>
                <footer class="signup-footer">
                    <p>New to Max Electronics? <a href="signup.jsp">Create an account</a></p>
                    </footer>
            </div>
        </div>
	<%@include file="/includes/footer.jsp"%>

   
</body>
</html>
