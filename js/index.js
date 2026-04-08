import { imagePaths } from './mymodule.js';


const imgs = {
    first:  document.getElementById('gallery_first'),
    second: document.getElementById('gallery_second'),
    third:  document.getElementById('gallery_third'),
    fourth: document.getElementById('gallery_fourth')
};

const prevBtn = document.getElementById('prevBtn');
const nextBtn = document.getElementById('nextBtn');

let currentIndex = 0;
let autoSlideInterval = null;
let hasLoaded = false;        // ← images loaded only once
let isVisible = false;

//console.log("Gallery JS ready – waiting for first scroll...");

// Set data-src (no loading yet)
function assignDataSrc(startIndex) {
    const total = imagePaths.length;
    imgs.first.dataset.src  = imagePaths[(startIndex) % total];
    imgs.second.dataset.src = imagePaths[(startIndex + 1) % total];
    imgs.third.dataset.src  = imagePaths[(startIndex + 2) % total];
    imgs.fourth.dataset.src = imagePaths[(startIndex + 3) % total];
}

// Actually load images (only once)
function loadImages() {
    //console.log("First time visible → loading real images");
    hasLoaded = true;

    Object.values(imgs).forEach(img => {
        if (img && img.dataset.src) img.src = img.dataset.src;
    });
}

// Start / Resume auto-slide
function startAutoSlide() {
    if (autoSlideInterval) clearInterval(autoSlideInterval);
    autoSlideInterval = setInterval(() => {
        currentIndex = (currentIndex + 1) % imagePaths.length;
        updateImages(currentIndex);
    }, 5000);   // 5 seconds for testing
}

// Pause auto-slide
function pauseAutoSlide() {
    if (autoSlideInterval) {
        clearInterval(autoSlideInterval);
        autoSlideInterval = null;
    }
}

// Update images with smooth fade (used by arrows + auto-slide)
function updateImages(newIndex) {
    Object.values(imgs).forEach(img => {
        if (img) img.style.opacity = '0';
    });

        setTimeout(() => {
            imgs.first.src  = imagePaths[(newIndex) % imagePaths.length];
            imgs.second.src = imagePaths[(newIndex + 1) % imagePaths.length];
            imgs.third.src  = imagePaths[(newIndex + 2) % imagePaths.length];
            imgs.fourth.src = imagePaths[(newIndex + 3) % imagePaths.length];

            Object.values(imgs).forEach(img => {
                if (img) {
                    img.style.transition = 'all 0.9s cubic-bezier(0.25, 0.1, 0.25, 1)';
                    img.style.opacity = '1';
                }
            });

            currentIndex = newIndex;
            localStorage.setItem("gallery_img_index", currentIndex);
        }, 500);
}

function next() {
    if (!hasLoaded) return;
    currentIndex = (currentIndex + 1) % imagePaths.length;
    updateImages(currentIndex);
}

function prev() {
    if (!hasLoaded) return;
    currentIndex = (currentIndex - 1 + imagePaths.length) % imagePaths.length;
    updateImages(currentIndex);
}

// Main observer (handles both first load + pause/resume)
function initObserver() {
    const gallerySection = document.querySelector('.gallery');
    if (!gallerySection) return;

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            isVisible = entry.isIntersecting;

            if (isVisible) {
                // First time ever
                if (!hasLoaded) {
                    const savedIndex = localStorage.getItem("gallery_img_index");
                    currentIndex = savedIndex ? parseInt(savedIndex) : 0;
                    assignDataSrc(currentIndex);
                    loadImages();
                    startAutoSlide();
                }
                // Subsequent visits → just resume auto-slide
                else {
                    startAutoSlide();
                }
            } else {
                // User scrolled away → pause
                pauseAutoSlide();
            }
        });
    }, {
        rootMargin: "200px 0px",
        threshold: 0.1
    });

    observer.observe(gallerySection);
}

// Start everything
window.addEventListener('DOMContentLoaded', () => {
    const savedIndex = localStorage.getItem("gallery_img_index");
    currentIndex = savedIndex ? parseInt(savedIndex) : 0;
    assignDataSrc(currentIndex);   // only prepares, no load yet

    initObserver();

    prevBtn?.addEventListener('click', prev);
    nextBtn?.addEventListener('click', next);
});
/*/////////////////////////////////////////////////////////////////////////////*/




























//"বাংলা দেখুন"  "हिन्दी देखें" "View English";


