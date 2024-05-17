	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	  <title>Workout Plans</title>
	<link rel="stylesheet" href="workout.css">
	</head>
	<body>
	<%@ include file='nav.html'%>
	  <div>
	  <center>
	  <h1 class="page-title">Workout Plans</h1>
	    </center>
	    </div>
	  <div class="container">
	    <div class="card">
	      <a href="Fitness.jsp"><img src="https://images.pexels.com/photos/1954524/pexels-photo-1954524.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Beginner Workout Plan"></a>
	      <h2>Beginner</h2>
	      <p>
	        Get started on your fitness journey with our beginner-friendly workout plan. This program is designed to ease you into exercise and build a strong foundation for future progress. 
	        <P class="benefit">**Benefits:**<P>
	        <ul>
	          <li>Improve cardiovascular health</li>
	          <li>Increase muscle strength and endurance</li>
	          <li>Boost metabolism and energy levels</li>
	          <li>Build confidence and motivation</li>
	        </ul>
	      </p>
	      <a href="CourseSelection.jsp"><button class="enroll-btn">View Pricing</button></a>
	    </div>
	
	    <div class="card">
	      <a href="Fitness.jsp"><img src="https://images.pexels.com/photos/2261484/pexels-photo-2261484.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Intermediate Workout Plan"></a>
	      <h2>Intermediate</h2>
	      <p>
	        Challenge yourself with our intermediate workout plan. This program is designed to push you further and help you reach your next fitness goals.
	         
	        <p class="benefit">**Benefits:**</p>
	        <ul>
	          <li>Build upon your existing foundation</li>
	          <li>Increase strength, endurance, and power</li>
	          <li>Improve body composition (muscle definition and fat loss)</li>
	          <li>Enhance athletic performance (if applicable)</li>
	        </ul>
	      </p>
	      <a href="CourseSelection2.jsp"><button class="enroll-btn">View Pricing</button></a>
	    </div>
	
	    <div class="card">
	      <a href="Fitness.jsp"><img src="https://images.pexels.com/photos/13679977/pexels-photo-13679977.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Advanced Workout Plan"></a>
	      <h2>Advanced</h2>
	      <p>
	        Take your fitness to the next level with our advanced workout plan. This program is designed for experienced athletes who are looking for a serious challenge. 
	        <P class="benefit">**Benefits:**</P>
	        <ul>
	          <li>Maximize strength, endurance, and power gains</li>
	          <li>Improve skills for specific athletic disciplines</li>
	          <li>Push your limits and achieve peak performance</li>
	          <li>Experience a sense of accomplishment and self-mastery</li>
	        </ul>
	      </p>
	      <a href="CourseSelection3.jsp"><button class="enroll-btn">View Pricing</button></a>
	    </div>
	  </div>
	  <div>
	  <Center>
	  <a href="index.jsp"><button class="enroll-btn">Back</button></a>
	  </Center></div>
	</body>
	<script>
	//Select the root element to access the --hue variable
	const root = document.documentElement;
	
	// Function to update the hue value and set the border color
	function updateHue(newHue) {
	  root.style.setProperty('--hue', newHue); // Set the --hue variable dynamically
	}
	
	// Example usage: Change the hue value every second (can be customized for user interaction)
	setInterval(() => {
	  let currentHue = parseInt(getComputedStyle(root).getPropertyValue('--hue'));
	  currentHue = (currentHue + 1) % 360; // Update hue value (0 to 359) and loop back to 0
	  updateHue(currentHue);
	}, 1000); // Update every 1 second
	</script>
	</html>