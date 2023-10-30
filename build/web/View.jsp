
<%@page import="dao.UserDao"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="/includes/head.jsp"%>
        <style>
        body {
            background: linear-gradient(to right, #00aaff, #00ff6c);
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .table {
            width: 100%;
            max-width: 540px;
            background: white;
            margin-top: 20px;
            margin: 50px auto 20px;
            margin:2px auto;
            padding: 40px 30px 10px;
            border-radius: 10px;
            border: none;
         
        }
        .card-header {
            background-color: rgb(0,171,252);
            color: white;
            border-radius: 10px 10px 0 0;
            font-size: 1.5rem;
            text-align: center;
            padding: 20px;
        }
        .table-body{
            font-size: 16px;
            color: #313131;
            font-weight: 500;
        }
        </style>
    </head>
    <body>
        <%@include file="/includes/navbar.jsp"%>
        <table class="table table-bordered">
        <thead class="card-header">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Category </th>
                <th>Price</th>
                <th>Stock</th>
            </tr>
        </thead>
        <tbody class="table-body">
            <%
                
                try {
                    Connection conn = UserDao.getConnection();
                    String sql = "{CALL getAllProducts()}";
                    CallableStatement cstmt = conn.prepareCall(sql);
                    ResultSet rs = cstmt.executeQuery();

                    while (rs.next()) {
                        int id = rs.getInt("id");
                        String name = rs.getString("name");
                        String category = rs.getString("category");
                        double price = rs.getDouble("price");
                        double stock_quantity = rs.getDouble("stock_quantity");

                        out.println("<tr>");
                        out.println("<td>" + id + "</td>");
                        out.println("<td>" + name + "</td>");
                        out.println("<td>" + category + "</td>");
                        out.println("<td>" + price + "</td>");
                        out.println("<td>" + stock_quantity + "</td>");
                        out.println("</tr>");
                    }

                    rs.close();
                    cstmt.close();
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    
                }
            %>
        </tbody>
    </table>
        <%@include file="/includes/footer.jsp"%>
    </body>
</html>
