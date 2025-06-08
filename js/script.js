import { imagePaths } from './items.js';





let currentSlide = 0;
const slider = document.getElementById('gallerySlider');
let slidesToShow = 4; // Default for large screens

function updateSlidesToShow() {
  if (window.innerWidth < 992) slidesToShow = 3;
  if (window.innerWidth < 768) slidesToShow = 2;
  if (window.innerWidth < 576) slidesToShow = 1;
}

function initSlider() {
  updateSlidesToShow();
  slider.innerHTML = ''; // Clear existing slides
  
  imagePaths.forEach((image, index) => {
    const slide = document.createElement('div');
    slide.className = 'gallery-slide';
    slide.innerHTML = `<img src="${image}" alt="Grill Work ${index + 1}" class="fade-in">`;
    slider.appendChild(slide);
  });
  updateSlider();
}

function updateSlider() {
  const slideWidth = 100 / slidesToShow;
  slider.style.transform = `translateX(-${currentSlide * slideWidth}%)`;
}

function moveSlide(direction) {
  updateSlidesToShow();
  currentSlide += direction;
  
  // Check boundaries
  if (currentSlide < 0) {
    currentSlide = 0;
  } else if (currentSlide > imagePaths.length - slidesToShow) {
    currentSlide = imagePaths.length - slidesToShow;
  }
  
  updateSlider();
}

// Initialize the slider when page loads
window.onload = function() {
  initSlider();
  
  // Set interval for auto-sliding
  setInterval(() => {
    if (currentSlide < imagePaths.length - slidesToShow) {
      moveSlide(1);
    } else {
      currentSlide = 0;
      updateSlider();
    }
  }, 4000);
  
  // Start falling leaves effect
  createLeaves();
};

// Handle window resize
window.addEventListener('resize', function() {
  updateSlidesToShow();
  updateSlider();
});

// Falling leaves effect
function createLeaves() {
  const leafSymbols = ['🍁', '🍂', '🍃', '🌿', '🍀'];
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

function copyToClipboard(text) {
    navigator.clipboard.writeText(text)
        .then(() => {
            console.log('Text copied to clipboard:', text);
        })
        .catch(err => {
            console.error('Failed to copy text: ', err);
        });
}

// Example usage

let hasRun = false;
function runOnce() {
    if (hasRun) return;  // Prevent further execution
    
    //playBackgroundMusic('others/music.mp3');
    copyToClipboard('+91 9932134803');
    
    hasRun = true;  // Set flag to true after first execution
}
    
function updateVisitCount(startDate) {
            const start = new Date(startDate);
            const today = new Date();
            const timeDifference = today - start; // Difference in milliseconds
            const daysCount = Math.floor(timeDifference / (1000 * 60 * 60 * 24)); // Convert to days
            const result = daysCount * 17; // Multiply by 17
            
            document.getElementById("visit_num").textContent = `Total visit: ${result}`;
        }

        // Example: Calculate from "2024-01-01"
        updateVisitCount("2025-01-01");






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
  fetch('js/rating.json')
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
     nextLang= 'Bengali';
    else if (nextLang=='hin')
     nextLang= 'Hindi';
   
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