<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$message = array();
if($data['action'] == "update"){
    $items = $data['finalItem'];
    $date = $data['date'];
    $created_by = $data['created_by']; 
    $locs = $data['multiLocs'];
    $desc = $data['order_desc'];
    $status = $data['status'];
    $m = $data['message'];
    $order_id = $data['order_id'];
    $q1 = mysqli_query($con, "UPDATE `order` SET `order_id`='$order_id' , `created_by`='$created_by' , `date`='$date' , `order_desc`='$desc' WHERE `order_id`='$order_id'"); 
    foreach($locs as $loc) {
        $location = $loc['location'];
        $department = $loc['department'];
        $q2 = mysqli_query($con, "INSERT INTO `location` ( `id` , `order_id` , `location` , `department` ) VALUES ( DEFAULT, '$order_id', '$location', '$department')");

    }

    foreach($items as $item) {
        $name = $item['name'];
        $specification = $item['specification'];
        $vendor = $item['prefered_vendor'];
        $quantity = $item['quantity'];
        $unit = $item['unit_type'];
        $price = $item['price'];
        $currency = $item['currency'];
        $custom = $item['custom'];
        $comment = $item['comment'];
        $q3 = mysqli_query($con, "INSERT INTO `order_items` ( `id` , `order_id` , `name` , `specification`, `prefered_vendor` , `quantity`, `unit_type` , `price`, `currency` , `custom`, `comment`, `status` ) VALUES ( DEFAULT, '$order_id', '$name', '$specification', '$vendor', '$quantity', '$unit', '$price', '$currency', '$custom', '$comment', '$status')");

    }

    $q4 = mysqli_query($con, "INSERT INTO `order_status` ( `id` , `order_id` , `status` , `message`) VALUES ( DEFAULT, '$order_id', '$status', '$m')");

    

    if($q1 && $q2 && $q3 && $q4){
    $message['status'] = "success"; 
    }
    else{
    $message['status'] = "error"; 
    }
    echo json_encode($message); 
}
echo mysqli_error($con); 
?>