<%-- 
    Document   : signup
    Created on : Dec 15, 2022, 11:25:04 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sign up</title>
        <link rel="stylesheet" href="mush.css">
        
        
    </head>
    <body>
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <div class="outer-box">
            <div class="inner-box">
            <header class ="signup-header">
                <h1>Sign Up</h1>
                <p>It just takes few seconds</p>
            </header>
            <main class="signup-body">
                <form action="registeruser" method="Post">
                    <p>
                        <label for="fullname">Full name</label>
                        <input type="text" name="fullname"  required>
                    </p>
                    <p>
                        <label for="email">Your Email</label>
                        <input type="email" name="email"  required>
                    </p>
                    <p>
                        <label for="password">Password</label>
                        <input type="password" name="passsword"  required>
                    </p>
                    
                    <p>
                        <input type="submit" id="submit" value="Create Acount">
                    </p>
                    
                    </form>
                    </main>
                    <footer class="signup-footer">
                    <p>Already have an Account? <a href="login.jsp">Sign In</a></p>
                    </footer>
            </div>
        </div>
        <script src ="vendor/jquery/jquery.min.js"></script>
        <script> src = "main.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
        <script type="text/javascrit">
            var status=document.getElementById("status").value;
            if(status=="success"){
                swal("Congracts","Account Created","success")
            }
        </script>
        
        
    
        
    </body>
</html>

