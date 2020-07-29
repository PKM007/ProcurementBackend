<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$message = array(); 
if($data['action'] == "delete"){
    $order_id =  $data['order_id'];

    $q1 = mysqli_query($con, "DELETE FROM `order_items` WHERE `order_id`='$order_id'"); 

    $q2 = mysqli_query($con, "DELETE FROM `location` WHERE `order_id`='$order_id'"); 

    $q4 = mysqli_query($con, "DELETE FROM `order_status` WHERE `order_id`='$order_id'");

    $q3 = mysqli_query($con, "DELETE FROM `order` WHERE `order_id`='$order_id'"); 
    if($q3){
    $message['status'] = "success"; 
    }
    else{
    $message['status'] = "error"; 
    }
    echo json_encode($message); 
}
echo mysqli_error($con); 
?>