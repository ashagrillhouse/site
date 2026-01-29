<?php
header("Content-Type: application/json");

if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    echo json_encode([
        "status" => "error",
        "message" => "Invalid request"
    ]);
    exit;
}

$name   = trim($_POST["name"] ?? "");
$father = trim($_POST["father_name"] ?? "");
$addr   = trim($_POST["address"] ?? "");
$gender = $_POST["gender"] ?? "";
$age    = intval($_POST["age"] ?? 0);

if ($name === "" || $father === "" || $addr === "" || $gender === "") {
    echo json_encode([
        "status" => "error",
        "message" => "All fields are required"
    ]);
    exit;
}
function showLang(lang) {
    document.querySelectorAll('.lang').forEach(el => el.style.display = 'none');
    document.querySelector('.' + lang).style.display = 'block';
}
showLang('en');
if ($age < 18) {
    echo json_encode([
        "status" => "error",
        "message" => "Age must be 18 or above"
    ]);
    exit;
}

if (!isset($_FILES["aadhaar"])) {
    echo json_encode([
        "status" => "error",
        "message" => "Aadhaar file is required"
    ]);
    exit;
}

$allowed = ["jpg","jpeg","png","pdf"];
$ext = strtolower(pathinfo($_FILES["aadhaar"]["name"], PATHINFO_EXTENSION));

if (!in_array($ext, $allowed)) {
    echo json_encode([
        "status" => "error",
        "message" => "Invalid file format"
    ]);
    exit;
}

/* Optional: save file */
$uploadDir = "uploads/";
if (!is_dir($uploadDir)) {
    mkdir($uploadDir, 0755, true);
}
$filename = time() . "_" . basename($_FILES["aadhaar"]["name"]);
move_uploaded_file($_FILES["aadhaar"]["tmp_name"], $uploadDir . $filename);

echo json_encode([
    "status" => "success",
    "message" => "Application submitted successfully!"
]);
