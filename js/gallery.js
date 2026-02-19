//gallery.js

import { imagePaths,specialBgImages, defaultBg} from './mymodule.js';
let selectedImageFile = null;
let lastSelectedImg = null;



    // document.getElementById('year').textContent = new Date().getFullYear();
    const imageGrid = document.getElementById('imageGrid');
    const lightbox = document.getElementById('lightbox');
    const lightboxImage = document.getElementById('lightboxImage');
    const closeBtn = document.getElementById('closeBtn');
    const prevBtn = document.getElementById('prevBtn');
    const nextBtn = document.getElementById('nextBtn');
    let currentImageIndex = 0;

    // Populate grid
    imagePaths.forEach((src, i) => {
      const div = document.createElement('div'); div.className = 'gallery-item';
      const img = document.createElement('img');
      img.dataset.src = src; img.loading='lazy'; img.decoding='async'; img.alt = `Grill work ${i+1}`;
      div.appendChild(img);
      div.addEventListener('click', () => openLightbox(i));
      imageGrid.appendChild(div);
    });

    // Lazy-load
    const io = new IntersectionObserver((entries, obs) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          const img = entry.target.querySelector('img'); img.src = img.dataset.src; obs.unobserve(entry.target);
        }
      });
    }, { rootMargin: '200px' });
    document.querySelectorAll('.gallery-item').forEach(el => io.observe(el));

    // Lightbox
    function openLightbox(index) {
      currentImageIndex = index;
      lightboxImage.src = imagePaths[index];
      lightbox.style.display = 'flex'; document.body.style.overflow='hidden';
    }
    function closeLightbox() { lightbox.style.display='none'; document.body.style.overflow='auto'; }
    function navigate(direction) {
      currentImageIndex = (currentImageIndex + direction + imagePaths.length) % imagePaths.length;
      lightboxImage.src = imagePaths[currentImageIndex];
    }
    closeBtn.onclick = closeLightbox;
    prevBtn.onclick = () => navigate(-1);
    nextBtn.onclick = () => navigate(1);
    lightbox.addEventListener('click', e => e.target===lightbox && closeLightbox());
    document.addEventListener('keydown', e => {
      if (lightbox.style.display==='flex') {
        if (e.key==='Escape') closeLightbox();
        if (e.key==='ArrowLeft') navigate(-1);
        if (e.key==='ArrowRight') navigate(1);
      }
    });

    
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


    // window.onload = function() {
    // // Show popup after 5 seconds
    // setTimeout(() => {
    //     document.getElementById('adPopup').style.display = 'flex';
    // }, 5000);

    // // Close popup on click
    // document.getElementById('closePopup').addEventListener('click', () => {
    //     document.getElementById('adPopup').style.display = 'none';
    // });
    // };




    // index.js (or your external script)




/*
//Scroll Animation/////////////////////////////////////////////////////////////
// Scroll Animation (replace your old block with this)
document.addEventListener("DOMContentLoaded", () => {
  const indicator = document.getElementById("scroll-indicator");
  let shown = false;
  let userInteracted = false;
  let showTimeout;

  // Show after 5s of no interaction
  function maybeShowIndicator() {
    if (!userInteracted && !shown) {
      indicator.classList.add("show");
      shown = true;
    }
  }

  // Hide immediately on any interaction
  function hideIndicator() {
    indicator.classList.remove("show");
    clearTimeout(showTimeout);
  }

  function onUserInteract() {
    userInteracted = true;
    hideIndicator();
    window.removeEventListener("scroll", onUserInteract);
    window.removeEventListener("touchstart", onUserInteract);
    window.removeEventListener("click", onUserInteract);
    window.removeEventListener("mousemove", onUserInteract);
  }

  // Start the 5s timer as soon as DOM is ready
  showTimeout = setTimeout(maybeShowIndicator, 5000);

  // If the user scrolls/touches/clicks/moves, cancel the popup
  window.addEventListener("scroll", onUserInteract);
  window.addEventListener("touchstart", onUserInteract);
  window.addEventListener("click", onUserInteract);
  window.addEventListener("mousemove", onUserInteract);
});
*/




const menuBtn = document.getElementById('menuBtn');
const galleryMenu = document.getElementById('galleryMenu');

menuBtn.addEventListener('click', () => {
  galleryMenu.classList.toggle('active');
});