// $(document).ready(function(){
//
//
//     // Popup on service word click
//     $('.service').click(function(){
//         var imgSrc = $(this).data('img'); // get image path from data-img
//         $('#modalImage').attr('src', imgSrc);
//         $('#imageModal').fadeIn();
//     });
//
//     // Close popup on X click
//     $('#imageModal .close-btn').click(function(){
//         $('#imageModal').fadeOut();
//     });
//
//     // Close popup when clicking outside image
//     $('#imageModal').click(function(e){
//         if(e.target.id === 'imageModal') {
//             $(this).fadeOut();
//         }
//     });
//
// });
$(document).ready(function(){
    // Open modal
    $('.service').click(function(){
        var imgSrc = $(this).data('img');
        $('#modalImage').attr('src', imgSrc);
        $('#imageModal').addClass('show').fadeIn();  // add .show class
    });

    // Close on X
    $('#imageModal .close-btn').click(function(){
        playSound('sounds/click.mp3');
        $('#imageModal').removeClass('show').fadeOut();
    });

    // Close when clicking outside image
    $('#imageModal').click(function(e){
        if(e.target.id === 'imageModal') {
            $('#imageModal').removeClass('show').fadeOut();
        }
    });

    // ──────────────── Download button functionality ────────────────
    $('#downloadBtn').on('click', function() {
        playSound('sounds/click.mp3');
        const imgSrc = $('#modalImage').attr('src');
        if (!imgSrc) return;

        const link = document.createElement('a');
        link.href = imgSrc;
        link.download = 'Asha_Grill_Service.jpg';  // you can make dynamic name
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    });
});


// ──────────────── Hover Preview ABOVE the word (no click needed) ────────────────
document.addEventListener('DOMContentLoaded', () => {
    const previewBox = document.getElementById('serviceHoverPreview');
    const previewImg = document.getElementById('hoverPreviewImg');

    // Only on desktop / wide screens
    if (window.innerWidth > 768) {
        document.querySelectorAll('.service').forEach(word => {
            word.addEventListener('mouseenter', () => {
                const src = word.dataset.img;
                if (!src) return;


                previewImg.src = src;

                // Position preview centered above the word
                const rect = word.getBoundingClientRect();
                const centerX = rect.left + rect.width / 2;
                const topY   = rect.top - 200;  // 200px above the word

                previewBox.style.left = centerX + 'px';
                previewBox.style.top  = topY + 'px';
                previewBox.style.transform = 'translateX(-50%)';  // center horizontally

                previewBox.classList.add('visible');
                console.log('added visiible class to this link successfully');
            });

            word.addEventListener('mouseleave', () => {
                previewBox.classList.remove('visible');
                console.log('remove visible class foetm this image');
            });
        });
    }
});






function createLeaves(leafSymbols) {
    //const leafSymbols = ['🍁', '🍂', '🍃', '🌿', '🍀'];
    const colors = ['#8BC34A', '#4CAF50', '#2E7D32', '#689F38', '#558B2F'];

    function createLeaf() {
        const leaf = document.createElement('div');
        leaf.className = 'leaf';

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

        setTimeout(() => leaf.remove(), duration * 1000);
    }

    for (let i = 0; i < 15; i++) createLeaf();
    setInterval(createLeaf, 1000);
}













// Weather coordinates
const lat = 23.530668;
const lon = 88.404787;

// Map weather code to theme
function getWeatherTheme(code) {
    if ([0,1,2].includes(code)) return { label:"Clear", emoji:['☀️','🍃','🌿','🍀','🌻'] };
    if ([3,45,48].includes(code)) return { label:"Cloudy", emoji:['☁️','🌥️','🌺','🌤️'] };
    if ((code>=51 && code<=67)||(code>=80 && code<=82)) return { label:"Rainy", emoji:['🌧️','☔','💧','⛈️'] };
    if ((code>=71 && code<=77)||code===85||code===86) return { label:"Snowy", emoji:['❄️','☃️','🧤','🍁','🍂'] };
    if (code>=95 && code<=99) return { label:"Stormy", emoji:['🌩️','⚡','🌪️','⛈️'] };
    return { label:"Unknown", emoji:['❓'] };
}

