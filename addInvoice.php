<?php
include "db.php"; 
$input = file_get_contents('php://input'); 
$data = json_decode($input, true); 
$message = array();
if($data['action'] == "insert"){
    $billNo = $data['billNo'];
    $item_id = $data['item_id'];
    $invoice_date = $data['invoice_date']; 
    $invoice_due_date = $data['invoice_due_date'];
    $credit_days = $data['credit_days'];
    $invoice_address = $data['invoice_address'];
    $description = $data['description'];
    $item_name = $data['item_name'];
    $market_price = $data['market_price'];
    $unit_price = $data['unit_price'];
    $ordered_quantity = $data['ordered_quantity'];
    $invoiced_quantity = $data['invoiced_quantity'];
    $tax = $data['tax'];
    $invoice_status = "created";
    $q1 = mysqli_query($con, "INSERT INTO `invoice` ( `billNo`, `item_id` , `invoice_date` , `invoice_due_date`, `credit_days`, `invoice_address`, `description`, `item_name`, `market_price`, `unit_price`, `ordered_quantity`, `invoiced_quantity`, `tax` ) VALUES ( '$billNo', '$item_id' , '$invoice_date' , '$invoice_due_date', '$credit_days', '$invoice_address', '$description', '$item_name', '$market_price', '$unit_price', '$ordered_quantity', '$invoiced_quantity', '$tax')"); 

    $q2 = mysqli_query($con, "UPDATE `po` set `invoice_status`='$invoice_status' where `billNo`='$billNo'"); 

    
    

    if($q1 && $q2){
    $message['status'] = "success"; 
    }
    else{
    $message['status'] = "error"; 
    }
    echo json_encode($message); 
}
echo mysqli_error($con); 
?>