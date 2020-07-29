<?php
include "db.php";
$status = $_GET['status'];
$data = array();

$q=mysqli_query($con, "SELECT * from `order_items` where `status` IN ('$status', 'Confirmed', 'Processing', 'Quality Check', 'Dispatched', 'Delivered', 'PO Created')"); 

while ($row=mysqli_fetch_object($q)){
    $data[]=$row; 
}
echo json_encode($data); 
echo mysqli_error($con); 
?>