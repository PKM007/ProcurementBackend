<?php
include "db.php"; 
$data=array(); 
$q=mysqli_query($con, "SELECT count(*) as total from `po`");

$data=mysqli_fetch_assoc($q);
echo $data['total'];

echo mysqli_error($con); 
?>