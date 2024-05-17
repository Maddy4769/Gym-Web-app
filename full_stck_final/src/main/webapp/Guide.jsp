<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome Page</title>
        <link rel="stylesheet" href="Shop.css">
    </head>
    <body>

            <div class="services">
                <ul class='gallery'>
                  <li class='slide' style="background-image: url('https://images.pexels.com/photos/176782/pexels-photo-176782.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')">
                    <div class='content'>
                      <h2 class='heading'>"Push-Ups"</h2>
                      <p class='info'>Push past your limits, one push-up at a time. Unlock your inner strength with this classic bodyweight exercise!.</p>
                      <a href="#" style="color: white;"><button>Know More</button></a>
                    </div>
                  </li>
                  <li class='slide' style="background-image: url('https://images.pexels.com/photos/136404/pexels-photo-136404.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')">
                    <div class='content'>
                      <h2 class='heading'>Leg Press</h2>
                      <p class='info'> Press your limits! The leg press is your gateway to stronger, more sculpted legs. Get ready to conquer leg day!</p>
                      <a href="#" style="color: white;"><button>Know more</button></a>
                    </div>
                  </li>
                  <li class='slide' style="background-image: url('https://images.pexels.com/photos/999309/pexels-photo-999309.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')">
                    <div class='content'>
                      <h2 class='heading'>"Yoga"</h2>
                      <p class='info'>Yoga: More than just stretching! Build strength, improve flexibility, and find balance with our yoga classes.  </p>
                      <a href="#" style="color: white;"><button>know More</button></a>
                    </div>
                  </li>
                  <li class='slide' style="background-image: url('https://images.pexels.com/photos/2271730/pexels-photo-2271730.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')">
                    <div class='content'>
                      <h2 class='heading'>"Diet"</h2>
                      <p class='info'>Dive deeper into the world of protein! Our app provides personalized protein plans and delicious recipes to keep you on track.</p>
                      <a href="#" style="color: white;"><button>Know More</button></a>
                    </div>
                  </li>
                  
                  <li class='slide' style="background-image: url('	https://images.pexels.com/photos/235975/pexels-photo-235975.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')">
                    <div class='content'>
                      <h2 class='heading'>"Home"</h2>
                      <p class='info'> Back to home </p>
                      <a href="index.jsp" style="color: white;"><button>Home</button></a>
                    </div>
                  </li>
                </ul>
                <nav class='navigation'>
                  <ion-icon class='btn prev' name="arrow-back-outline"></ion-icon>
                  <ion-icon class='btn next' name="arrow-forward-outline"></ion-icon>
                </nav>
            </div>
              
              <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
              <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
              <script>
                const gallery = document.querySelector('.gallery');

function moveSlide(e) {
  const slides = document.querySelectorAll('.slide');
  e.target.matches('.next') && gallery.append(slides[0])
  e.target.matches('.prev') && gallery.prepend(slides[slides.length-1]);
}

document.addEventListener('click',moveSlide,false);
              </script>
    </body>
</html>