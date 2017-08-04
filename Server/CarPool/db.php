<?php
$conn = mysqli_connect('localhost', 'thevaeru_gaadi', 'Wm4ImqA4c2fU', 'thevaeru_gaadi');

if (!$conn) {
    die('Could not connect: ' . mysqli_connect_error());
}

mysqli_select_db($conn,"thevaeru_gaadi");
?>
