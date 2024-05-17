<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Fitness App - Nutrition Plans</title>
<link rel="stylesheet" href="nut.css">
</head>
<body>
<%@ include file='nav.html'%>
  <div class="container" bgcolor=#96A8AE>
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
