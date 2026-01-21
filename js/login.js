var PASS_HASH = "";

// Load password from JSON file
async function loadPassword() {
  try {
    const response = await fetch('../js/password_hash.json');
    const data = await response.json();
    PASS_HASH = data.password;
    console.log("PASS_HASH loaded:", PASS_HASH);

    initLogin(); // ✅ Only run login logic after password is loaded
  } catch (error) {
    console.error('Error loading JSON:', error);
  }
}

// Start password load
loadPassword();

// Login logic runs *after* password is loaded
function initLogin() {
  if (getCookie("adminAuth") === PASS_HASH) {
    window.location.href = "./Admin/admin.html";
  }

  const form = document.getElementById("login-form");
  const passwordInput = document.getElementById("password");
  const errorMessage = document.getElementById("error-message");

  form.addEventListener("submit", async function (event) {
    event.preventDefault();
    const password = passwordInput.value.trim();

    const isValid = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$/.test(password);
    if (!isValid) {
      errorMessage.textContent =
        "❌ Password must include uppercase, lowercase, number, special character, and be at least 8 characters.";
      return;
    }

    const hash = await hashText(password);

    if (hash === PASS_HASH) {
      const expiryDate = new Date();
      expiryDate.setDate(expiryDate.getDate() + 7);
      document.cookie = `adminAuth=${hash}; expires=${expiryDate.toUTCString()}; path=/`;
      window.location.href = "./admin.html";
    } else {
      errorMessage.textContent = "❌ Incorrect password.";
    }
  });
}

// SHA256 hash function using external library or crypto.subtle fallback
function hashText(text) {
  if (window.sha256) {
    return Promise.resolve(window.sha256(text));
  } else {
    return crypto.subtle.digest("SHA-256", new TextEncoder().encode(text))
      .then(buffer => Array.from(new Uint8Array(buffer)).map(b => b.toString(16).padStart(2, '0')).join(''));
  }
}

// Cookie utility
function getCookie(name) {
  const value = `; ${document.cookie}`;
  const parts = value.split(`; ${name}=`);
  if (parts.length === 2) return parts.pop().split(';').shift();
}

// CAPTCHA logic — unchanged
const checkbox = document.getElementById("captcha-check");
const popup = document.getElementById("popup");
const questionContent = document.getElementById("question-content");
const answerInput = document.getElementById("answer-input");
const submitButton = document.getElementById("submit-answer");
const closeButton = document.getElementById("close-btn");
const feedback = document.getElementById("feedback");
const successMessage = document.getElementById("success-message");

let currentQuestion = null;

checkbox.addEventListener("change", () => {
  if (checkbox.checked) {
    currentQuestion = questions[Math.floor(Math.random() * questions.length)];
    questionContent.innerHTML = "";

    if (currentQuestion.image) {
      const img = document.createElement("img");
      img.src = currentQuestion.image;
      img.alt = "question image";
      questionContent.appendChild(img);
    }

    const questionText = document.createElement("p");
    questionText.innerHTML = currentQuestion.question;
    questionContent.appendChild(questionText);

    answerInput.value = "";
    feedback.textContent = "";
    popup.style.display = "flex";
    answerInput.type = currentQuestion.type || "text";
  }
});

submitButton.addEventListener("click", () => {
  const userAnswer = answerInput.value.trim().toLowerCase();
  const correctAnswer = currentQuestion.answer.trim().toLowerCase();

  if (userAnswer === correctAnswer) {
    popup.style.display = "none";
    successMessage.textContent = "✅ Verified successfully!";
  } else {
    feedback.textContent = "❌ Incorrect answer, try again.";
  }
});

closeButton.addEventListener("click", () => {
  popup.style.display = "none";
  checkbox.checked = false;
});



