<?php
include "db.php"; 
$data=array(); 
$q=mysqli_query($con, "SELECT o.order_id, o.created_by, o.date, o.order_desc , s.status
from `order` o, `order_status` s 
where s.status = 'pending' and o.order_id =  s.order_id"); 

while ($row=mysqli_fetch_object($q)){
    $data[]=$row; 
}
echo json_encode($data); 
echo mysqli_error($con); 
?>