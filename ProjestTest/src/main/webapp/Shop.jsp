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
                  <li class='slide' style="background-image: url('https://img.freepik.com/premium-photo/sleep-problems-hd-8k-wallpaper-stock-photographic-image_915071-58213.jpg?w=740')">
                    <div class='content'>
                      <h2 class='heading'>"Trouble Sleeping"</h2>
                      <p class='info'>Sleep Stories, sleep meditations, music and soundscapes for your dreamiest sleep yet  </p>
                      <a href="sleep.html" style="color: white;"><button>View More</button></a>
                    </div>
                  </li>
                  <li class='slide' style="background-image: url('https://img.freepik.com/free-photo/sad-man-holding-head-with-hand_1150-6345.jpg?t=st=1715267754~exp=1715271354~hmac=19957516fc95469e6157889bdcb7f8987d8a4f6ced51766c9d3d9a08789748e0&w=996')">
                    <div class='content'>
                      <h2 class='heading'>"Stressed"</h2>
                      <p class='info'>Anxiety and stress relief whenever you need it</p>
                      <a href="stress.html" style="color: white;"><button>View More</button></a>
                    </div>
                  </li>
                  
                  <li class='slide' style="background-image: url('https://img.freepik.com/premium-photo/woman-playing-tibetan-singing-bowl-while-sitting-yoga-mat-against-waterfall-vintage-tonned-beautiful-girl-with-mala-beads-meditating_247622-23860.jpg?w=996')">
                    <div class='content'>
                      <h2 class='heading'>"Diet"</h2>
                      <p class='info'> Nutrition Foods for Men, Women and kids  </p>
                      <a href="diet.html" style="color: white;"><button>View More</button></a>
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
