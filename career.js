function showLang(lang) {
    document.querySelectorAll('.lang').forEach(el => el.style.display = 'none');
    document.querySelector('.' + lang).style.display = 'block';
}
showLang('en');


document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelector("form");
    const msgBox = document.createElement("div");
    msgBox.className = "form-message";
    form.prepend(msgBox);

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
