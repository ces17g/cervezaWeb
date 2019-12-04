<?php

include('db.php');

if (isset($_POST['save_rate'])) {
  $name = $_POST['name'];
  $bar = $_POST['bar'];
  $rate = $_POST['rate'];
  $query = "INSERT INTO rate(title, description) VALUES ('$title', '$description')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Task Saved Successfully';
  $_SESSION['message_type'] = 'success';
  header('Location: index.php');

}
?>
