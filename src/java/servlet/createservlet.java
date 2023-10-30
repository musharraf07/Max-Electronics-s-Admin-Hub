package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;

@WebServlet(name = "createservlet", urlPatterns = {"/createservlet"})
public class createservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
            String productname = request.getParameter("productname");
            String category = request.getParameter("category");
            int price = Integer.parseInt(request.getParameter("price"));
            int stockquantity = Integer.parseInt(request.getParameter("stockquantity"));
        try {
            Connection conn = UserDao.getConnection();
            CallableStatement cstmt = null;
            String sql = "{CALL createproduct(?, ?, ?, ?)}";
            cstmt = conn.prepareCall(sql);
            cstmt.setString(1, productname);
            cstmt.setString(2, category);
            cstmt.setInt(3, price);
            cstmt.setInt(4, stockquantity);
            int result = cstmt.executeUpdate();
            
            if (result > 0) {
                request.setAttribute("message", "Product created successfully");
            } else {
                request.setAttribute("message", "Invalid ID or character");
            }
            
            cstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("message", "Error: " + e.getMessage());
        }
        
        
        request.getRequestDispatcher("/create.jsp").forward(request, response);
    }
}
