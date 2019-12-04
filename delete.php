<?php

include("db.php");

if(isset($_GET['UserID']) AND isset($_GET['Bar']) AND isset($_GET['Rate'])) {
  $UserID = $_GET['UserID'];
  $Bar = $_GET['Bar'];
  $Rate = $_GET['Rate'];
  $query = "DELETE FROM Rating WHERE UserID=$UserID, Bar=$Bar, Rate=$Rate";
  $result = mysqli_query($conn, $query);
  if(!$result) { die("Query Failed."); }

  $_SESSION['message'] = 'Task Removed Successfully';
  $_SESSION['message_type'] = 'danger';
  header('Location: index.php');
}

?>
