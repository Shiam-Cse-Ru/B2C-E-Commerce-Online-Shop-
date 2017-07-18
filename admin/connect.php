<?php

$servername = "localhost";
$username = "root";
$password = "";
$db = "online_shop";

$dbcon=mysqli_connect($servername, $username, $password);
mysqli_select_db($dbcon,$db);

?>
