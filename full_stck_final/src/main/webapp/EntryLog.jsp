<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Fitness Tracker</title>
<link rel="stylesheet" href="dash.css">
</head>
<body>
  <div class="container">
    <h1>Fitness Tracker</h1>
    <form action="entryLog"  method="post">
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="form-group">
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>
      </div>
      <div class="form-group">
        <label for="workoutType">Workout Type:</label>
        <select id="workoutType" name="workoutType" required>
          <option value="">-- Select Type --</option>
          <option value="Cardio">Cardio</option>
          <option value="Strength Training">Strength Training</option>
          <option value="Yoga">Yoga</option>
          <option value="Other">Other</option>
        </select>
      </div>
      <div class="form-group">
        <label for="duration">Duration (in minutes):</label>
        <input type="number" id="duration" name="duration" required>
      </div>
      <div class="form-group">
        <label for="caloriesBurned">Calories Burned:</label>
        <input type="number" id="caloriesBurned" name="caloriesBurned" required>
      </div>
      <div class="form-group">
        <label for="notes">Notes (optional):</label>
        <textarea id="notes" name="notes" rows="4"></textarea>
      </div>
      <div class="submit-button">
        <button type="submit">Record Entry</button>
      </div>
    </form>
    <div class="view-data-link">
    <button>
      <a href="Viewhistory.jsp">View All Entries</a>
    </button></div>
  </div>
</body>
</html>