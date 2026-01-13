import { imagePaths } from './mymodule.js';

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



$(document).ready(function(){

    // Show English by default
    $('.about_eng').show();

    // Language toggle button (cycles through EN -> BN -> HI)
    $('#about_trans_btn').click(function(){
        if($('.about_eng').is(':visible')){
            $('.about_eng').hide();
            $('.about_ben').show();
        } else if($('.about_ben').is(':visible')){
            $('.about_ben').hide();
            $('.about_hin').show();
        } else {
            $('.about_hin').hide();
            $('.about_eng').show();
        }
    });

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




















/* THANK YOU TEXT (3 LANGUAGES) */
const thankYouContent = {
    en: `
    <p><strong>We sincerely thank everyone who has supported us, worked with us, and helped us grow.</strong></p>
    <p>Your trust, suggestions, and cooperation have made us better at what we do.</p>
    <p>A special thanks to our valuable customers who gave us opportunities to improve.</p>
    <p><strong>Thank you 🙏</strong></p>
    `,
    hi: `
    <p><strong>हम उन सभी लोगों का दिल से धन्यवाद करते हैं जिन्होंने हमारा समर्थन किया।</strong></p>
    <p>आपके विश्वास और सुझावों ने हमें और बेहतर बनने में मदद की।</p>
    <p>हम अपने सभी ग्राहकों के आभारी हैं जिन्होंने हम पर भरोसा किया।</p>
    <p><strong>धन्यवाद 🙏</strong></p>
    `,
    bn: `
    <p><strong>যারা আমাদের সমর্থন করেছেন তাদের সবাইকে আন্তরিক ধন্যবাদ।</strong></p>
    <p>আপনাদের বিশ্বাস ও পরামর্শ আমাদের আরও ভালো হতে সাহায্য করেছে।</p>
    <p>আমাদের মূল্যবান গ্রাহকদের প্রতি বিশেষ কৃতজ্ঞতা।</p>
    <p><strong>ধন্যবাদ 🙏</strong></p>
    `
};

function setLang(lang) {
    document.getElementById("thankyouText").innerHTML = thankYouContent[lang];
}

// Default language
setLang("en");

/* RATING SYSTEM */
let totalRatings = localStorage.getItem("totalRatings") || 0;
let ratingSum = localStorage.getItem("ratingSum") || 0;

document.querySelectorAll('input[name="rating"]').forEach(star => {
    star.addEventListener("change", function () {
        totalRatings++;
        ratingSum = parseInt(ratingSum) + parseInt(this.value);

        localStorage.setItem("totalRatings", totalRatings);
        localStorage.setItem("ratingSum", ratingSum);

        updateRating();
        document.getElementById("ratingMsg").textContent = "Thank you for rating!";
    });
});

function updateRating() {
    let avg = (ratingSum / totalRatings).toFixed(1);
    document.getElementById("avgRating").textContent =
    `Average Rating: ${avg} ⭐ (${totalRatings} users)`;
}

updateRating();





const ownerLangs = ["eng", "ben", "hin"];
let ownerIndex = 0;

const ownerBtn = document.getElementById("owner_trans_btn");
const ownerSections = {
    eng: document.querySelector(".owner_eng"),
    ben: document.querySelector(".owner_ben"),
    hin: document.querySelector(".owner_hin")
};

function updateOwnerLang() {
    Object.values(ownerSections).forEach(sec => sec.classList.remove("owner_active"));

    const lang = ownerLangs[ownerIndex];
    ownerSections[lang].classList.add("owner_active");

    if (lang === "eng") ownerBtn.textContent = "বাংলা দেখুন";
    if (lang === "ben") ownerBtn.textContent = "हिन्दी देखें";
    if (lang === "hin") ownerBtn.textContent = "View English";
}

ownerBtn.addEventListener("click", () => {
    ownerIndex = (ownerIndex + 1) % ownerLangs.length;
    updateOwnerLang();
});

/* Default language */
updateOwnerLang();





function printPage() {
    window.print();
}
