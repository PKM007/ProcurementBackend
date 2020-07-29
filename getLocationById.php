<?php
include "db.php";
$order_id = $_GET['order_id'];
$data = array();


$q=mysqli_query($con, "SELECT * FROM `location` where `order_id` = $order_id"); 

while ($row=mysqli_fetch_object($q)){
    $data[]=$row; 
}
echo json_encode($data); 
echo mysqli_error($con); 
?>