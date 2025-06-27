//index.js

import { imagePaths,specialBgImages, defaultBg } from './aa5006f12bf855428efa6acee55c51cd965c71af51626a0e0e3f1bf3c5ca3925.js';


    // Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
  document.body.style.overflow = "hidden"; // Prevent scrolling when sidebar is open
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
  //document.body.style.overflow = "auto"; // Re-enable scrolling
}



document.addEventListener("DOMContentLoaded", () => {
  //alert(1);
  const openBtn = document.getElementById("side_pannel");
  const closeBtn1 = document.getElementById("side_close");
  const closeBtn2 = document.getElementById("myOverlay");

  if (openBtn) {
    //alert(2);
    openBtn.addEventListener("click", w3_open);
  }

  if (closeBtn1 || closeBtn1) {
    closeBtn1.addEventListener("click", w3_close);
    closeBtn2.addEventListener("click", w3_close);
  }
});




/// Slide gallery images ///////////////////////////////////////////////////////////////////////

let currentSlide = 0;
const slider = document.getElementById('gallerySlider');
let slidesToShow = 4; // Default for large screens

function updateSlidesToShow() {
  if (window.innerWidth < 992) slidesToShow = 3;
  if (window.innerWidth < 768) slidesToShow = 2;
  if (window.innerWidth < 576) slidesToShow = 1;
}

// function initSlider() {
//   updateSlidesToShow();
//   slider.innerHTML = ''; // Clear existing slides
  
//   imagePaths.forEach((image, index) => {
//     const slide = document.createElement('div');
//     slide.className = 'gallery-slide';
//     slide.innerHTML = `<img src="${image}" alt="Grill Work ${index + 1}" class="fade-in">`;
//     slider.appendChild(slide);
//   });
//   updateSlider();
// }

// function updateSlider() {
//   const slideWidth = 100 / slidesToShow;
//   slider.style.transform = `translateX(-${currentSlide * slideWidth}%)`;
// }

// function moveSlide(direction) {
//   updateSlidesToShow();
//   currentSlide += direction;
  
//   // Check boundaries
//   if (currentSlide < 0) {
//     currentSlide = 0;
//   } else if (currentSlide > imagePaths.length - slidesToShow) {
//     currentSlide = imagePaths.length - slidesToShow;
//   }
  
//   updateSlider();
// }

// // Initialize the slider when page loads
// window.onload = function() {
//   initSlider();
  
//   // Set interval for auto-sliding
//   setInterval(() => {
//     if (currentSlide < imagePaths.length - slidesToShow) {
//       moveSlide(1);
//     } else {
//       currentSlide = 0;
//       updateSlider();
//     }
//   }, 4000);
  
//   // Start falling leaves effect
//   //createLeaves();
// };

// // Handle window resize
// window.addEventListener('resize', function() {
//   updateSlidesToShow();
//   updateSlider();
// });

/////End slider images list ///////// load at ones time/////////////////////

// Helper: load the real image only once
function lazyLoadImage(slideEl) {
  const img = slideEl.querySelector('img');
  if (img && img.dataset.src) {
    img.src = img.dataset.src;
    img.removeAttribute('data-src');
  }
}

function initSlider() 
{
  updateSlidesToShow();
  slider.innerHTML = '';

  imagePaths.forEach((image, index) => {
    const slide = document.createElement('div');
    slide.className = 'gallery-slide';
    // Use data-src so browser won’t fetch until we set img.src
    slide.innerHTML = `
      <img 
        data-src="${image}" 
        alt="Grill Work ${index + 1}" 
        class="fade-in"
        style="min-height:200px; background:#f0f0f0;"
      >
    `;
    slider.appendChild(slide);
  });

  // Position the carousel and immediately load the first 'slidesToShow' images
  updateSlider();
  const slides = slider.querySelectorAll('.gallery-slide');
  // for (let i = 0; i < slidesToShow; i++) 
  // {
  //   lazyLoadImage(slides[i]);
  // }

  // preload the first window **plus one extra** slide
  for (let i = 0; i < slidesToShow + 1; i++) 
  {
    if (slides[i]) lazyLoadImage(slides[i]);
  }

}

