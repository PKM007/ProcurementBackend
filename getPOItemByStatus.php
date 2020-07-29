<?php
include "db.php";
$status = $_GET['status'];
$data = array();

$q=mysqli_query($con, "SELECT * from `po` where `po_status` = '$status'"); 

while ($row=mysqli_fetch_object($q)){
    $data[]=$row; 
}
echo json_encode($data); 
echo mysqli_error($con); 
?>