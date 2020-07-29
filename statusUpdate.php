<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$message = array(); 
$order_id =  $data['order_id'];
$status = $data['status'];
$order_message = $data['message'];

$q = mysqli_query($con, "UPDATE `order_status` SET `status`='$status', `message`='$order_message' WHERE `order_id`='$order_id'"); 

if($q){
$message['status'] = "success"; 
}
else{
 $message['status'] = "error"; 
 }
echo json_encode($message); 
echo mysqli_error($con); 
?>