// Fetch weather
function fetchWeather() {
    const url = `https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current_weather=true`;
    fetch(url)
    .then(res=>res.json())
    .then(data=>{
        const weather = data.current_weather;
        const temp = weather.temperature;
        const wind = weather.windspeed;
        const code = weather.weathercode;
        const theme = getWeatherTheme(code);

        // Editable: you can modify innerHTML format
        document.getElementById("weather").innerHTML = `
        ${theme.label} ${theme.emoji[0]}<br>
        ${temp}°C, Wind: ${wind} km/h
        `;
        createLeaves(theme.emoji);

    })
    .catch(err=>{
        console.error(err);
        document.getElementById("weather").textContent = "Weather unavailable";
    });
}

// Load weather on page load
fetchWeather();









const starContainer = document.getElementById("starContainer");
const ratingMsg = document.getElementById("ratingMsg");
const avgRatingBox = document.getElementById("avgRating");

/* -------------------------
 *   FETCH RATING JSON
 * -------------------------- */
fetch("./js/rating_result.json")
.then(res => res.json())
.then(data => {
    avgRatingBox.textContent =
    `Average Rating: ${data.avg_rating} ⭐ (${data.total_users} users)`;
})
.catch(() => {
    avgRatingBox.textContent = "Average Rating: Not available";
});

/* -------------------------
 *   LOCAL STORAGE
 * -------------------------- */
function disableStars() {
    const labels = starContainer.querySelectorAll("label");
    labels.forEach(l => l.style.pointerEvents = "none");
}

const savedRating = localStorage.getItem("userRated");

if (savedRating) {

    const star = starContainer.querySelector(
        `input[value='${savedRating}']`
    );
    if (star) star.checked = true;

    for (let i = 1; i <= savedRating; i++) {
        const label = document.getElementById("rate" + i);
        if (label) label.style.setProperty("color", "orange", "important");
    }

    ratingMsg.textContent =
    `You already rated ${savedRating} star${savedRating > 1 ? "s" : ""} stars. Please use other devices for rating.`;

    disableStars();

} else {

    const stars = starContainer.querySelectorAll("input[name='rating']");
    stars.forEach(star => {
        star.addEventListener("change", function () {

            const userRating = parseInt(this.value, 10);
            localStorage.setItem("userRated", userRating);

            for (let i = 1; i <= userRating; i++) {
                const label = document.getElementById("rate" + i);
                if (label) label.style.setProperty("color", "orange", "important");
            }

            ratingMsg.textContent =
            "Your rating has been submitted. Thank you!";

                disableStars();
        });
    });
}







$('#print_page').click(function(){
    playSound("sounds/click.mp3");
    window.print();
});

$('#like_page').click(function(){
    playSound("sounds/click.mp3");
    if(localStorage.getItem('like')==='yes')
    {
        $('#thank_msg').html('🌟 You already liked');
        setTimeout(() => showThankYou(), 500);
    }
    else
    {
        localStorage.setItem('like', 'yes');
        setTimeout(() => showThankYou(), 500);
    }
});

if (localStorage.getItem('like') === 'yes') {
    //alert("You already liked");
    $('#like_page').css({ background: '#c62828', color: '#fff' });
}

/*
$('#share_page').click(function(){
    window.print();
});*/




function showThankYou() {
    const $msg = $('.thank_you_msg');

    // Restart spark animation
    const $sparks = $msg.find('.sparks');
    $sparks.replaceWith($sparks.clone());

    $msg.addClass('show');

    setTimeout(function () {
        $msg.removeClass('show');
    }, 2500);
}








// function playBackgroundMusic(musicFile) {
//     const audio = new Audio(musicFile);
//     audio.loop = true;
//     audio.play().catch(err => console.error('Failed to play music:', err));
//     return audio;
// }

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










/* LANGUAGE CHNAGEES */
const langSelect = document.getElementById("languageSelect");

// Default language
setLanguage("en");

langSelect.addEventListener("change", function () {
    const selectedLang = this.value;
    setLanguage(selectedLang);
});

function setLanguage(language) {
    //console.log("Selected language:", language);


    if(language === 'bn'){
        $('.about_ben').show();
        $('.about_hin').hide();
        $('.about_eng').hide();

        $('.owner_ben').show();
        $('.owner_hin').hide();
        $('.owner_eng').hide();

        $('.thank_ben').show();
        $('.thank_hin').hide();
        $('.thank_eng').hide();
    }
    if(language === 'hi')
    {
        $('.about_ben').hide();
        $('.about_hin').show();
        $('.about_eng').hide();

        $('.owner_ben').hide();
        $('.owner_hin').show();
        $('.owner_eng').hide();

        $('.thank_ben').hide();
        $('.thank_hin').show();
        $('.thank_eng').hide();
    }
    if(language === 'en')
    {
         $('.about_ben').hide();
         $('.about_hin').hide();
         $('.about_eng').show();

         $('.owner_ben').hide();
         $('.owner_hin').hide();
         $('.owner_eng').show();

         $('.thank_ben').hide();
         $('.thank_hin').hide();
         $('.thank_eng').show();
    }
}




