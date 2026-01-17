import { imagePaths } from './js/mymodule.js';

const carouselInner = document.getElementById('carouselInner');

// Load first few images for slider (performance)
const sliderImages = imagePaths.slice(0, 6);

sliderImages.forEach(src => {
    const img = document.createElement('img');
    img.src = src;
    img.loading = "lazy";
    carouselInner.appendChild(img);
});

let index = 0;
const total = sliderImages.length;

setInterval(() => {
    index = (index + 1) % total;
    carouselInner.style.transform = `translateX(-${index * 100}%)`;
}, 3000);


//"বাংলা দেখুন"  "हिन्दी देखें" "View English";


$(document).ready(function(){


    // Popup on service word click
    $('.service').click(function(){
        var imgSrc = $(this).data('img'); // get image path from data-img
        $('#modalImage').attr('src', imgSrc);
        $('#imageModal').fadeIn();
    });

    // Close popup on X click
    $('#imageModal .close-btn').click(function(){
        $('#imageModal').fadeOut();
    });

    // Close popup when clicking outside image
    $('#imageModal').click(function(e){
        if(e.target.id === 'imageModal') {
            $(this).fadeOut();
        }
    });

});


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
    window.print();
});

$('#like_page').click(function(){
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










/* LANGUAGE CHNAGEES */
const langSelect = document.getElementById("languageSelect");

// Default language
setLanguage("en");

langSelect.addEventListener("change", function () {
    const selectedLang = this.value;
    setLanguage(selectedLang);
});

function setLanguage(language) {
    console.log("Selected language:", language);


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
