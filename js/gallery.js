    import { imagePaths } from './items.js';

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


    window.onload = function() {
    // Show popup after 5 seconds
    setTimeout(() => {
        document.getElementById('adPopup').style.display = 'flex';
    }, 5000);

    // Close popup on click
    document.getElementById('closePopup').addEventListener('click', () => {
        document.getElementById('adPopup').style.display = 'none';
    });
    };