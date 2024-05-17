<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title> Dashboard</title>
<link rel="stylesheet" href="Dashboard.css"> </head>
<body>

<%
// Retrieve user object from session (replace with your actual logic)
//User user = (User) session.getAttribute("user");

// Connect to the database (replace with your connection details)
//String url = "jdbc:mysql://localhost:3306/your_database_name";
//String username = "your_username";
//String password = "your_password";
//Connection connection = null;

//try {
  //Class.forName("com.mysql.jdbc.Driver");
  //connection = DriverManager.getConnection(url, username, password);
  
  // Prepare SQL statement to retrieve user data based on username
  //String sql = "SELECT * FROM users WHERE username = ?";
  //PreparedStatement statement = connection.prepareStatement(sql);
  //statement.setString(1, user.getUsername()); // Set username parameter
  
  // Execute the query and get the result
  //ResultSet resultSet = statement.executeQuery();
  
  //if (resultSet.next()) {
    //user.setUsername(resultSet.getString("username"));
    //user.setFullName(resultSet.getString("full_name"));
    //user.setPhoneNumber(resultSet.getString("phone_number"));
    //user.setDateOfBirth(resultSet.getString("date_of_birth"));
  //} else {
    // Handle case where user data is not found (e.g., display error message)
    //out.println("Error: User data not found in the database.");
  //}
  
  //resultSet.close();
  //statement.close();
//} catch (ClassNotFoundException | SQLException e) {
  //e.printStackTrace();
  // Handle database connection errors
//} finally {
  //if (connection != null) {
    //try {
    //  connection.close();
    //} catch (SQLException e) {
      //e.printStackTrace();
    //}
  //}
//}
%>

<div class="container">  <header>  <h1>Welcome</h1>  </header>

  <nav>  <ul>
      <li><a href="index.jsp">Home</a></li>
      <li><a href="Guide.jsp">Guide</a></li>
      <li><a href="Shop.jsp">Shop</a></li>
      <li><a href="#">Edit Profile</a></li>
    </ul>
  </nav>
    <main>  <div class="profile-info">
     	 <p>Username: MaddyXVI</p>
      <p>Phone Number:8600834627</p>
      <p>Date of Birth: 16-06-2002</p>  </div>
    
    <div class="buttons">
  <button id="logWorkout" href="EntryLog.jsp">Log Workout Entry</button>
  <button id="showAllEntries" href=viewpast.jsp>Show All Past Entries</button>
</div>
  </main>

</div>

</body>
<script>
document.getElementById("logWorkout").addEventListener("click", function() {
  window.location.href = "EntryLog.jsp";
});

document.getElementById("showAllEntries").addEventListener("click", function() {
  window.location.href = "Viewhistory.jsp";
});
</script>
</html>
