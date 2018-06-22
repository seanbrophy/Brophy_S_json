<?php
error_reporting(0);
header('Content-Type: application/json');
$array = array();
$q=$_GET['q'];
$connection = mysqli_connect('localhost', 'root', '', 'db_quotes');
mysqli_set_charset($connection, 'utf8');
$sql="SELECT * FROM tbl_quotes WHERE quotes_id =".$q;

$result = mysqli_query($connection, $sql);

//echo $result;

while ($row = mysqli_fetch_array($result)){
$json = array(
	'name' => $row['quotes_name'],
	'job' => $row['quotes_text'],
    'photo' => $row['quotes_img']
	);
	array_push($array,$json);
}
//print_r($json);

echo json_encode($json, true);
?>