/*NEVIGATION BUTTONS*/
$('.nav-btn').on('click', function () {
    playSound('sounds/click.mp3');
    const target = $(this).data('target');
    $('html, body').animate({
        scrollTop: $('#' + target).offset().top
    }, 600);
});



function updateExperience(startYear) {
    const currentYear = new Date().getFullYear();
    const years = currentYear - startYear;

    document.getElementById("experience").innerHTML = years + "+";
}

updateExperience(2015);



const scrollBtn = document.getElementById('scrollTopBtn');
const bar = document.getElementById("zink_bar");

window.addEventListener('scroll', () => {
    if (window.scrollY > 0) {
        scrollBtn.classList.add('show');
    } else {
        scrollBtn.classList.remove('show');
    }

    const barRect = bar.getBoundingClientRect();
    const windowHeight = window.innerHeight;

    // if zinc-bar is visible near bottom
    if (barRect.top < windowHeight) {
        scrollBtn.classList.add("up");
    } else {
        scrollBtn.classList.remove("up");
    }
});

scrollBtn.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
});












/*///////////////LOCK PLATE////////////////////////////////////*/
/*
function setupSlider(containerId, handleId, fillId, fillFromRight = false) {
    const container = document.getElementById(containerId);
    const handle = document.getElementById(handleId);
    const fill = document.getElementById(fillId);

    let dragging = false;

    function clamp(value, min, max) {
        return Math.max(min, Math.min(value, max));
    }

    function render(x) {
        const rect = container.getBoundingClientRect();
        const handleWidth = handle.offsetWidth;
        const maxX = Math.max(1, rect.width - handleWidth);
        const clampedX = clamp(x, 0, maxX);
        const progress = clampedX / maxX;

        handle.style.left = clampedX + "px";
        console.log(maxX+" "+clampedX);

        if (fillFromRight) {
            fill.style.right = "0px";
            fill.style.left = "auto";
            fill.style.width = ((maxX-clampedX)/maxX * 100) + "%";
        }
        else
        {
            fill.style.left = "0px";
            fill.style.right = "auto";
            fill.style.width = (progress * 100) + "%";
        }
    }

    function setFromPointer(clientX) {
        const rect = container.getBoundingClientRect();
        const handleWidth = handle.offsetWidth;
        const maxX = Math.max(1, rect.width - handleWidth);

        let x = clientX - rect.left - handleWidth / 2;
        x = clamp(x, 0, maxX);
        render(x);
    }

    function setInitialPosition() {
        const rect = container.getBoundingClientRect();
        const handleWidth = handle.offsetWidth;
        const maxX = Math.max(1, rect.width - handleWidth);

        render(fillFromRight ? maxX : 0);
    }

    handle.addEventListener("pointerdown", (e) => {
        dragging = true;
        handle.setPointerCapture(e.pointerId);
        setFromPointer(e.clientX);
    });

    handle.addEventListener("pointermove", (e) => {
        if (!dragging) return;
        setFromPointer(e.clientX);
    });

    handle.addEventListener("pointerup", () => dragging = false);
    handle.addEventListener("pointercancel", () => dragging = false);

    window.addEventListener("load", setInitialPosition);
    window.addEventListener("resize", setInitialPosition);
    setTimeout(setInitialPosition, 0);
}

setupSlider("leftContainer", "leftHandle", "leftFill", false);
setupSlider("rightContainer", "rightHandle", "rightFill", true);
*/
/*///////////////////////////////////////////////////////////////////////*/

function playSound(fileName) {
    const audio = new Audio(fileName);
    audio.volume = 1.0; // full volume (max = 1)
    audio.loop = false;  // optional: keep playing
    audio.play().catch(err => {
        console.log("Autoplay blocked:", err);
    });
}


document.getElementById('zink_bar').addEventListener('click',()=>{

    console.log('tap in metel');
    playSound("sounds/tap_on_metel.mp3");
})



window.addEventListener("scroll", () => {
    console.log("scrolling...");
    //playSound("sounds/scroll.mp3");
});