const languageSelect = document.getElementById('languageSelect');

function updateLanguage() {
  document.querySelectorAll('.lan').forEach(el => {
    el.style.display = 'none';
  });

  const lang = languageSelect.value;

  if (lang === 'en') {
    document.querySelectorAll('.lan_eng').forEach(el => el.style.display = 'inline');
  }
  else if (lang === 'bn') {
    document.querySelectorAll('.lan_ben').forEach(el => el.style.display = 'inline');
  }
  else if (lang === 'hi') {
    document.querySelectorAll('.lan_hin').forEach(el => el.style.display = 'inline');
  }
}

languageSelect.addEventListener('change', updateLanguage);

updateLanguage();









///Weather condition check //////////////////////////////
    //[, ]
    const lat = 23.530668;
    const lon = 88.404787;

    function getWeatherTheme(code) {
      if ([0, 1, 2].includes(code))
        return { label: "Clear"};
      if ([3, 45, 48].includes(code))
        return { label: "Cloudy"};
      if ((code >= 51 && code <= 67) || (code >= 80 && code <= 82))
        return { label: "Rainy"};
      if ((code >= 71 && code <= 77) || code === 85 || code === 86)
        return { label: "Snowy"};
      if (code >= 95 && code <= 99)
        return { label: "Stormy"};
      return { label: "Unknown"};
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
      })
      .catch(err => {
        console.error(err);
        document.getElementById("weather").textContent = "Fetching failed.";
        document.body.className = "unknown";
      });

    
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
    const header = document.querySelector('.gallery-header');
    if (header) {
      header.style.background = `
        linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
        url(${selectedImage}) center / 100% 100% no-repeat
      `;
    }
    ////////////////////////////////











  const scrollBtn = document.getElementById('scrollTopBtn');

  window.addEventListener('scroll', () => {
    if (window.scrollY > 0) {
      scrollBtn.classList.add('show');
    } else {
      scrollBtn.classList.remove('show');
    }
  });

  scrollBtn.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });




/*Serch by image by URL: field: image*/

  // Handle direct image open via URL
  const params = new URLSearchParams(window.location.search);
  const imageParam = params.get('image');

  if (imageParam) {
    const imageIndex = imagePaths.findIndex(src => {
      return src.endsWith(imageParam);
    });

    if (imageIndex !== -1) {
      // Ensure image is loaded in grid
      const targetItem = imageGrid.children[imageIndex];
      const img = targetItem.querySelector('img');

      if (!img.src) {
        img.src = img.dataset.src;
      }

      // Highlight image
      targetItem.classList.add('highlight');
      document.getElementById('galleryInfo').style.display = 'inline-flex';

      // Scroll to image
      setTimeout(() => {
        targetItem.scrollIntoView({ behavior: 'smooth', block: 'center' });
      }, 200);

      // Open lightbox
      setTimeout(() => {
        openLightbox(imageIndex);
      }, 400);
    }
  }



  document.getElementById('closeGalleryInfo')
  .addEventListener('click', () => {
    document.getElementById('galleryInfo').style.display = 'none';
  });





  /*SLECT THE IMAGE ONECE*/

  document.addEventListener('click', function (e) {
    const img = e.target.closest('.gallery-item img');
    if (!img) return;

    // Remove selection from previous image
    if (lastSelectedImg) {
      lastSelectedImg.classList.remove('selected');
    }

    // Mark new image as selected
    img.classList.add('selected');
    lastSelectedImg = img;

    // Get filename only
    const src = img.dataset.src || img.src;
    selectedImageFile = src.split('/').pop();

    //console.log('Selected image:', selectedImageFile);
  });




  /*SHARE IMAGES AND CPOLIED LINK*/

  const shareBtn = document.getElementById('shareImageLink');

  shareBtn.addEventListener('click', () => {
    if (!selectedImageFile) {
      alert('Please select an image first');
      return;
    }

    const baseUrl = window.location.origin;

    const shareUrl = `${baseUrl}/gallery.html?image=${encodeURIComponent(selectedImageFile)}`;

    navigator.clipboard.writeText(shareUrl)
    .then(() => {
      console.log('Copied:', shareUrl);
      alert('Image link copied to clipboard');
    })
    .catch(() => {
      alert('Copy failed. Please copy manually.');
    });
  });
