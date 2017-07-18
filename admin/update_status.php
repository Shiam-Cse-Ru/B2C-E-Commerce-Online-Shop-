<?php
include('connect.php');


$get_id=$_GET['id'];

mysqli_query($dbcon,"update order_details set status='Delivered', modeofpayment='Paypal' where orderid='$get_id'")or die(mysqli_error());

header('location:orders.php');

?>