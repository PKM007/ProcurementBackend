<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$message = array();
echo $data;
// if($data['action'] == "login"){
//     $items = $data['finalItem'];
//     $date = $data['date'];
//     $created_by = $data['created_by']; 
//     $locs = $data['multiLocs'];
//     $desc = $data['order_desc'];
//     $status = 'Pending';
//     $m = 'Pending waiting for approval';
//     $order_id = rand(6,5000);
//     $q = mysqli_query($con, "SELECT * from `login`  where `email`='$email' AND `password`='$password'");

// }
echo mysqli_error($con); 
?>