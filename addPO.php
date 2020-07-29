<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$mes = array();
if($data['action'] == "insert"){
    $billNo = $data['billNo']; 
    $order_id = $data['order_id'];
    $item_id = $data['item_id'];
    $attachments = $data['attachments'];
    $reqName = $data['reqName'];
    $urg_msg = $data['urg_msg'];
    $reason = $data['reason'];
    $comment = $data['comment'];
    $behalf = $data['behalf'];
    $purchase_type = $data['purchase_type'];
    $message = $data['message'];
    $currency = $data['currency'];
    $org_billed = $data['org_billed'];
    $cmp_name = $data['cmp_name'];
    $location = $data['location'];
    $bill_to_address = $data['bill_to_address'];
    $delivery_to = $data['delivery_to'];
    $required_by = $data['required_by'];
    $delivery_address = $data['delivery_address'];
    $cost_center = $data['cost_center'];
    $project_code = $data['project_code'];
    $budget_code = $data['budget_code'];
    $item_name = $data['item_name'];
    $quantity = $data['quantity'];
    $price = $data['price'];
    $total = $data['total'];
    $status = 'Pending';
    $order_msg = 'PO sent to Supplier';
    $order_status = 'PO Created';
    $q1 = mysqli_query($con, "INSERT INTO `po` ( `billNo` , `order_id` , `item_id` , `reqName` , `urg_msg` , `reason` , `comment` , `behalf` , `purchase_type` , `message` , `currency` , `org_billed` , `cmp_name` , `location`, `bill_to_address`, `delivery_to`, `required_by`, `delivery_address`, `cost_center`, `project_code`, `budget_code`, `item_name`, `quantity`, `price`, `total` ) VALUES ('$billNo' , '$order_id' , '$item_id' , '$reqName' , '$urg_msg' , '$reason' , '$comment' , '$behalf' , '$purchase_type' , '$message' , '$currency' , '$org_billed' , '$cmp_name' , '$location', '$bill_to_address', '$delivery_to', '$required_by', '$delivery_address', '$cost_center', '$project_code', '$budget_code', '$item_name', '$quantity', '$price', '$total')"); 
    foreach($attachments as $attachment) {
        $q2 = mysqli_query($con, "INSERT INTO `po_attachments` ( `id` , `billNo` , `attachments` ) VALUES ( DEFAULT, '$billNo', '$attachment')");

    }
    $q3= mysqli_query($con, "INSERT INTO `po_status` ( `id` , `billNo` , `order_id`  , `status` ) VALUES ( DEFAULT, '$billNo', '$order_id' , '$status')");


    $q4 = mysqli_query($con, "DELETE FROM `order_status` WHERE `order_id`='$order_id'");

    $q5= mysqli_query($con, "INSERT INTO `order_status` ( `id` , `order_id` , `status`  , `message` ) VALUES ( DEFAULT, '$order_id', '$order_status' , '$order_msg')");

    $q6 = mysqli_query($con, "UPDATE `order_items` SET `status`='$order_status' WHERE `id`='$item_id'");

    if($q1){
    $mes['status'] = "success"; 
    }
    else{
    $mes['status'] = "error"; 
    }
    echo json_encode($mes); 
}
echo mysqli_error($con); 
?>