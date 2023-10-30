
import dao.UserDao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Connection conn = UserDao.getConnection();
            String sql = "{CALL deleteById(?)}";
            CallableStatement cstmt = conn.prepareCall(sql);
            cstmt.setInt(1, id);
            cstmt.executeUpdate();
            cstmt.close();
            conn.close();
            String message = "Product deleted successfully";
            request.setAttribute("message", message);
            request.getRequestDispatcher("delete.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
