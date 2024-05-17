package FIT;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
/**
 * Servlet implementation class insertEntry
 */
public class insertEntry extends fit.HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");
         PrintWriter out = response.getWriter();	
	
		  // Replace these with your actual database connection details
		  String jdbcURL = "jdbc:mysql://localhost:3306/project";
		  String username = "MaddyXVI";
		  String password = "Mohammad@786";

		  try {
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection connection = DriverManager.getConnection(jdbcURL, username, password);

		    String date = request.getParameter("date");
		    String workoutType = request.getParameter("workoutType");
		    int duration = Integer.parseInt(request.getParameter("duration"));
		    int caloriesBurned = Integer.parseInt(request.getParameter("caloriesBurned"));
		    String notes = request.getParameter("notes");
		    String username1 = request.getParameter("username");

		    String sql = "INSERT INTO fitness_data (date, workout_type, duration, calories_burned, notes,username) VALUES (?, ?, ?, ?, ?,?)";
		    PreparedStatement preparedStatement = connection.prepareStatement(sql);
		    preparedStatement.setString(1, date);
		    preparedStatement.setString(2, workoutType);
		    preparedStatement.setInt(3, duration);
		    preparedStatement.setInt(4, caloriesBurned);
		    preparedStatement.setString(5, notes);
		    preparedStatement.setString(6,username1);
		    preparedStatement.executeUpdate();
		    
		    preparedStatement.close();
		    connection.close();
		    out.println("Inserted successfully");
		    

		  } catch (Exception e) {
		    e.printStackTrace();
		    out.println(e);
		    out.println("<p>Error recording data!</p>");
		  }


	}

}