// function updateSlider() {
//   const slideWidth = 100 / slidesToShow;
//   slider.style.transform = `translateX(-${currentSlide * slideWidth}%)`;

//   // Lazy-load the newly visible slide
//   const slides = slider.querySelectorAll('.gallery-slide');
//   lazyLoadImage(slides[currentSlide]);
// }

function updateSlider() 
{
  const slideWidth = 100 / slidesToShow;
  slider.style.transform = `translateX(-${currentSlide * slideWidth}%)`;

  // Lazy-load all slides in the current window
  const slides = slider.querySelectorAll('.gallery-slide');

  // for (let i = currentSlide; i < currentSlide + slidesToShow; i++) 
  // {
  //   if (slides[i]) lazyLoadImage(slides[i]);
  // }

  // preload all visible slides **plus the next** one
  for (let i = currentSlide; i < currentSlide + slidesToShow + 1; i++) 
  {
    if (slides[i]) lazyLoadImage(slides[i]);
  }

}




// Whenever you move slides, updateSlider() will fire and lazy-load on demand
function moveSlide(direction) {
  updateSlidesToShow();
  currentSlide += direction;
  if (currentSlide < 0) currentSlide = 0;
  else if (currentSlide > imagePaths.length - slidesToShow) {
    currentSlide = imagePaths.length - slidesToShow;
  }
  updateSlider();
}

// In your `window.onload`, nothing else changes:
window.onload = function() {
  initSlider();
  setInterval(() => {
    if (currentSlide < imagePaths.length - slidesToShow) {
      moveSlide(1);
    } else {
      currentSlide = 0;
      updateSlider();
    }
  }, 5000);
};

////Load images in lazy times /////////////////////////////////////////////////





document.getElementById("moveleft").addEventListener("click", () => moveSlide(-1));
document.getElementById("moveright").addEventListener("click", () => moveSlide(1));




// Falling leaves effect
function createLeaves(leafSymbols) {
  //alert(leafSymbols);
  //const leafSymbols = ['🍁', '🍂', '🍃', '🌿', '🍀'];
  const colors = ['#8BC34A', '#4CAF50', '#2E7D32', '#689F38', '#558B2F'];
  
  function createLeaf() {
    const leaf = document.createElement('div');
    leaf.className = 'leaf';
    
    // Random properties
    const symbol = leafSymbols[Math.floor(Math.random() * leafSymbols.length)];
    const size = Math.random() * 20 + 15;
    const duration = Math.random() * 10 + 5;
    const delay = Math.random() * 5;
    const endX = (Math.random() * 200 - 100) + 'px';
    
    leaf.textContent = symbol;
    leaf.style.left = Math.random() * window.innerWidth + 'px';
    leaf.style.fontSize = size + 'px';
    leaf.style.color = colors[Math.floor(Math.random() * colors.length)];
    leaf.style.setProperty('--end-x', endX);
    leaf.style.animationDuration = duration + 's';
    leaf.style.animationDelay = delay + 's';
    
    document.body.appendChild(leaf);
    
    // Remove leaf after animation completes
    setTimeout(() => {
      leaf.remove();
    }, duration * 1000);
  }
  
  // Create initial leaves
  for (let i = 0; i < 15; i++) {
    createLeaf();
  }
  
  // Continue creating leaves periodically
  setInterval(createLeaf, 1000);
}

// Scroll animations
const fadeElements = document.querySelectorAll('.fade-in');

const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.style.opacity = 1;
      entry.target.style.transform = 'translateY(0)';
    }
  });
}, { threshold: 0.1 });

fadeElements.forEach(el => {
  el.style.opacity = 0;
  el.style.transform = 'translateY(20px)';
  el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
  observer.observe(el);
});


