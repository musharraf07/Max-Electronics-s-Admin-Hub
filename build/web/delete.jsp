<%-- 
    Document   : delete
    Created on : 31 Aug, 2023, 2:54:53 PM
    Author     : Mdafzal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="/includes/head.jsp"%>
    </head>
    
       
       
       <style>
        body {
            background: linear-gradient(to right, #00aaff, #00ff6c);
        }


        .card {
            width: 100%;
            max-width: 540px;
            background: white;
            margin-top: 20px;
            margin: 50px auto 20px;
            margin:2px auto;
            padding: 40px 30px 10px;
            border-radius: 10px;
            border: none;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: rgb(0,171,252);
            color: white;
            border-radius: 10px 10px 0 0;
            font-size: 1.5rem;
            text-align: center;
            padding: 20px;
        }

        .form-label {
            font-weight: bold;
        }

        .form-control {
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 10px;
        }

        .btn-primary {
            background-color: blue;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .alert {
            margin-top: 15px;
            text-align: center;
            border-radius: 5px;
            display: none;
        }
        .btn-primary {
            border: none;
            outline: none;
            padding: 16px 40px;
            background: linear-gradient(to right, #00aaff, #00ff6c);
            color: #313131;
            font-size: 20px;
            cursor: pointer;
            border-radius: 40px;
            margin-top: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .btn-primary:hover {
            background: linear-gradient(to right, #00ff6c, #00aaff);
        }
    </style>
    
<body>
    <%@include file="/includes/navbar.jsp"%>
    <div class="container">
        <div class="card">
            <div class="card-header">
                Delete Product
            </div>
            <div class="card-body">
                <form method="Post" action="DeleteServlet">
                    <div class="form-group">
                        <label class="form-label" for="id"> Enter Product Id:</label>
                        <input type="number" class="form-control" name="id" required>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Delete</button>
                </form>
            </div>
            <div class="alert alert-info" id="alertmessage">
                ${message}
            </div>
        </div>
    </div>
    <script>
        // JavaScript to show the alert if there's a message
        const alertMessage = document.getElementById('alertmessage');
        if (alertmessage.textContent.trim() !== '') {
            alertmessage.style.display = 'block';
        }
    </script>
       <%@include file="/includes/footer.jsp"%>
    </body>
</html>
