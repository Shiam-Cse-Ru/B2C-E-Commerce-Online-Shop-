
<?php
$servername = "sql305.byethost10.com";
$username = "b10_18303419";
$password = "shiamshila143143";
$dbname = "b10_18303419_visitors";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//Check Total Pageviews
$sql = "SELECT count FROM page_views";
$result = $conn->query($sql);
while($row = $result->fetch_assoc()) {
        $page_views = $row['count'];
    }
//Update total pageviews +1 to get the new number of page views
$new_page_view = $page_views + 1;
$sql = "UPDATE page_views SET count='$new_page_view'";
if ($conn->query($sql) === FALSE) {
    echo "Error updating record: " . $conn->error;
}
//Check unique visits
$computer_name = gethostname();
$ip = $_SERVER['REMOTE_ADDR'];
$date = date('D-M-Y');
$sql = "SELECT * FROM unique_visits WHERE computer_name = '$computer_name' OR ip='$ip'";
$result = $conn->query($sql);
 $result->num_rows;
if ($result->num_rows > 0) {
	//If the user has visited
    while($row = $result->fetch_assoc()) {
        $user_computer = $row['computer_name'];
		$visit_date = $row['date'];
		//Display welcome back message if the user has already visited
		echo '<br><marquee style="font-style:oblique;color:#CF000F;font-weight: bold;font-size:20px;
">&nbsp &nbsp Welcome back '.$user_computer.'</marquee><br/>';
    }
} 
//If the user is new then insert the users info
else {
$sql = "INSERT INTO unique_visits (ip, computer_name, date)
VALUES ('$ip', '$computer_name', '$date')";
if ($conn->query($sql) === FALSE) {
    echo "Error: " . $sql . "<br>" . $conn->error;
}



}
$sql = "SELECT id  FROM unique_visits";
$result = $conn->query($sql);
$result->num_rows;
if ($result->num_rows > 0) {
    //If the user has visited
    while($row = $result->fetch_assoc()) {
      $total_unique_visits = $row['id'];
     
    }
} 

//The result for page views and unique visits
echo '<pre style="font-size:15px;color:red; font-weight: bold;">Total Page Views:'.$new_page_view.'<br/>';
echo 'Total Unique Visits:'.$total_unique_visits.'</pre> <br/>';
?> 