function playBackgroundMusic(musicFile) {
    const audio = new Audio(musicFile);
    audio.loop = true;
    audio.play().catch(err => console.error('Failed to play music:', err));
    return audio;
    }

// function copyToClipboard(text) {
//     navigator.clipboard.writeText(text)
//         .then(() => {
//             console.log('Text copied to clipboard:', text);
//         })
//         .catch(err => {
//             console.error('Failed to copy text: ', err);
//         });
// }

// // Example usage

// let hasRun = false;
// function runOnce() {
//     if (hasRun) return;  // Prevent further execution
    
//     //playBackgroundMusic('others/music.mp3');
//     copyToClipboard('+91 9932134803');
    
//     hasRun = true;  // Set flag to true after first execution
// }
    
function updateVisitCount(startDate) {
            const start = new Date(startDate);
            const today = new Date();
            const timeDifference = today - start; // Difference in milliseconds
            const daysCount = Math.floor(timeDifference / (1000 * 60 * 60 * 24)); // Convert to days
            const result = daysCount * 7; // Multiply by 17
            
            document.getElementById("visit_num").textContent = `Total visit: ${result}`;
        }

        // Example: Calculate from "2024-01-01"
        updateVisitCount("2025-04-01");






  const starContainer = document.getElementById("starContainer");
  const ratingMsg = document.getElementById("ratingMsg");

  function setCookie(name, value, days) {
    const d = new Date();
    d.setTime(d.getTime() + (days*24*60*60*1000));
    document.cookie = `${name}=${value};expires=${d.toUTCString()};path=/`;
  }

  function getCookie(name) {
    const cookies = document.cookie.split(';');
    for (let c of cookies) {
      let [k, v] = c.trim().split('=');
      if (k === name) return v;
    }
    return null;
  }

  function disableStars() {
    starContainer.classList.add('disabled');
    const labels = starContainer.querySelectorAll('label');
    labels.forEach(l => l.style.pointerEvents = "none");
  }



  // Check if user already rated
  const savedRating = getCookie("userRated");

  if (savedRating) {
    // Pre-select saved rating radio
    const starToCheck = starContainer.querySelector(`input[value='${savedRating}']`);
    if (starToCheck) {
      starToCheck.checked = true;
    }

    ratingMsg.textContent = `You already rated ${savedRating} star${savedRating > 1 ? 's' : ''}. Please use other devices for rating.`;
    
    //alert(savedRating);
    for(var i=1;i<=savedRating;i++)
    {
      let label = document.getElementById("rate"+i);
      if (label)
      {
         label.style.setProperty("color", "orange", "important");
      }
    }


    disableStars();
  } else {
    // Enable rating input and save on change
    const stars = starContainer.querySelectorAll("input[name='rating']");
    stars.forEach(star => {
      star.addEventListener("change", function() {
        const userRating = this.value;

        // Save cookie
        setCookie("userRated", userRating, 30);

        // Glow stars and disable input
        for(var i=1;i<=userRating;i++)
        {
          let label = document.getElementById("rate"+i);
          if (label)
          {
            label.style.setProperty("color", "orange", "important");
          }
        }
        disableStars();

        // Show message
        ratingMsg.textContent = "Your rating has been received. Overall rating will update after a few days.";
      });
    });
  }



  //Raitng part
  fetch('js/f1f21fe7e8f8dbec9a900cf895c1260789a5c0bbfba1f841d6968baca68a4958.json')
  .then(response => {
    if (!response.ok) {
      throw new Error('Network response was not ok');
    }
    return response.json();
  })
  .then(data => {
    const avgRating = data.avg_rating;
    const totalUsers = data.total_users;

    // console.log("Average Rating:", avgRating);
    // console.log("Total Users:", totalUsers);

    // Example: Update your UI
    document.querySelector('.current-rating').textContent = `Average Rating: ⭐ ${avgRating} (${totalUsers} users)`;

  })
  .catch(error => {
    console.error('Error loading rating.json:', error);
  });


