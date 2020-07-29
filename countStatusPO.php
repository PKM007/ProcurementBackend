<?php
include "db.php";
$status = $_GET['status'];
$q=mysqli_query($con, "SELECT count(*) as total from `po` p, `po_status` s 
where s.status = '$status' AND p.billNo = s.billNo"); 

$data=mysqli_fetch_assoc($q);
echo $data['total'];

echo mysqli_error($con); 
?>