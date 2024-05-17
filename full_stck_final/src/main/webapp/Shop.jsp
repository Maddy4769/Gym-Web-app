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
                  <li class='slide' style="background-image: url('https://images.pexels.com/photos/13449652/pexels-photo-13449652.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')">
                    <div class='content'>
                      <h2 class='heading'>"Shoes"</h2>
                      <p class='info'>New shoes, who dis? Get ready to crush your goals with these kicks.</p>
                      <a href="stress.html" style="color: white;"><button>Buy Now</button></a>
                    </div>
                  </li>
                  <li class='slide' style="background-image: url('https://images.pexels.com/photos/3753118/pexels-photo-3753118.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')">
                    <div class='content'>
                      <h2 class='heading'>Apparels</h2>
                      <p class='info'> Ditch the sweats that sag, get threads that brag! Slay your workout in style with our next-level apparel.  </p>
                      <a href="meditation.html" style="color: white;"><button>Buy Now</button></a>
                    </div>
                  </li>
                  <li class='slide' style="background-image: url('https://images.pexels.com/photos/4944973/pexels-photo-4944973.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')">
                    <div class='content'>
                      <h2 class='heading'>"Tread-mill"</h2>
                      <p class='info'>Running from boredom? This treadmill's got the moves to groove! Blast calories with a workout that's never a snooze!</p>
                      <a href="sleep.html" style="color: white;"><button>Buy Now</button></a>
                    </div>
                  </li>
                  <li class='slide' style="background-image: url('https://www.healthifyme.com/blog/wp-content/uploads/2019/08/Whey-Protein-1.jpg')">
                    <div class='content'>
                      <h2 class='heading'>"Protein"</h2>
                      <p class='info'>Slay your workout and sculpt your dream physique with our delicious protein powder! Packed with muscle-building protein to help you recover faster and reach your fitness goals. So ditch the bland shakes and treat your taste buds while you power up!</p>
                      <a href="stress.html" style="color: white;"><button>Buy Now</button></a>
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
