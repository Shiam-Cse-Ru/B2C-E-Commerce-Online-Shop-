<?php
include('admin/connect.php');

 $cart_table = mysqli_query($dbcon,"select  * from order_details where memberID='$ses_id'") or die(mysqli_error());
 while ($cart_row = mysqli_fetch_array($cart_table)) {
$total=$cart_row['total'];
 }

 $currency_input = $total;
 //currency codes : http://en.wikipedia.org/wiki/ISO_4217
 $currency_from = "BDT";
 $currency_to = "USD";
 $currency = currencyConverter($currency_from,$currency_to,$currency_input);

function currencyConverter($currency_from,$currency_to,$currency_input){
    $yql_base_url = "http://query.yahooapis.com/v1/public/yql";
    $yql_query = 'select * from yahoo.finance.xchange where pair in ("'.$currency_from.$currency_to.'")';
    $yql_query_url = $yql_base_url . "?q=" . urlencode($yql_query);
    $yql_query_url .= "&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys";
    $yql_session = curl_init($yql_query_url);
    curl_setopt($yql_session, CURLOPT_RETURNTRANSFER,true);
    $yqlexec = curl_exec($yql_session);
    $yql_json =  json_decode($yqlexec,true);
    $currency_output = (float) $currency_input*$yql_json['query']['results']['rate']['Rate'];

    return $currency_output;
}


?>