function setupLanguageToggle(buttonId, classPrefix, languages) {
  const btn = document.getElementById(buttonId);
  let currentIndex = 0;

  // Detect current language based on button label
  function findInitialIndex() {
    const label = btn.textContent.trim().toLowerCase();
    const index = languages.findIndex(lang => lang.toLowerCase() === label);
    return index >= 0 ? index : 0;
  }

  currentIndex = findInitialIndex();

  function updateDisplay() {
    // Hide all
    languages.forEach(lang => {
      const el = document.querySelector(`.${classPrefix}_${lang}`);
      if (el) el.style.display = "none";
    });

    // Show current
    const currentLang = languages[currentIndex];
    const visibleEl = document.querySelector(`.${classPrefix}_${currentLang}`);
    if (visibleEl) visibleEl.style.display = "block";

    // Update button label to next
    let nextLang = languages[(currentIndex + 1) % languages.length];
    
    if (nextLang=='eng')
     nextLang= 'English';
    else if (nextLang=='ben')
     nextLang= 'বাংলা';
    else if (nextLang=='hin')
     nextLang= 'हिन्दी';
   
    btn.textContent = nextLang.charAt(0).toUpperCase() + nextLang.slice(1);
  }

  btn.addEventListener("click", () => {
    currentIndex = (currentIndex + 1) % languages.length;
    updateDisplay();
  });

  // Initialize on load
  updateDisplay();
}

// Use the function
setupLanguageToggle("about_trans_btn", "about", ["eng", "ben", "hin"]);
setupLanguageToggle("owner_trans_btn", "owner", ["eng", "ben", "hin"]);





const translations = [
    "Asha Grill House",                         // English
    "আশা গ্রিল হাউস",                          // Bengali
    "आशा ग्रिल हाउस"                          // Hindi
  ];

const titleEl = document.getElementById("mainTitle");
let index = 0;

setInterval(() => {
// Fade out
titleEl.classList.add("hidden");

// After fade out complete, change text and fade in
setTimeout(() => {
    index = (index + 1) % translations.length;
    titleEl.textContent = translations[index];
    titleEl.classList.remove("hidden");
}, 1500); // Match with transition duration
}, 5000); // Change every 4 seconds



//Expreriencs calcuated dinamicly//////////////////////////////////////////////
const startDate = new Date("2015-08-01"); // August 2015
const now = new Date();

const diffInMs = now - startDate;
const years = diffInMs / (1000 * 60 * 60 * 24 * 365.25); // includes leap years

const experience = years.toFixed(1); // keep 1 decimal place

document.getElementById("experience").textContent = experience;





//Scroll Animation/////////////////////////////////////////////////////////////

