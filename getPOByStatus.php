<?php
include "db.php";
$status = $_GET['status'];
$data = array();

$q=mysqli_query($con, "SELECT p.* , s.status
from `po` p, `po_status` s 
where s.status = '$status' AND p.billNo = s.billNo"); 

while ($row=mysqli_fetch_object($q)){
    $data[]=$row; 
}
echo json_encode($data); 
echo mysqli_error($con); 
?>