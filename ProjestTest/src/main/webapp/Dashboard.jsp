<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Yoga Website Dashboard</title>
<link rel="stylesheet" href="dashboard.css"> </head>
<body>

<div class="container">  <header>  <h1>Welcome, ${user.fullName}!</h1>  </header>

  <nav>  <ul>
      <li><a href="#">Log Workout Entry</a></li>
      <li><a href="#">Show All Past Entries</a></li>
      <li><a href="#">Shop</a></li>
      <li><a href="#">Edit Profile</a></li>
    </ul>
  </nav>
    <main>  <div class="profile-info">
     	 <p>Username: ${user.username}</p>
      <p>Phone Number: ${user.phoneNumber}</p>
      <p>Date of Birth: ${user.dateOfBirth}</p>  </div>
    
    <div class="buttons">
  <button id="logWorkout">Log Workout Entry</button>
  <button id="showAllEntries">Show All Past Entries</button>
</div>
  </main>

</div>

</body>
<script>
document.getElementById("logWorkout").addEventListener("click", function() {
  window.location.href = "EntryLog.jsp";
});

document.getElementById("showAllEntries").addEventListener("click", function() {
  window.location.href = "ViewHistory.jsp";
});
</script>
</html>
