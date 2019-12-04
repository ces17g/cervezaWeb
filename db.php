<?php
$conn = new mysqli("remotemysql.com:3306","WBsKCNeQPE","my5MD7L8us", 'WBsKCNeQPE');

// Check connection
if ($conn -> connect_errno) {
    echo "Failed to connect to MySQL: " . $conn -> connect_error;
    exit();
}
?>