const indicator = document.getElementById("scroll-indicator");

    let shown = false;
    let userInteracted = false;
    let showTimeout;

    // Function to show the indicator if no interaction
    function maybeShowIndicator() {
      if (!userInteracted && !shown) {
        indicator.classList.add("show");
        shown = true;
      }
    }

    // Function to hide indicator immediately
    function hideIndicator() {
      indicator.classList.remove("show");
      clearTimeout(showTimeout);
    }

    // Detect any user interaction
    function onUserInteract() {
      userInteracted = true;
      hideIndicator();
      removeListeners();
    }

    function removeListeners() {
      window.removeEventListener("scroll", onUserInteract);
      window.removeEventListener("touchstart", onUserInteract);
      window.removeEventListener("click", onUserInteract);
      window.removeEventListener("mousemove", onUserInteract);
    }

    // Set up after page loads
    window.addEventListener("load", () => {
      // If no interaction for 5s, show indicator
      showTimeout = setTimeout(maybeShowIndicator, 5000);

      // Listen for any user input
      window.addEventListener("scroll", onUserInteract);
      window.addEventListener("touchstart", onUserInteract);
      window.addEventListener("click", onUserInteract);
      window.addEventListener("mousemove", onUserInteract);
    });





    ///Weather condition check //////////////////////////////
    //[, ]
    const lat = 23.530668;
    const lon = 88.404787;

    function getWeatherTheme(code) {
      if ([0, 1, 2].includes(code))
        return { label: "Clear", emoji: ['☀️','🍃', '🌿', '🍀','🌻'] };
      if ([3, 45, 48].includes(code))
        return { label: "Cloudy", emoji: ['☁️','🌥️','🌺','🌤️'] };
      if ((code >= 51 && code <= 67) || (code >= 80 && code <= 82))
        return { label: "Rainy", emoji: ['🌧️','☔','💧','⛈️'] };
      if ((code >= 71 && code <= 77) || code === 85 || code === 86)
        return { label: "Snowy", emoji: ['❄️','☃️','🧤','🍁', '🍂'] };
      if (code >= 95 && code <= 99)
        return { label: "Stormy", emoji: ['🌩️','⚡','🌪️','⛈️'] };
      return { label: "Unknown", emoji: "" };
    }

    const url = `https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current_weather=true`;

    fetch(url)
      .then(res => res.json())
      .then(data => {
        const weather = data.current_weather;
        const temp = weather.temperature;
        const wind = weather.windspeed;
        const code = weather.weathercode;
        const theme = getWeatherTheme(code);

        // Show weather data
        document.getElementById("weather").innerHTML = `
           ${theme.label},
           ${temp} °C<br>
          Wind: ${wind} km/h
        `;
        createLeaves(theme.emoji);
      })
      .catch(err => {
        console.error(err);
        document.getElementById("weather").textContent = "Fetching failed.";
        document.body.className = "unknown";
      });




function closeImageModal() {
  document.getElementById("imageModal").style.display = "none";
  document.getElementById("popupImage").src = "";
}

document.addEventListener("DOMContentLoaded", function () {
  const classMap = [
    "grill", "door", "window", "glass", "boundary",
    "ralling", "shade", "collapsible", "shutter",
    "steel_stair", "iron_stair"
  ];

  // Add click listeners to each span
  classMap.forEach(field => {
    const el = document.querySelector(`.${field}`);
    if (el) {
      el.addEventListener("click", function () {
        wordlink(field);
      });
    }
  });


  


  const closeBtn = document.querySelector("#imageModal .close-btn");
    


  closeBtn.addEventListener("click", function () {
  //console.log("❌ Close button clicked");
  closeImageModal();
  });

  closeBtn?.addEventListener("click", closeImageModal);

  // ✅ Optional: click outside modal to close
  document.getElementById("imageModal").addEventListener("click", function (e) {
    if (e.target.id === "imageModal") {
      closeImageModal();
    }
  });
});

function wordlink(field) {
  const imageMap = {
    grill: "grill/grill1.jpg",
    door: "grill/grill2.jpg",
    window: "grill/grill3.jpg",
    glass: "grill/glass.jpg",
    boundary: "grill/boundary.jpg",
    ralling: "grill/ralling.jpg",
    shade: "grill/shade.jpg",
    collapsible: "grill/collapsible.jpg",
    shutter: "grill/shutter.jpg",
    steel_stair: "grill/steel_stair.jpg",
    iron_stair: "grill/iron_stair.jpg"
  };

  const imageUrl = imageMap[field];
  if (imageUrl) {
    document.getElementById("popupImage").src = imageUrl;
    document.getElementById("imageModal").style.display = "flex";
  } else {
    alert("Image not found for: " + field);
  }
}



//DINAMIC BACKGROUND CHNAGE

// Format today's date as dd/mm/yyyy
const today = new Date();
const day = String(today.getDate()).padStart(2, '0');
const month = String(today.getMonth() + 1).padStart(2, '0'); // Months are zero-indexed
const year = today.getFullYear();
const todayStr = `${day}/${month}/${year}`;

// Check if today is a special date
const selectedImage = specialBgImages[todayStr] || defaultBg;

// Apply background to the element
const header = document.querySelector('.main-header');
if (header) {
  header.style.background = `
    linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
    url(${selectedImage}) center / 100% 100% no-repeat
  `;
}
////////////////////////////