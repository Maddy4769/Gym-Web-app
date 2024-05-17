package FIT;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcessRegistrationServlet
 */

public class UserRegistration extends HttpServlet {
    private static final long serialVersionUID = 1L;

   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegistration() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password"); // Hash password before storing (see note)
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        String workoutPlan = request.getParameter("planType");
        String nutritionPlan = request.getParameter("planType");
        String yogaPlan = request.getParameter("planType");

        // Connect to the database
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            // Replace with your MySQL JDBC Driver
            Class.forName("com.mysql.jdbc.Driver"); 
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");

            // Prepare the SQL statement with placeholders
            String sql = "INSERT INTO userregistration (full_name, username, email, password, phone_number, dob, workout_plan, nutrition_plan, yoga_plan) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, firstName); // Combine first and last name
            preparedStatement.setString(2, lastName); // Assuming username is same as last name (modify if needed)
            preparedStatement.setString(3, email);

            // Hash password before storing in database (**IMPORTANT SECURITY STEP**)
            // You'll need to implement password hashing using a secure hashing algorithm like BCrypt
            // preparedStatement.setString(4, password); // Replace with hashed password

            // Placeholder for hashed password (security risk, replace with hashing)
            preparedStatement.setString(4, password); 

            preparedStatement.setString(5, phone);
            preparedStatement.setString(6, dob);
            preparedStatement.setString(7, workoutPlan);
            preparedStatement.setString(8, nutritionPlan);
            preparedStatement.setString(9, yogaPlan);

            // Execute the update query
            preparedStatement.executeUpdate();

            // Send a success message to the user (optional)
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html>");
            out.println("<body>");
            out.println("<h3>Registration Successful!</h3>");
            out.println("<p>You have been registered to our website.</p>");
            out.println("</body>");
            out.println("</html>");

        } catch (Exception e) {
            e.printStackTrace();
           
           
            
            // Handle errors appropriately, e.g., redirect to an error page with a message
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println(e);
            
            out.println("<html>");
            out.println("<body>");
            out.println("<h3>Error during registration!</h3>");
            out.println("<p>An error occurred while processing your registration. Please try again later.</p>");
            out.println("</body>");
            out.println("</html>");
            
        } finally {
        	try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            	}
        	catch (Exception e) {
        		return;
        		
        	}
        }
        }
    }
