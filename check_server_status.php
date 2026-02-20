<?php
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    echo json_encode(["status" => "ok"]);
    exit;
}

http_response_code(405);
echo json_encode(["status" => "error"]);
