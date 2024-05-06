<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Fitness App - Nutrition Plans</title>
<style>
body {
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background-image: url("https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"); /* Replace with your background image path */
  background-size: cover; /* Stretch image to fill container */
  background-attachment: fixed; /* Keep background image in place while scrolling */
  background-position: center; /* Center image horizontally and vertically */
  min-height: 100vh; /* Ensure full viewport height */
  background-color: #f0f0f0; /* Light background color */
  box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1);
}

.container {
  display: grid;
  grid-template-rows: auto 1fr auto; /* Adjust as needed */
  color: #333;
  position: relative;
  /* Additional styles for a shadow box effect */
  margin: 20px auto; /* Add margin for better centering */
  max-width: 1000px; /* Set a maximum width */
  background-color: #fff; /* White background */
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Shadow around the container */
  border-radius: 5px; /* Rounded corners */
}


.main {
  padding: 20px;
}

.meal-plans {
  display: flex;
  flex-wrap: wrap; /* Allow cards to wrap on smaller screens */
  justify-content: space-around; /* Distribute cards evenly */
  margin: 0 auto; /* Center content horizontally within the main section */
  /* Optional height for consistent plan card area: */
  height: 400px; /* Adjust as needed */
}

.plan-card {
  width: 300px; /* Adjust width as needed */
  background-color: #fff; /* White card background */
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Shadow effect */
  border-radius: 5px; /* Rounded corners */
  margin: 10px;
  transition: all 0.3s;
  position: relative; /* Enables image background positioning */
  overflow: hidden; /* Ensures image doesn't overflow the card */
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Adjust shadow as needed */
}

.plan-card img {
  width: 100%; /* Stretch image to fill card (background) */
  height: 100%; /* Maintain aspect ratio */
  object-fit: cover; /* Cover the entire card area */
  position: absolute; /* Layers image behind content */
  top: 0;
  left: 0;
  opacity: 1; /* Set image opacity for better text visibility */
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1); /* Shadow for depth */
}

.plan-card:hover .plan-card img {
  opacity: 1; /* Increase opacity on hover for a subtle highlight */
  box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2); /* Increase shadow on hover */
}

.plan-card .plan-card-content {
  padding: 20px; /* Padding for content within the card */
  color: #333; /* Dark text color */
  text-align: center; /* Center text within the card */
}

/* Hover effect with vibrant background (optional): */
.plan-card:hover .plan-card-content {
  background-color: rgba(255, 165, 0, 0.8); /* Vibrant orange overlay on hover */
  color: #fff; /* White text for better contrast on hover */
}

/* Adjust header and main content positioning if needed: */
header,
.main {
  z-index: 1; /* Ensure content appears on top of the overlay (optional) */
}
.plan-card p {
  position: absolute; /* Enables absolute positioning */
  bottom: 10px; /* Adjust vertical position from the bottom */
  left: 10px;  /* Adjust horizontal position from the left */
  margin: 0;  /* Remove default margin */
  padding: 5px 10px; /* Add padding for content */
  background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background (optional) */
  color: #fff; /* White text color */
}
header {
  display: flex; /* Maintain flexbox for alignment */
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 20px;
  background-color: rgba(255, 255, 255, 0.8); /* Adjust opacity as needed */
  border-radius: 5px;
}
.nutrients {
  background-color: #f5f5f5;
  padding: 20px;
  border-radius: 5px;
  margin-top: 20px;
}
.choose {
  text-align: center; /* Center text alignment */
  font-style: italic; /* Italic font style */
  color: #333; /* Dark text color (adjustable) */
  /* Additional styles for a nice look */
  font-weight: bold; /* Bold font weight */
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2); /* Subtle text shadow */
  /* Optional styles for further enhancement */
  /* border-bottom: 1px dotted #ccc;  */  /* Add an underline (uncomment to use) */
  /* padding: 5px 10px;  */             /* Add some padding (uncomment to use) */
}
</style>
</head>
<body>
  <div class="container">
    <header>
    <center>
      <h1>Nutrition Plans</h1>
      <p>Fuel your body and mind with our personalized plans. Achieve your fitness goals with our balanced and delicious meal options.</p>
    </center></header>
    <main>
      <section class="meal-plans">
        <article class="plan-card">
  <a href="register2.jsp"><img src="https://images.pexels.com/photos/144432/pexels-photo-144432.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Weight Gain Meal Plan" />
  
  </a>
  <p><strong>Weight gain Meal:</strong><br>	Build muscle and increase strength. Calorie-dense, protein-rich. Perfect for athletes and fitness enthusiasts looking to bulk up.</p>
</article>

        <article class="plan-card">
          <a href="register2.jsp">
            <img src="https://images.pexels.com/photos/1437270/pexels-photo-1437270.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load" alt="Weight Loss Meal Plan" />
            <h2>Weight Loss Meal Plan</h2>
          </a>
          <p><strong><emp>Weight Loss Meal Plan:</emp></strong><br>Reach your weight loss goals. Portion-controlled, nutrient-rich. Learn healthy eating habits and shed pounds effectively.</p>
        </article>
        <article class="plan-card">
          <a href="register2.jsp">
            <img src="https://images.pexels.com/photos/1410235/pexels-photo-1410235.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Energy Diet Meal Plan" />
          </a>
          <p><strong><emp>Energy Diet Meal Plan:</emp></strong><br>Boost energy levels and improve overall health. Balanced plan focused on sustained energy.</p>
        </article>
      </section>
      <section class="choose">Choose your Plan</section>
      <section class="nutrients">
        <h2>Why are Nutrients Important?</h2>
        <p>
          Nutrients are essential for proper body function. They provide energy, build and repair tissues, and regulate bodily processes. A balanced diet rich in various nutrients is crucial for optimal health and fitness. 
          Here's a brief overview of the main nutrient groups:
        </p>
        <ul>
          <li>Carbohydrates: Provide energy for your body.</li>
          <li>Proteins: Build and repair tissues, muscles, and bones.</li>
          <li>Fats: Provide energy, support cell growth, and aid in vitamin absorption.</li>
          <li>Vitamins and Minerals: Essential for various bodily functions and overall health.</li>
        </ul>
        <p>Consult a registered dietitian or nutritionist for personalized dietary advice tailored to your specific needs and goals.</p>
      </section>
    </main>
  </div>
</body>
</html>
