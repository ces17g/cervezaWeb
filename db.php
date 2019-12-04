<?php
$conn = new mysqli(
    "sql9.freemysqlhosting.net",
    "sql9314430",
    "3M2qFNakVr",
    "sql9314430");

// Check connection
if ($conn -> connect_errno) {
    echo "Failed to connect to MySQL: " . $conn -> connect_error;
    exit();
}
?>