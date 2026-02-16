document.addEventListener("DOMContentLoaded", function () {

    const allowedPages = [
        'index.html',
        'gallery.html'
    ];

    let currentPage = window.location.pathname.split("/").pop() || "index.html";

    if (!allowedPages.includes(currentPage.toLowerCase())) {
        window.location.replace("not_found.html");
    }

});
