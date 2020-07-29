<?php
include "db.php";
$billNo = $_GET['billNo'];
$data = array();


$q=mysqli_query($con, "SELECT * FROM `invoice` where `billNo` = $billNo"); 

while ($row=mysqli_fetch_object($q)){
    $data[]=$row; 
}
echo json_encode($data); 
echo mysqli_error($con); 
?>