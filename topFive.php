<?php

include('db.php');

if (isset($_POST['top5'])) {
    $city = $_POST['City'];
    $pref = $_POST['Pref'];
    if($pref)
        $query = "SELECT * FROM Rating WHERE Rating.Bar = (SELECT * FROM Bar WHERE Bar.City = '{City}' AND Bar.Type = '{Pref}')";
    else
        $query = "SELECT * FROM Rating WHERE Rating.Bar = (SELECT * FROM Bar WHERE Bar.City = '{City}' AND Bar.Type = 'Club')";
    $result = mysqli_query($conn, $query);
    if(!$result) { die("Query Failed."); }

    $_SESSION['message'] = 'Task Saved Successfully';
    $_SESSION['message_type'] = 'success';
    header('Location: index.php');

}
?>
