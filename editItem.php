<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$message = array();
if($data['action'] == "insert"){
    $name = $data['name']; 
    $sku = $data['sku'];
    $brand = $data['brand'];
    $price = $data['price'];
    $currency = $data['currency'];
    $features = $data['features'];
    $desc = $data['desc'];
    $discount = $data['discount'];
    $quantity = $data['quantity'];
    $threshold = $data['threshold'];
    $warranty = $data['warranty'];
    $policy = $data['policy'];
    $location = $data['location'];
    $uploadedImages = $data['uploadedImages'];
    $item_id = $data['item_id'];
    $q1 = mysqli_query($con, "INSERT INTO `item` ( `item_id` , `name` , `sku` , `brand` , `price` , `currency` , `features` , `desc` , `discount` , `quantity` , `threshold` , `warranty` , `policy` , `location` ) VALUES ('$item_id', '$name', '$sku', '$brand', '$price', '$currency', '$features', '$desc', '$discount', '$quantity', '$threshold', '$warranty', '$policy', '$location')"); 
    foreach($uploadedImages as $image) {
        $q2 = mysqli_query($con, "INSERT INTO `item_images` ( `id` , `item_id` , `imageName` ) VALUES ( DEFAULT, '$item_id', '$image')");

    }


    if($q1){
    $message['status'] = "success"; 
    }
    else{
    $message['status'] = "error"; 
    }
    echo json_encode($message); 
}
echo mysqli_error($con); 
?>