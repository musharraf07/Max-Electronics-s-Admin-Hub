
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDao;
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String productname = request.getParameter("productname");
            String category = request.getParameter("category");
            int price = Integer.parseInt(request.getParameter("price"));
            int stockquantity = Integer.parseInt(request.getParameter("stockquantity"));

            Connection conn = UserDao.getConnection();
            String sql = "{CALL UpdateProduct(?, ?, ?, ?,?)}";
            CallableStatement cstmt = conn.prepareCall(sql);
            cstmt.setInt(1, id);
            cstmt.setString(2, productname);
            cstmt.setString(3, category);
            cstmt.setInt(4, price);
            cstmt.setInt(5, stockquantity);
            int rowsUpdated = cstmt.executeUpdate();
            cstmt.close();
            conn.close();

            if (rowsUpdated > 0) {
                request.setAttribute("message", "Product details update successfully");
            } else {
                request.setAttribute("message", "Update failed");
            }

            request.getRequestDispatcher("update.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "An error occurred");
            request.getRequestDispatcher("update.jsp").forward(request, response);
        }
    }
}
