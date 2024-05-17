<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <link rel="stylesheet" href="contact.css">
</head>
<body>
    <div class="container">
        <h1>Contact Us</h1>
        <p>Feel free to reach out using the form below.</p>
        <form action="contact.jsp" method="post" id="contact-form">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>
            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" required><br><br>
            <label for="message">Message:</label>
            <textarea id="message" name="message" required></textarea><br><br>
            <button type="submit">Send Message</button>
        </form>
    </div>
 
</body>
<script>
const form = document.getElementById('contact-form');
form.addEventListener('submit', function(event) {
const name = document.getElementById('name').value.trim();
const email = document.getElementById('email').value.trim();
const subject = document.getElementById('subject').value.trim();
const message = document.getElementById('message').value.trim();

let isValid = true;

if (name === '') {
 alert('Please enter your name.');
 isValid = false;
}

if (email === '' || !/^\S+@\S+\.\S+$/.test(email)) {
 alert('Please enter a valid email address.');
 isValid = false;
}

if (subject === '') {
 alert('Please enter a subject for your message.');
 isValid = false;
}

if (message === '') {
 alert('Please enter your message.');
 isValid = false;
}

if (!isValid) {
 event.preventDefault(); 
}
});

form.addEventListener('invalid', function(event) {
event.target.classList.add('shake');

setTimeout(function() {
 event.target.classList.remove('shake');
}, 500); 
});


.shake {
animation: shake 0.5s ease-in-out;
animation-iteration-count: 3; 
}

@keyframes shake {
	
	0% { transform: translateX(0); }
	25% { transform: translateX(-5px); }
	50% { transform: translateX(10px); }
	75% { transform: translateX(-5px); }
	100% { transform: translateX(0); }
}

</script>
</html>
