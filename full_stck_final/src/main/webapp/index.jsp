<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fitness App</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<nav>
  <ul class="nav-list">
  <li><a href="Index.jsp">Home</a></li>
  <li><a href="dashboard.jsp">Dashboard</a></li>
  <li><a href="#">Pricing</a></li>
  <li><a href="Guide.jsp">Guide</a></li>
  <li><a href="#">Contact</a></li>
  <li> <p class="heading">Fitness App</p></li>
  <li class="search-container">
  
</li>
<div class="search-left">
<form action="#">
    <input type="text" placeholder="Search..." />
    <button type="submit"><i class="fas fa-search"></i></button>
  </form></div>
</ul>


<div class="logo">
   </div>

</nav>
  
  <div class="content-container">
    <div class="card">
        <a href="Workout.jsp">
        <p></p>
          <img src="https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Workouts" />
        </a>
        <h2>Workout</h2>
        <p>
          Get fit and healthy with our comprehensive workout plans. We offer a variety of programs to suit your fitness level and goals. Here are some key benefits:
          <ul>
            <li>Improve cardiovascular health</li>
            <li>Build muscle strength and endurance</li>
            <li>Boost your metabolism</li>
            <li>Increase energy levels</li>
            <li>Improve mood and overall well-being</li>
          </ul>
        </p>
      </div>

      <div class="card">
        <a href="nutrition.jsp">
        <p></p>
          <img src="https://images.pexels.com/photos/5591663/pexels-photo-5591663.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Nutrition" />
        </a>
        <h2>Nutrition</h2>
        <p>
          Fuel your body and mind with our personalized nutrition plans. Learn how to eat right for your health and fitness goals. Discover the importance of:
          <ul>
            <li>Eating a balanced diet</li>
            <li>Choosing nutrient-rich foods</li>
            <li>Understanding portion control</li>
            <li>Staying hydrated</li>
            <li>Making healthy food choices</li>
          </ul>
        </p>
      </div>

      <div class="card">
        <a href="Yoga.jsp">
        <p></p>
          <img src="https://images.pexels.com/photos/3094230/pexels-photo-3094230.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Yoga" />
        </a>
        <h2>Yoga</h2>
        <p>
          Find inner peace and improve your flexibility with our yoga routines. Yoga offers numerous benefits for both your body and mind, including:
          <ul>
            <li>Increased flexibility and range of motion</li>
            <li>Improved strength and balance</li>
            <li>Stress reduction and relaxation</li>
            <li>Enhanced breathing and circulation</li>
            <li>Greater self-awareness and mindfulness</li>
          </ul>
        </p>
      </div>
  </div>
  <!-- HTML !-->



  <div class=" button-container" style="display: flex">
      <!-- Buttons to go to different pages -->
      <form action="Shop.jsp" method="get">
        <button class="button-86" role="button">Shop</button>
      </form>
      <form action="registration.jsp" method="get">
        <button class="button-86" role="button">Enroll</button>
      </form>
        <form action="goals.jsp" method="get">
      <button class="button-86" role="button">Feedback</button>
      </form>
        <form action="goals.jsp" method="get">
       <button class="button-86" role="button">Services</button>
      </form>
        <form action="goals.jsp" method="get">
        <button class="button-86" role="button">FAQ</button>
      </form>
    </div>
 </body>
 </html>   