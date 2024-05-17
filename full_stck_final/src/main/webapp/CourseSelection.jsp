<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Beginner's Workout Plan</title>
  <link rel="stylesheet" href="sel.css">
</head>
<body class="workout-page">
<%@ include file='nav.html'%>
  <div class="container">
    <div class="left-side">
     <img src="https://images.pexels.com/photos/2827392/pexels-photo-2827392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Text description of the workout plan image" class="course-image">
      <div class="registration">
        <h2>Beginner's Workout Plan</h2>
        <p>
           This course provides a detailed guide to creating a basic workout plan. <br>It helps you understand the fundamentals of fitness and guides you through exercises <br>that can be easily incorporated into your routine.<br> By taking this course, you'll gain the knowledge and confidence to embark on your<br> fitness journey.
        </p>
        <a href="Register.jsp"><button type="button">Register Now</button></a>
        <p><strong>Pricing:</strong> $47.00 (USD)</p>
      </div>
    </div>

    <div class="content-wrapper">
      <div class="benefit-container">
        <h3>Benefits for Beginners:</h3>
        <ul class="benefit-list">
          <li>Improved Strength and Stamina.</li>
          <li>Weight Management.</li>
          <li>Enhanced Flexibility and Mobility.</li>
          <li>Stress Reduction and Improved Mood.</li>
        </ul>
      </div>

      <div class="workout-container">
        <h3>Sample Listed Workouts:</h3>
        <ul class="workout-list">
          <li>Cardio (30 minutes).</li>
          <li>Strength Training (upper body) - 3 sets of 10-12 repetitions.</li>
          <li>Strength Training (lower body) - 3 sets of 10-12 repetitions.</li>
          <li>Core Exercises - 3 sets of 15-20 repetitions.</li>
          <li>Stretching (10 minutes).</li>
        </ul>
      </div>
    </div>
  </div>
</body>
</html>
