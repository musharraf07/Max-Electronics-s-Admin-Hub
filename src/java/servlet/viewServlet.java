import dao.UserDao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/viewServlet")
public class viewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            Connection conn = UserDao.getConnection();
            String sql = "{CALL getAllProducts()}";
            CallableStatement cstmt = conn.prepareCall(sql);
            ResultSet rs = cstmt.executeQuery();

            // Set the result set as an attribute in the request
            request.setAttribute("resultSet", rs);

            // Forward the request to the view.jsp page
            request.getRequestDispatcher("view.jsp").forward(request, response);

            rs.close();
            cstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            // Handle any errors or exceptions
        }
    }
}
