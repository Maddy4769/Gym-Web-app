<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <link rel="stylesheet" href="register.css">
  </head>
<body>
  <video autoplay muted loop>
  <source src="https://videos.pexels.com/video-files/9669050/9669050-hd_1920_1080_25fps.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>
  <div class="registration-container"> <form action="process_registration.jsp" method="post">
      <h1>Registration Form</h1>
      <div class="form-group">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required>
      </div>
      <div class="form-group">
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required>
      </div>
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone"   required> </div>
      <div class="form-group">
        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required>
      </div>
      <div class="form-group">
        <label for="planType">Workout Type:</label>
        <select id="planType" name="planType" required>
          <option value="">-- Select a Plan --</option>
          <option value="basic">Basic Plan</option>
          <option value="premium">Premium Plan</option>
          <option value="pro">Pro Plan</option>
        </select>
      </div>
      <div class="form-group">
        <label for="planType">Nutrition Plan</label>
        <select id="planType" name="planType" required>
          <option value="">-- Select a Plan --</option>
          <option value="loss">Weight Loss</option>
          <option value="gain">Weight gain</option>
          <option value="energy">Energy Diet</option>
        </select>
      </div>
      <div class="form-group">
        <label for="planType">Yoga Plan </label>
        <select id="planType" name="planType" required>
          <option value="">-- Select a Plan --</option>
          <option value="standard">Basic Plan</option>
          <option value="prime">Premium Plan</option>
          <option value="pro">Pro Plan</option>
        </select>
      </div>
      <div class="form-group">
        <button type="submit">Register Now!</button>
      </div>
    </form>
  </div>
</body>
</html>
