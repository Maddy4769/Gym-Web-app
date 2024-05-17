<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Frequently Asked Questions</title>
    <link rel="stylesheet" href="FAQ.css">

</head>
<body>
    <div class="container">
        <h1>Frequently Asked Questions</h1>

        <div class="faq-list">
            <div class="faq-item">
                <h3 class="faq-question">What is this webapp for?</h3>
                <div class="faq-answer">
                    <p>This webapp is designed to helps you track your fitness goals and activities, providing insights and motivation to stay on top of your health."</p>
                </div>
            </div>
            <div class="faq-item">
                <h3 class="faq-question">How do I get started?</h3>
                <div class="faq-answer hidden">
                    <p>Getting started is easy! Just follow these steps:
                        <ol>
                            <li>Create an account or sign in if you already have one.</li>
                            <li>Explore the features and functionalities available. We offer a variety of tools to help you **[mention a key functionality]**. For example, if your webapp helps with fitness tracking, you could say "We offer tools to track workouts, set goals, and monitor progress."</li>
                            <li>Refer to our tutorials or help guides if needed. We have comprehensive resources to guide you through the app's features.</li>
                        </ol>
                    </p>
                </div>
            </div>
            <div class="faq-item">
                <h3 class="faq-question">What are the benefits of using this webapp?</h3>
                <div class="faq-answer hidden">
                    <p>Using this webapp offers several benefits, including:
                        <ul>
                            <li>**Track your progress and stay motivated**: Monitor your workouts, set goals, and see your achievements over time. This can help you stay motivated and on track with your fitness journey.</li>
                            <li>**Log and analyze your workouts**: Track your workout details, including exercises, sets, reps, weight, and duration. Analyze your performance and identify areas for improvement.</li>
                            <li>**Connect with a fitness community**: Share your progress, get support from others, and find workout inspiration within our fitness community (if applicable).</li>
                            <li>**Access personalized workout plans**: Get personalized workout recommendations based on your fitness goals and preferences (if applicable).</li>
                            <li>**Learn about fitness and nutrition**: Access educational resources on various fitness topics and healthy eating habits.</li>
                        </ul>
                    </p>
                </div>
            </div>
            <div class="faq-item">
                <h3 class="faq-question">Is this webapp free to use?</h3>
                <div class="faq-answer hidden">
                    <p>The basic features of this webapp are free to use. We also offer premium plans with additional features for a small monthly fee.</p>
                </div>
            </div>
            <div class="faq-item">
                <h3 class="faq-question">What devices is this webapp compatible with?</h3>
                <div class="faq-answer hidden">
                    <p> We are constantly working on expanding compatibility to other devices.</p>
                </div>
            </div>
            <div class="faq-item">
                <h3 class="faq-question">How do I track my workouts using this app?</h3>
                <div class="faq-answer hidden">
                    <p>Tracking your workouts is easy! Simply navigate to the workout tracking section of the app. You can search for exercises or create custom workouts. Log your sets, reps, weight, and duration for each exercise. The app will automatically calculate your workout stats.</p>
                </div>
            </div>

</div>
</div>
</body>
<script>
const faqItems = document.querySelectorAll('.faq-item');

faqItems.forEach(faqItem => {
  const question = faqItem.querySelector('.faq-question');
  const answer = faqItem.querySelector('.faq-answer');

  question.addEventListener('click', function() {
    answer.classList.toggle('visible');
    faqItem.classList.toggle('active');


    if (answer.classList.contains('visible')) {
      const confettiElement = document.createElement('div');
      confettiElement.id = 'confetti-container';
      faqItem.appendChild(confettiElement);
      addConfetti(confettiElement);
    } else {
      const existingConfetti = document.getElementById('confetti-container');
      if (existingConfetti) {
        existingConfetti.remove();
      }
    }
  });
});
faqItems.forEach(faqItem => {
  const answer = faqItem.querySelector('.faq-answer');

  answer.addEventListener('transitionend', function() {
    if (answer.classList.contains('visible')) {
      answer.style.backgroundColor = "rgba(0, 0, 255, 0.1)";
    } else {
      answer.style.backgroundColor = "transparent"; 
    }
  });
});


function addConfetti(container) {
  const confettiSettings = {
    target: container,
    particleCount: 100,
    spread: 70,
    sizeMin: 4,
    sizeMax: 8,
    colors: ['#007bff', '#f0f8ff', '#3c4858'], // Adjust colors as needed
    angle: 90,
    wind: 0
  };

  const confetti = new window.ConfettiGenerator(confettiSettings);
  confetti.render();
}


</script>
</html>
