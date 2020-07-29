<?php
include "db.php";
$q=mysqli_query($con, "SELECT count(*) as total from `item` "); 

$data=mysqli_fetch_assoc($q);
echo $data['total'];

echo mysqli_error($con); 
?>