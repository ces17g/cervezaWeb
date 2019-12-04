<?php

include('db.php');

if (isset($_POST['save_rate'])) {
  $name = $_POST['Name'];
  $bar = $_POST['Bar'];
  $rate = $_POST['Rate'];
  $query = "INSERT INTO Rating (`UserID`,`Rate`,`Bar`) VALUES ('{$name}', $rate,'{$bar}')";
  $result = mysqli_query($conn, $query);
  if(!$result) { die("Query Failed."); }

  $_SESSION['message'] = 'Task Saved Successfully';
  $_SESSION['message_type'] = 'success';
  header('Location: index.php');

}
?>
