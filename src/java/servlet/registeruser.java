
package servlet;

import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/registeruser")
public class registeruser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("fullname");
            String email = request.getParameter("email");
            String password = request.getParameter("passsword");
            RequestDispatcher dispatcher = null; 
            Connection conn = null;
            try{
            conn = UserDao.getConnection();
            String sql = "{CALL registerUser(?, ?, ?)}";
            CallableStatement cstmt = conn.prepareCall(sql);
            cstmt.setString(1, name);
            cstmt.setString(2, email);
            cstmt.setString(3, password);
          
            int Result=cstmt.executeUpdate();
               dispatcher = request.getRequestDispatcher("login.jsp");
               if(Result > 0){
                   request.setAttribute("status","success");
               }
               else{
                   request.setAttribute("status","failed");
               }
               dispatcher.forward(request,response);  
            }
            catch(Exception e){
                out.println(e);   
            }
        }
    }
}
        
    

