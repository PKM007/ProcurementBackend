<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$message = array(); 
if($data['action'] == "delete"){
    $item_id =  $data['item_id'];
    

    $q1 = mysqli_query($con, "DELETE FROM `item_images` WHERE `item_id`='$item_id'"); 

    $q2 = mysqli_query($con, "DELETE FROM `item` WHERE `item_id`='$item_id'"); 

    if($q2){
    $message['status'] = "success"; 
    }
    else{
    $message['status'] = "error"; 
    }
    echo json_encode($message); 
}
echo mysqli_error($con); 
?>