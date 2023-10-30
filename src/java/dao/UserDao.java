package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class UserDao {

    private static final String URL = "jdbc:mysql://localhost:3308/adbms";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root75";

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
        }
        return connection;
    }
}
