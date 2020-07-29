<?php
include "db.php";
$status = $_GET['status'];
$q=mysqli_query($con, "SELECT count(*) as total from `order` o, `order_status` s 
where s.status = '$status' AND o.order_id = s.order_id"); 

$data=mysqli_fetch_assoc($q);
echo $data['total'];

echo mysqli_error($con); 
?>