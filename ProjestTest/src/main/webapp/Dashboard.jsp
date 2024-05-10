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
      <img src="${user.profileImage}" alt="Profile Picture" width="150" height="150">  <p>Username: ${user.username}</p>
      <p>Phone Number: ${user.phoneNumber}</p>
      <p>Date of Birth: ${user.dateOfBirth}</p>  </div>
    
    <div class="buttons">
      <button>Log Workout Entry</button>  <button>Show All Past Entries</button>
    </div>
  </main>

</div>

</body>
</html>
