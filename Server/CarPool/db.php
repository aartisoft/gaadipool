<?php
$conn = mysqli_connect('localhost', 'dbusername', 'dbpassword', 'dbname');

if (!$conn) {
    die('Could not connect: ' . mysqli_connect_error());
}

mysqli_select_db($conn,"dbname");
?>
