<?php
include "db.php";
$filename = $_GET['fileName'];
$path = "upload/". $filename;
$message = array(); 
if(!unlink($path))
{
    $message["status"]="Please check error occured";
    echo json_encode($message); 
}
else
{
    $message["status"]="File successfully deleted" . $filename;
    echo json_encode($message); 
}
echo mysqli_error($con); 
?>