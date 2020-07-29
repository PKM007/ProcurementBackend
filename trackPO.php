<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$mes = array();
if($data['action'] == "update"){
    $billNo = $data['billNo'];
    $order_id = $data['order_id'];
    $item_id = $data['item_id'];
    $order_msg = $data['order_msg'];
    $order_status = $data['order_status'];
    $tracking_link = $data['tracking_link'];
    $estimated_arrival = $data['estimated_arrival'];

    $q1 = mysqli_query($con, "UPDATE `order_items` SET `status`='$order_status',`tracking_link`='$tracking_link',`estimated_arrival`='$estimated_arrival' WHERE `id`='$item_id'");

    $q2 = mysqli_query($con, "UPDATE `order_status` SET `status`='$order_status',`message`='$order_msg' WHERE `order_id`='$order_id'");

    $q3 = mysqli_query($con, "UPDATE `po` SET `po_status`='$order_status',`tracking_link`='$tracking_link',`estimated_arrival`='$estimated_arrival', `message_client`='$order_msg' WHERE `billNo`='$billNo'");




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