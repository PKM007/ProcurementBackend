<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$mes = array();
if($data['action'] == "update"){
    $billNo = $data['billNo']; 
    $order_id = $data['order_id'];
    $item_id = $data['item_id'];
    $status = $data['status'];
    $order_msg = 'PO Accepted to Supplier';
    $order_status = 'Confirmed';

    $q1 = mysqli_query($con, "UPDATE `order_items` SET `status`='$order_status' WHERE `id`='$item_id'");

    $q2 = mysqli_query($con, "UPDATE `order_status` SET `status`='$order_status', `message`='$order_msg' WHERE `order_id`='$order_id'");

    $q3 = mysqli_query($con, "UPDATE `po_status` SET `status`='$status' WHERE `billNo`='$billNo'");



    if($q1 && $q2 && $q3){
    $mes['status'] = "success"; 
    }
    else{
    $mes['status'] = "error"; 
    }
    echo json_encode($mes); 
}
echo mysqli_error($con); 
?>