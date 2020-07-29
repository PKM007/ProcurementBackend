<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$message = array(); 
$order_id =  $data['order_id'];
$location = $data['location'];
$department = $data['department'];

$q = mysqli_query($con, "DELETE FROM `location` WHERE `order_id`='$order_id' and `location`='$location' and `department`='$department'"); 

if($q){
$message['status'] = "success"; 
}
else{
 $message['status'] = "error"; 
 }
echo json_encode($message); 
echo mysqli_error($con); 
?>