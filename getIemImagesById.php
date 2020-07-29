<?php
include "db.php";
$item_id = $_GET['item_id'];
$data = array();


$q=mysqli_query($con, "SELECT * FROM `item_images` where `item_id` = $item_id"); 

while ($row=mysqli_fetch_object($q)){
    $data[]=$row; 
}
echo json_encode($data); 
echo mysqli_error($con); 
?>