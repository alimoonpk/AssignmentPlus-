<?php
header('Content-Type: application/json');

require_once('dbConnection.php');

$sq=mysqli_query($con,"SELECT * FROM rank  ORDER BY score DESC " )or die('Error223');

$c=0;
while($row=mysqli_fetch_array($q) )
{
$e=$row['email'];
$s=$row['score'];
$q12=mysqli_query($con,"SELECT * FROM user WHERE email='$e' " )or die('Error231');
while($row=mysqli_fetch_array($q12) )
{
$name=$row['name'];
$gender=$row['gender'];
$college=$row['college'];
}
$c++;
echo '<tr><td style="color:#99cc32"><b>'.$c.'</b></td><td>'.$name.'</td><td>'.$gender.'</td><td>'.$college.'</td><td>'.$s.'</td><td>';
}


$data = array();
foreach ($sq as $row) {
	$data[] = $row;
}

mysqli_close($conn);

echo json_encode($data);
?>