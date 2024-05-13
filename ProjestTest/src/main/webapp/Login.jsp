<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Fitness App Login</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
  <div class="login-container">
    <h1><span class="fit">Fit</span><span class="ness">ness</span> App</h1>
    <form action=loginCon method=post id="login-form">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" required>
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>
      <button type="submit">Login</button>
      <span id="error-message"></span>
      <p>Don't have an account? <a href="Register.jsp">Register Here</a></p>
    </form>
  </div>

 </body>
</html>
