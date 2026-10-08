function showLang(lang) {
    document.querySelectorAll('.lang').forEach(el => el.style.display = 'none');
    document.querySelector('.' + lang).style.display = 'block';
}
showLang('en');


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


document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelector("form");
    const msgBox = document.createElement("div");
    msgBox.className = "form-message";
    form.append(msgBox);

    form.addEventListener("submit", function (e) {
        e.preventDefault();

        msgBox.innerHTML = "Submitting...";
        msgBox.style.color = "#1e6fa3";

        const formData = new FormData(form);

        fetch("career.php", {
            method: "POST",
            body: formData
        })
        .then(res => res.json())
        .then(data => {
            msgBox.innerHTML = data.message;
            msgBox.style.color = data.status === "success" ? "green" : "red";

            if (data.status === "success") {
                form.reset();
            }
        })
        .catch(() => {
            msgBox.innerHTML = "Server error. Please try again.";
            msgBox.style.color = "red";
        });
    });
});
