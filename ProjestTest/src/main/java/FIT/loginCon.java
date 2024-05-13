package FIT;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginCon")
public class loginCon extends HttpServlet {

  // Replace with your actual database connection details
  private static final String DB_URL = "jdbc:mysql://localhost:3306/project"; // Update with your database URL
  private static final String DB_USER = "MaddyXVI"; // Update with your database username
  private static final String DB_PASSWORD = "Mohammad@786"; // Update with your database password

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    PrintWriter out = response.getWriter();
    response.setContentType("text/html");

    try (Connection connection = getConnection()) {
      if (validateUser(connection, username, password)) {
        // Login successful, redirect to dashboard and display user details
        response.sendRedirect("dashboard.jsp");
      } else {
        out.println("<script>");
        // Check if username doesn't exist
        if (!userExists(connection, username)) {
          out.println("alert('Username does not exist. Please register first.');");
          out.println("window.location.href = 'Register.jsp';"); // Redirect to registration
        } else {
          out.println("alert('Invalid password. Please try again.');");
        }
        out.println("</script>");
      }
    } catch (SQLException e) {
      // Handle database connection errors
      e.printStackTrace();
      out.println("<script>");
      out.println("alert('An error occurred. Please try again later.');");
      out.println("</script>");
    }
  }

  private Connection getConnection() throws SQLException {
    // Get database connection
    return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
  }

  private boolean validateUser(Connection connection, String username, String password) throws SQLException {
    String sql = "SELECT * FROM userregistration WHERE username = ? AND password = ?"; // Update with your table and column names
    try (PreparedStatement ps = connection.prepareStatement(sql)) {
      ps.setString(1, username);
      ps.setString(2, password);
      ResultSet rs = ps.executeQuery();
      return rs.next(); // Check if a record is found
    }
  }

  private boolean userExists(Connection connection, String username) throws SQLException {
    String sql = "SELECT * FROM userregistration WHERE username = ?"; // Update with your table and column names
    try (PreparedStatement ps = connection.prepareStatement(sql)) {
      ps.setString(1, username);
      ResultSet rs = ps.executeQuery();
      return rs.next(); // Check if a record is found
    }
  }
}
